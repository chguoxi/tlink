<?php
require_once(dirname(__FILE__)."/config.php");
CheckRank(0,0);
if(!isset($dopost))
{
	$dopost = '';
}
require_once(DEDEINC."/datalistcp.class.php");
$wsql = '';
if($dopost=='meview')
{
	$wsql = " vid='{$cfg_ml->M_ID}' ";
	$tname = "���������";
}
else
{
	$wsql = " mid='{$cfg_ml->M_ID}' ";
	$tname = "��ע�ҵ���";
}
$query = "Select * From `#@__member_vhistory` where $wsql order by vtime desc";
$dlist = new DataListCP();
$dlist->pageSize = 20;
$dlist->SetParameter("dopost",$dopost);
$dlist->SetTemplate(DEDEMEMBER.'/templets/visit-history.htm');
$dlist->SetSource($query);
$dlist->Display();
?>