<?php
require(dirname(__FILE__).'/../../include/common.inc.php');
require_once(DEDEINC."/filter.inc.php");

if(empty($gotopagerank)) $gotopagerank='';

if($gotopagerank=='admin')
{
	include_once(DEDEINC.'/userlogin.class.php');
	$cuserLogin = new userLogin();
}

//����Ϊ 0,��ʾ������Ҫ���
//�������Ϊ 1 ,�����Բ���Ҫ��˾�����ʾ
if($cfg_feedbackcheck=='Y') $needCheck = 0;
else $needCheck = 1;

function GetIsCheck($ischeck,$id)
{
	if($ischeck==0) return "<br><a href='guestbook.php?action=admin&job=check&id=$id' style='color:red'>[���]</a>";
	else return '';
}

?>