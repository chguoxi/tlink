<?php
require_once (dirname(__FILE__) . "/../../../include/common.inc.php");
require_once DEDEINC.'/memberlogin.class.php';
require_once DEDEROOT.'/data/sys_pay.cache.php';
require_once(dirname(__FILE__)."/nps_config.php");
require_once DEDEINC.'/shopcar.class.php';

$cart 	= new MemberShops();
$cart->MakeOrders();
$cfg_ml = new MemberLogin(); 
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
if($cfg_ml->M_ID>0) $burl = $cfg_basehost."/member/control.php";
else $burl = "javascript:;";
if(empty($_POST['m_orderid'])){
	echo "�Ƿ����ʣ�";
	exit();
}

$memberid	= $m_ocomment;			//��ע �����Ƿ���վ�ڵĻ�Ա���
$buyid		= ereg_replace("[^-0-9A-Za-z]","",$m_orderid);   //�̼Ҷ�����
$mState		=	$_POST['m_status'];//֧��״̬2�ɹ�,3ʧ��
$OrderInfo	=	$OrderMessage;  //����������Ϣ
$signMsg 	=	$Digest;				   //�ܳ�
//�����µ�md5������֤
$newmd5info	=	$newmd5info;
$digest = strtoupper(md5($OrderInfo.$cfg_merpassword));

//���ص�У����Կ
$newtext = $m_id.$m_orderid.$m_oamount.$cfg_merpassword.$mState;
$myDigest = strtoupper(md5($newtext));
$mysign == md5($cfg_merchant.$buyid.$money.$success.$cfg_merpassword);
//--------------------------------------------------------

//ǩ����ȷ
if($digest == $signMsg && $mState==2){
	$OrderInfo = HexToStr($OrderInfo);
	if($newmd5info == $myDigest) //md5�ܳ���֤
	{
		$dsql = new DedeSql(false);
    //��ȡ������Ϣ����鶩������Ч��
    $row = $dsql->GetOne("Select state From #@__shops_orders where oid='$buyid' ");
    if($row['state'] > 0){
		  $msg = "�����Ѿ���ɣ���ϵͳ������Ϣ( $buyid ) <br><br> <a href='control.php'>������ҳ</a> ";
		  ShowMsg($msg,"javascript:;");
		  $dsql->Close();
		  exit();
	  }
		$sql = "UPDATE `#@__shops_orders` SET `state`='1' WHERE `oid`='$buyid' AND `userid`='".$cfg_ml->M_ID."';";
		if($dsql->ExecuteNoneQuery($sql)){
			$dsql->Close();
			ShowMsg("֧���ɹ�!","javascript:;");
			exit;
		}else{
			$dsql->Close();
			ShowMsg("֧��ʧ��","javascript:;");
			exit;
		}
  }else{
  	ShowMsg("������Կ�����������Ա��ϵ��",$burl);
	  exit();
  }
}else{
	ShowMsg("������Կ�����������Ա��ϵ��",$burl);
	exit();
}
?>
