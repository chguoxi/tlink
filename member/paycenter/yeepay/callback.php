<?php
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEDATA.'/sys_pay.cache.php';
require_once(DEDEINC."/memberlogin.class.php");
include_once 'yeepay_config.php';	
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
#	ֻ��֧���ɹ�ʱ�ױ�֧���Ż�֪ͨ�̻�.
##֧���ɹ��ص������Σ�����֪ͨ������֧����������е�p8_Url�ϣ�������ض���;��������Ե�ͨѶ.

#	�������ز���.
$return = getCallBackValue($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);

#	�жϷ���ǩ���Ƿ���ȷ��True/False��
$bRet = CheckHmac($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);
#	���ϴ���ͱ�������Ҫ�޸�.
#	У������ȷ.
if($bRet)
{
	if($r1_Code=="1")
	{
		
	#	��Ҫ�ȽϷ��صĽ�����̼����ݿ��ж����Ľ���Ƿ���ȣ�ֻ����ȵ�����²���Ϊ�ǽ��׳ɹ�.
	#	������Ҫ�Է��صĴ������������ƣ����м�¼�������Դ�����ֹ��ͬһ�������ظ��������������.      	  	
		if($r9_BType=="1")
		{
			success_db($r6_Order);
		}
		elseif($r9_BType=="2")
		{
			#�����ҪӦ�����������д��,��success��ͷ,��Сд������.
			echo "success";
			success_db($r6_Order);
		}
		elseif($r9_BType=="3")
		{ 
			success_db($r6_Order); 
		}
	ShowMsg('֧���ɹ�!',"javascript:;");
	exit;
	}
	
}
else
{
	ShowMsg('������Ϣ����!',"javascript:;");
	exit;
}


function success_db($buyid){
	global $dsql,$cfg_ml,$r3_Amt;
	$money = floor($r3_Amt);
	//��ȡ������Ϣ����鶩������Ч��
	$row = $dsql->GetOne("Select * From #@__member_operation where buyid='$buyid' ");
	if(!is_array($row)||$row['sta']==2)
	{
		if(isset($row['sta']))
		{
			ShowMsg($row['oldinfo'],"javascript:;");
			exit();
		}
		else
		{
			ShowMsg('����������!',"javascript:;");
			exit();
		}
	}
	if($money != $row['money'])
	{
		ShowMsg('������Ϣ����!',"javascript:;");
		exit;
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
	}
	//�㿨��Ʒ
	else if($row['product']=='card')
	{
		$row = $dsql->GetOne("Select cardid From #@__moneycard_record where ctid='$pid' And isexp='0' ");
		
		//����Ҳ���ĳ�����͵Ŀ���ֱ��Ϊ�û����ӽ��
		if(!is_array($row))
		{
			$nrow = $dsql->GetOne("Select num From  #@__moneycard_type where tid='$pid' ");
			$dnum = $nrow['num'];
			$equery =  " Update #@__member set money=money+".$dnum." where mid='$mid' ";
			$dsql->ExecuteNoneQuery($equery);
		
			//���½���״̬Ϊ�ѹر�
			$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='ֱ�ӳ�ֵ�� {$dnum} ��ҵ��ʺţ�' where buyid='$buyid' ");
			exit();
		}
		else
		{
			$cardid = $row['cardid'];
			$dsql->ExecuteNoneQuery(" Update #@__moneycard_record set uid='$mid',isexp='1',utime='".time()."' where cardid='$cardid' ");
		
			//���½���״̬Ϊ�ѹر�
			$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��ֵ���룺{$cardid}' where buyid='$buyid' ");
		}
	}
	return NULL;
}
?>