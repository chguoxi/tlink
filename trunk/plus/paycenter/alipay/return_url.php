<?php
require_once (dirname(__FILE__) . "/../../../include/common.inc.php");
require_once DEDEINC.'/shopcar.class.php';
require_once DEDEINC.'/memberlogin.class.php';
require_once DEDEROOT.'/data/sys_pay.cache.php';
require_once(dirname(__FILE__)."/alipay_config.php");
require_once(dirname(__FILE__)."/alipay_notify.php");
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
if($cfg_ml->M_ID>0) $burl = $cfg_basehost."/member/control.php";
$cart 	= new MemberShops();
$cart->MakeOrders();
else $burl = "javascript:;";
$alipay = new alipay_notify($partner,$security_code,$sign_type,$_input_charset,$transport);
$verify_result = $alipay->return_verify();

//��ȡ֧�����ķ�������
$dingdan					= $_GET['out_trade_no'];		//��ȡ������
$total_fee				= $_GET['total_fee'];    		//��ȡ�ܼ۸�
 
$receive_name    	= $_GET['receive_name'];  	//��ȡ�ջ�������
$receive_address 	= $_GET['receive_address']; //��ȡ�ջ��˵�ַ
$receive_zip     	= $_GET['receive_zip'];  		//��ȡ�ջ����ʱ�
$receive_phone   	= $_GET['receive_phone']; 	//��ȡ�ջ��˵绰
$receive_mobile  	= $_GET['receive_mobile']; 	//��ȡ�ջ����ֻ�

if($verify_result) {
	//֧���ɹ�
	$dsql = new DedeSql(false);
	$sql = "UPDATE `#@__shops_orders` SET `state`='1' WHERE `oid`='$dingdan' AND `userid`='".$cfg_ml->M_ID."';";
	if($dsql->ExecuteNoneQuery($sql)){
			$dsql->Close();			
			ShowMsg("֧���ɹ�!","javascript:;");
			log_result("verify_success"); //����֤��������ļ�
			exit;
	}else{
			$dsql->Close();
			ShowMsg("֧��ʧ��","javascript:;");
			exit;
	}	
}
else  {
	$msg = "֧��ʧ��."; 
	ShowMsg($msg,"javascript:;");
	//����������Զ�����룬����������Զ������,������ݲ�ͬ��trade_status���в�ͬ����
	log_result ("verify_failed");
	exit;
}
//��־��Ϣ,��֧���������Ĳ�����¼����
function  log_result($word) { 
	$fp = fopen("log.txt","a");	
	flock($fp, LOCK_EX) ;
	fwrite($fp,$word."��ִ�����ڣ�".strftime("%Y%m%d%H%I%S",time())."\t\n");
	flock($fp, LOCK_UN); 
	fclose($fp);
}	
?>