<?php

/**
 * Enter description here...
 *
 * @author Administrator
 * @package defaultPackage
 * @rcsfile 	$RCSfile: receive.php,v $
 * @revision 	$Revision: 1.2 $
 * @date 	$Date: 2008/12/29 02:30:43 $
 */
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEDATA.'/sys_pay.cache.php';
require_once(dirname(__FILE__)."/cbpayment_config.php");
require_once(DEDEINC."/memberlogin.class.php");
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
if($cfg_ml->M_ID>0) $burl = $cfg_basehost."/member/control.php";
else $burl = "javascript:;";

$v_oid     =trim($_POST['v_oid']);       // �̻����͵�v_oid�������   
$v_pmode   =trim($_POST['v_pmode']);    // ֧����ʽ���ַ�����   
$v_pstatus =trim($_POST['v_pstatus']);   //  ֧��״̬ ��20��֧���ɹ�����30��֧��ʧ�ܣ�
$v_pstring =trim($_POST['v_pstring']);   // ֧�������Ϣ �� ֧����ɣ���v_pstatus=20ʱ����ʧ��ԭ�򣨵�v_pstatus=30ʱ,�ַ������� 
$v_amount  =trim($_POST['v_amount']);     // ����ʵ��֧�����
$v_moneytype  =trim($_POST['v_moneytype']); //����ʵ��֧������    
$remark1   =trim($_POST['remark1' ]);      //��ע�ֶ�1
$remark2   =trim($_POST['remark2' ]);     //��ע�ֶ�2
$v_md5str  =trim($_POST['v_md5str' ]);   //ƴ�պ��MD5У��ֵ  

$md5string=strtoupper(md5($v_oid.$v_pstatus.$v_amount.$v_moneytype.$key));

if ($v_md5str==$md5string)
{
	if($v_pstatus=="20"){
		//֧���ɹ�
		$buyid = $v_oid;
		//��ȡ������Ϣ����鶩������Ч��
		$row = $dsql->GetOne("Select * From #@__member_operation where buyid='$buyid' ");
		if(!is_array($row)||$row['sta']==2){
			$oldinfo = $row['oldinfo'];
			$msg = "�������Ѿ���ɣ���ϵͳ������Ϣ( $oldinfo ) <br><br> <a href='$burl' target='_bank'>������ҳ</a> ";
			ShowMsg($msg,"javascript:;");
			$dsql->Close();
			exit();
		}
		$mid = $row['mid'];
		$pid = $row['pid'];
		//���½���״̬Ϊ�Ѹ���
		$dsql->ExecuteNoneQuery("Update #@__member_operation set sta=1 where buyid='$buyid' ");
		//-------------------------------------------
		//��Ա��Ʒ
		//-------------------------------------------
		if($row['product']=='member')
		{
			$row = $dsql->GetOne(" Select rank,exptime From #@__member_type where aid='{$row['pid']}' ");
			$rank = $row['rank'];
			$exptime = $row['exptime'];
			$equery =  " Update #@__member set 
									membertype='$rank',exptime='$exptime',uptime='".time()."' where mid='$mid' ";
			$dsql->ExecuteNoneQuery($equery);
			//���½���״̬Ϊ�ѹر�
			$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��Ա�����ɹ���' where buyid='$buyid' ");
			$dsql->Close();
			ShowMsg("�ɹ���ɽ��ף�",$burl);
			exit();
		}
		//�㿨��Ʒ
		else if($row['product']=='card')
		{
			$row = $dsql->GetOne("Select cardid From #@__moneycard_record where ctid='$pid' And isexp='0' ");
			//����Ҳ���ĳ�����͵Ŀ���ֱ��Ϊ�û����ӽ��
			if(!is_array($row)){
				$nrow = $dsql->GetOne("Select num From  #@__moneycard_type where tid='$pid' ");
				$dnum = $nrow['num'];
				$equery =  " Update #@__member set money=money+".$dnum." where mid='$mid' ";
				$dsql->ExecuteNoneQuery($equery);
				//���½���״̬Ϊ�ѹر�
				$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='ֱ�ӳ�ֵ�� {$dnum} ��ҵ��ʺţ�' where buyid='$buyid' ");
				ShowMsg("���ڴ˵㿨�Ѿ����꣬ϵͳֱ��Ϊ����ʺ������ˣ�{$dnum} ����ң�",$burl);
				$dsql->Close();
				exit();
			}else{
				$cardid = $row['cardid'];
				$dsql->ExecuteNoneQuery(" Update #@__moneycard_record set uid='$mid',isexp='1',utime='".time()."' where cardid='$cardid' ");
				//���½���״̬Ϊ�ѹر�
				$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��ֵ���룺{$cardid}' where buyid='$buyid' ");
				ShowMsg("���׳ɹ���<a href='$burl' target='_bank'><u>[����]</u></a><br> ��ֵ���룺{$cardid}","javascript:;");
				$dsql->Close();
				exit();
			}
		}
	}else{
		ShowMsg("֧��ʧ��","javascript:;");
		exit;
	}
}else{
	ShowMsg("У��ʧ��,���ݿ���!","javascript:;");
	exit;
}
?>