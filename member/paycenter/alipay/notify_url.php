<?php
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEDATA.'/sys_pay.cache.php';
require_once(DEDEINC."/memberlogin.class.php");
require_once(dirname(__FILE__)."/alipay_config.php");
require_once(dirname(__FILE__)."/alipay_notify.php");
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
$alipay = new alipay_notify($partner,$security_code,$sign_type,$_input_charset,$transport);
$verify_result = $alipay->notify_verify();
if($verify_result)
{

	//��ȡ֧�����ķ�������
	$dingdan=$_POST['out_trade_no'];    //��ȡ֧�������ݹ����Ķ�����
	$total=$_POST['total_fee'];    //��ȡ֧�������ݹ������ܼ۸�
	$receive_name    =$_POST['receive_name'];   //��ȡ�ջ�������
	$receive_address =$_POST['receive_address']; //��ȡ�ջ��˵�ַ
	$receive_zip     =$_POST['receive_zip'];  //��ȡ�ջ����ʱ�
	$receive_phone   =$_POST['receive_phone']; //��ȡ�ջ��˵绰
	$receive_mobile  =$_POST['receive_mobile']; //��ȡ�ջ����ֻ�
	$trade_status=$_POST['trade_status'];    //��ȡ֧��������������״̬,���ݲ�ͬ��״̬���������ݿ� WAIT_BUYER_PAY(��ʾ�ȴ���Ҹ���);WAIT_SELLER_SEND_GOODS(��ʾ��Ҹ���ɹ�,�ȴ����ҷ���);WAIT_BUYER_CONFIRM_GOODS(�����Ѿ������ȴ����ȷ��);TRADE_FINISHED(��ʾ�����Ѿ��ɹ�����)
	if($_POST['trade_status'] == 'TRADE_FINISHED')
	{

		//֧���ɹ�
		$buyid = $dingdan;

		//��ȡ������Ϣ����鶩������Ч��
		$row = $dsql->GetOne("Select * From #@__member_operation where buyid='$buyid' ");
		if(!is_array($row)||$row['sta']==2)
		{
			$oldinfo = $row['oldinfo'];
			exit("success");
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
		echo "success";
	}
	log_result("verify_success"); //����֤��������ļ�
}
else
{
	echo "fail";
	//����������Զ�����룬����������Զ������,������ݲ�ͬ��trade_status���в�ͬ����
	log_result ("verify_failed");
}

function  log_result($word)
{
	$fp = fopen("log.txt","a");
	flock($fp, LOCK_EX) ;
	fwrite($fp,$word."��ִ�����ڣ�".strftime("%Y%m%d%H%I%S",time())."\t\n");
	flock($fp, LOCK_UN);
	fclose($fp);
}
?>