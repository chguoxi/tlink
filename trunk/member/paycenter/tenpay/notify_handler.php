<?php
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEDATA.'/sys_pay.cache.php';
require_once(DEDEINC."/memberlogin.class.php");
import_request_variables("gpc", "frm_");
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
if($cfg_ml->M_ID>0)
{
	$burl = $cfg_basehost."/member/control.php";
}
else
{
	$burl = "javascript:;";
}

/*�����滻Ϊ����ʵ���̻���*/
$strSpid    = $payment_userid[0];

/*strSpkey��32λ�̻���Կ, ���滻Ϊ����ʵ����Կ*/
$strSpkey   = $payment_key[0];

/*ȡ���ز���*/
$strCmdno			= $frm_cmdno;
$strPayResult		= $frm_pay_result;
$strPayInfo		= $frm_pay_info;
$strBillDate		= $frm_date;
$strBargainorId	= $frm_bargainor_id;
$strTransactionId	= $frm_transaction_id;
$strSpBillno		= $frm_sp_billno;
$strTotalFee		= $frm_total_fee;
$strFeeType		= $frm_fee_type;
$strAttach			= $frm_attach;
$strMd5Sign		= $frm_sign;

/*����ֵ����*/
$iRetOK       = 0;		// �ɹ�
$iInvalidSpid = 1;		// �̻��Ŵ���
$iInvalidSign = 2;		// ǩ������
$iTenpayErr	  = 3;		// �Ƹ�ͨ����֧��ʧ��

/*��ǩ*/

$strResponseText  = "cmdno=" . $strCmdno . "&pay_result=" . $strPayResult .
"&date=" . $strBillDate . "&transaction_id=" . $strTransactionId .
"&sp_billno=" . $strSpBillno . "&total_fee=" . $strTotalFee .
"&fee_type=" . $strFeeType . "&attach=" . $strAttach .
"&key=" . $strSpkey;

$strLocalSign = strtoupper(md5($strResponseText));

if( $strLocalSign  != $strMd5Sign)
{
	$msg = "��֤MD5ǩ��ʧ��.";
	ShowMsg($msg,"javascript:;");
	exit;
}

if( $strSpid != $strBargainorId )
{
	$msg = "������̻���.";
	ShowMsg($msg,"javascript:;");
	exit;
}

if( $strPayResult != "0" )
{
	$msg = "֧��ʧ��.";
	ShowMsg($msg,"javascript:;");
	exit;
}

//֧���ɹ�
$buyid = $strSpBillno;
//��ȡ������Ϣ����鶩������Ч��
$row = $dsql->GetOne("Select * From #@__member_operation where buyid='$buyid' ");
if(!is_array($row)||$row['sta']==2)
{
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
		exit();
	}
	else
	{
		$cardid = $row['cardid'];
		$dsql->ExecuteNoneQuery(" Update #@__moneycard_record set uid='$mid',isexp='1',utime='".time()."' where cardid='$cardid' ");

		//���½���״̬Ϊ�ѹر�
		$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��ֵ���룺{$cardid}' where buyid='$buyid' ");
		ShowMsg("���׳ɹ���<a href='$burl' target='_bank'><u>[����]</u></a><br> ��ֵ���룺{$cardid}","javascript:;");
		exit();
	}
}
?>