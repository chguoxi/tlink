<?php
if(!defined('DEDEINC'))
{
   exit("Request Error!");
}

if(!empty($_COOKIE['GUEST_BOOK_MOVE'])) $GUEST_BOOK_MOVE = $_COOKIE['GUEST_BOOK_MOVE'];
else $GUEST_BOOK_MOVE = "index.php";

$id = intval($id);
if(empty($job)) $job='view';

if($job=='del')
{
	$dsql->ExecuteNoneQuery(" Delete From `#@__guestbook` where id='$id' ");
	ShowMsg("�ɹ�ɾ��һ�����ԣ�",$GUEST_BOOK_MOVE);
	exit();
}
else if($job=='check')
{
	$dsql->ExecuteNoneQuery(" update `#@__guestbook` set ischeck=1 where id='$id' ");
	ShowMsg("�ɹ����һ�����ԣ�",$GUEST_BOOK_MOVE);
	exit();
}
else if($job=='editok')
{
	$remsg = trim($remsg);
	if($remsg!='')
	{
		$remsg = trimMsg($remsg,1);
		$remsg = cn_substrR($remsg,2000);
		$msg = $msg."<br><font color=red>����Ա�ظ���$remsg</font>";
	}
	$dsql->ExecuteNoneQuery("update `#@__guestbook` set msg='$msg' where id='$id' ");
	ShowMsg("�ɹ����Ļ�ظ�һ�����ԣ�",$GUEST_BOOK_MOVE);
	exit();
}

$row = $dsql->GetOne("select * from `#@__guestbook` where id='$id'");

require_once($cfg_basedir.$cfg_templets_dir."/plus/guestbook-admin.htm");
?>