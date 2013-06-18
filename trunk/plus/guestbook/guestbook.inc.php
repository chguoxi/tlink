<?php
require(dirname(__FILE__).'/../../include/common.inc.php');
require_once(DEDEINC."/filter.inc.php");

if(empty($gotopagerank)) $gotopagerank='';

if($gotopagerank=='admin')
{
	include_once(DEDEINC.'/userlogin.class.php');
	$cuserLogin = new userLogin();
}

//设置为 0,表示留言需要审核
//如果设置为 1 ,则留言不需要审核就能显示
if($cfg_feedbackcheck=='Y') $needCheck = 0;
else $needCheck = 1;

function GetIsCheck($ischeck,$id)
{
	if($ischeck==0) return "<br><a href='guestbook.php?action=admin&job=check&id=$id' style='color:red'>[审核]</a>";
	else return '';
}

?>