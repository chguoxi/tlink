<?php
require_once(dirname(__FILE__).'/guestbook/guestbook.inc.php');
require_once(DEDEINC.'/datalistcp.class.php');
if(empty($action)) $action = '';
//修改留言
if($action=='admin')
{
	if(!isset($cuserLogin) || !is_object($cuserLogin))
	{
		 include_once(DEDEINC.'/userlogin.class.php');
		 $cuserLogin = new userLogin();
	}
	if($cuserLogin->getUserRank()<=0)
	{
		showMsg("对不起,你没有权限！",-1);
		exit();
	}

	CheckPurview('plus_留言簿模块');

	include_once(dirname(__FILE__).'/guestbook/edit.inc.php');

	exit();
}
//保存留言
else if($action=='save')
{
	if(!empty($_COOKIE['GUEST_BOOK_MOVE'])) $GUEST_BOOK_MOVE = $_COOKIE['GUEST_BOOK_MOVE'];
	else $GUEST_BOOK_MOVE = 'index.php';
	if(empty($validate)) $validate=='';
	else $validate = strtolower($validate);
	$svali = GetCkVdValue();
	if($validate=='' || $validate!=$svali)
	{
	 	ShowMsg("验证码不正确!","");
	 	exit();
	}
	$ip = GetIP();
	$dtime = time();
	$uname = trimMsg($uname);
	$email = trimMsg($email);
	$homepage = trimMsg($homepage);
	$homepage = eregi_replace('http://','',$homepage);
	$qq = trimMsg($qq);
	$msg = trimMsg(cn_substr($msg,2000),1);

	if($msg==''||$uname==''){
		showMsg('你的姓名和留言内容不能为空!','-1');
		exit();
	}

	$query = "INSERT INTO `#@__guestbook`(uname,email,homepage,qq,face,msg,ip,dtime,ischeck)
                  VALUES ('$uname','$email','$homepage','$qq','$img','$msg','$ip','$dtime','$needCheck'); ";
	$dsql->ExecuteNoneQuery($query);
	if($needCheck==1) ShowMsg('成功发送一则留言!','guestbook.php');
	else ShowMsg('成功发送一则留言，但需审核后才能显示！','guestbook.php',0,3000);
	exit();
}
//显示所有留言
else
{
	setcookie('GUEST_BOOK_MOVE',GetCurUrl(),time()+3600,'/');

	if($gotopagerank=='admin') $userrank = $cuserLogin->getUserRank();
	else $userrank = -1;

	if($userrank>0) $sql = 'select * from `#@__guestbook` order by id desc';
	else $sql = 'select * from `#@__guestbook` where ischeck=1 order by id desc';

	$dlist = new DataListCP();
	$dlist->pageSize = 10;
	$dlist->SetParameter('gotopagerank',$gotopagerank);
	$dlist->SetTemplate($cfg_basedir.$cfg_templets_dir."/plus/guestbook.htm");
	$dlist->SetSource($sql);
  $dlist->Display();
}
?>