<?php
require_once(dirname(__FILE__)."/config.php");
CheckRank(0,0);
if(!isset($dopost))
{
	$dopost = '';
}

if($dopost=='save')
{
	if($cfg_ml->M_MbType == '����')
	{
		$userdir = $cfg_user_dir.'/'.$cfg_ml->M_ID;
		if(!ereg('^'.$userdir,$oldspacelogo))
		{
			$oldspacelogo = '';
		}
		if(is_uploaded_file($spacelogo))
		{
			//ɾ����ͼƬ����ֹ�ļ���չ����ͬ���磺ԭ������gif����������jpg��
			if($oldspacelogo!='' && file_exists($cfg_basedir.$oldspacelogo))
			{
				@unlink($cfg_basedir.$oldspacelogo);
			}
			//�ϴ��¹�ͼƬ
			$spacelogo = MemberUploads('spacelogo','',$cfg_ml->M_ID,'image','mylogo',200,80);
		}
		else
		{
			$spacelogo = $oldspacelogo;
		}
		$pagesize = intval($pagesize);
		$spacename = cn_substrR(HtmlReplace($spacename,2),50);
		$sign = cn_substrR(HtmlReplace($sign),100);
		$spacenews = HtmlReplace($spacenews,-1);
		$query = "update `#@__member_space` set `pagesize` = '$pagesize',`spacename`='$spacename' , spacelogo='$spacelogo',
		          `spacestyle` = '$spacestyle', `sign` = '$sign' ,`spacenews`='$spacenews' where mid='{$cfg_ml->M_ID}' ";
		$dsql->ExecuteNoneQuery($query);
		$dsql->ExecuteNoneQuery("update `#@__member` set spacesta=1 where mid='{$cfg_ml->M_ID}' And spacesta<1 ");
		ShowMsg('�ɹ����¿ռ���Ϣ��','edit_space_info.php');
	}
	elseif($cfg_ml->M_MbType == '��ҵ')
	{
		$userdir = $cfg_user_dir.'/'.$cfg_ml->M_ID;
		if(!ereg('^'.$userdir,$oldspacelogo))
		{
			$oldspacelogo = '';
		}
		if(is_uploaded_file($spacelogo))
		{
			//ɾ����ͼƬ����ֹ�ļ���չ����ͬ���磺ԭ������gif����������jpg��
			if($oldspacelogo!='' && file_exists($cfg_basedir.$oldspacelogo))
			{
				@unlink($cfg_basedir.$oldspacelogo);
			}
			//�ϴ��¹�ͼƬ
			$spacelogo = MemberUploads('spacelogo','',$cfg_ml->M_ID,'image','mylogo',200,80);
		}
		else
		{
			$spacelogo = $oldspacelogo;
		}
		$pagesize = intval($pagesize);
		$spacename = cn_substrR(HtmlReplace($spacename,2),50);
		$sign = cn_substrR(HtmlReplace($sign),100);
		$spacenews = HtmlReplace($spacenews,-1);
		$query = "update `#@__member_space` set `pagesize` = '$pagesize',`spacename`='$spacename' , spacelogo='$spacelogo',
		          `spacestyle` = '$spacestyle', `sign` = '$sign' ,`spacenews`='$spacenews' where mid='{$cfg_ml->M_ID}' ";
		$dsql->ExecuteNoneQuery($query);
		$dsql->ExecuteNoneQuery("update `#@__member` set spacesta=1 where mid='{$cfg_ml->M_ID}' And spacesta<1 ");
		ShowMsg('�ɹ����¿ռ���Ϣ��','edit_space_info.php');
	}
}
else
{
	if($cfg_ml->M_MbType == '����')
	{
		$row = $dsql->GetOne("select * from `#@__member_space` where mid='".$cfg_ml->M_ID."'");
		if(!is_array($row))
		{
			$inquery = "Insert Into `#@__member_space`(`mid` ,`pagesize` ,`matt` ,`spacename` ,`spacelogo` ,`spacestyle`, `sign` ,`spacenews`)
			            Values('{$cfg_ml->M_ID}','10','0','{$cfg_ml->M_UserName}�Ŀռ�','','space','',''); ";
			$row['spacename'] = '';
			$row['sign'] = '';
			$row['pagesize'] = 10;
			$row['spacestyle'] = 'space';
			$row['spacenews'] = '';
		}
		extract($row);
		include(dirname(__FILE__)."/templets/edit_space_info.htm");
	}
	elseif($cfg_ml->M_MbType == '��ҵ')
	{
		$row = $dsql->GetOne("select * from `#@__member_space` where mid='".$cfg_ml->M_ID."'");
		if(!is_array($row))
		{
			$inquery = "Insert Into `#@__member_space`(`mid` ,`pagesize` ,`matt` ,`spacename` ,`spacelogo` ,`spacestyle`, `sign` ,`spacenews`)
			            Values('{$cfg_ml->M_ID}','10','0','{$cfg_ml->M_UserName}�Ŀռ�','','space','',''); ";
			$row['spacename'] = '';
			$row['sign'] = '';
			$row['pagesize'] = 10;
			$row['spacestyle'] = 'space';
			$row['spacenews'] = '';
		}
		extract($row);
		include(dirname(__FILE__)."/templets/edit_space_info.htm");
	}
}

?>