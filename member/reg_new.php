<?php
require_once(dirname(__FILE__)."/config.php");
if($cfg_ml->IsLogin())
{
	ShowMsg("���Ѿ���½ϵͳ����������ע�ᣡ","index.php");
	exit();
}
if(!isset($dopost))
{
	$dopost = '';
}
if($dopost=='regok')
{
	$svali = GetCkVdValue();
	if(strtolower($vdcode)!=$svali || $svali=='')
	{
		ResetVdValue();
		ShowMsg("��֤�����","-1");
		exit();
	}
	$userid = trim($userid);
	$pwd = trim($userpwd);
	$pwdc = trim($userpwdok);
	$rs = CheckUserID($userid,'�û���');
	if($rs != 'ok')
	{
		ShowMsg($rs,"-1");
		exit();
	}
	if(strlen($userid) > 20 || strlen($uname) > 36)
	{
		ShowMsg("����û������ǳ�/��˾���ƹ�����������ע�ᣡ","-1");
		exit();
	}
	if(strlen($userid) < $cfg_mb_idmin || strlen($pwd) < $cfg_mb_pwdmin)
	{
		ShowMsg("����û�����������̣�������ע�ᣡ","-1");
		exit();
	}
	if($pwdc!=$pwd)
	{
		ShowMsg("��������������벻һ�£�","-1");
		exit();
	}
	if(CheckUserID($uname,'')!='ok')
	{
		ShowMsg("�û��ǳƻ�˾���ƺ��зǷ��ַ���","-1");
		exit();
	}
	if(!eregi("^[0-9a-z][a-z0-9\.-]{1,}@[a-z0-9-]{1,}[a-z0-9]\.[a-z\.]{1,}[a-z]$",$email))
	{
		ShowMsg("Email��ʽ����ȷ��","-1");
		exit();
	}
	if($cfg_md_mailtest=='Y')
	{
		$row = $dsql->GetOne("Select mid From `#@__member` where email like '$email' ");
		if(is_array($row))
		{
			ShowMsg("��ʹ�õ�Email�Ѿ�����һ�ʺ�ע�ᣬ��ʹ�����ʺţ�","-1");
			exit();
		}
	}

	//����û����Ƿ����
	$row = $dsql->GetOne("Select mid From `#@__member` where userid like '$userid' ");
	if(is_array($row))
	{
		ShowMsg("��ָ�����û��� {$userid} �Ѵ��ڣ���ʹ�ñ���û�����","-1");
		exit();
	}
	if($safequestion==0)
	{
		$safeanswer = '';
	}
	else
	{
		if(strlen($safeanswer)>30)
		{
			ShowMsg('����°�ȫ����Ĵ�̫���ˣ��������30�ֽ����ڣ�','-1');
			exit();
		}
	}

	//��Ա��Ĭ�Ͻ��
	$dfscores = 0;
	$dfmoney = 0;
	$dfrank = $dsql->GetOne("Select money,scores From `#@__arcrank` where rank='10' ");
	if(is_array($dfrank))
	{
		$dfmoney = $dfrank['money'];
		$dfscores = $dfrank['scores'];
	}
	$jointime = time();
	$logintime = time();
	$joinip = GetIP();
	$loginip = GetIP();
	$pwd = md5($userpwd);
	$inQuery = "INSERT INTO `#@__member` (`mtype` ,`userid` ,`pwd` ,`uname` ,`sex` ,`rank` ,`uprank` ,`money` ,
 	 `upmoney` ,`email` ,`scores` ,`matt` ,`face`,`safequestion`,`safeanswer` ,`jointime` ,`joinip` ,`logintime` ,`loginip` )
   VALUES ('$mtype','$userid','$pwd','$uname','$sex','10','0','$dfmoney','0',
   '$email','$dfscores','0','','$safequestion','$safeanswer','$jointime','$joinip','$logintime','$loginip'); ";
	if($dsql->ExecuteNoneQuery($inQuery))
	{
		$mid = $dsql->GetLastID();

		//д��Ĭ�ϻ�Ա��ϸ����
		if($mtype=='����')
		{
			$infosquery = "INSERT INTO `#@__member_person` (`mid` , `onlynet` , `sex` , `uname` , `qq` , `msn` , `tel` , `mobile` , `place` , `oldplace` ,
	           `birthday` , `star` , `income` , `education` , `height` , `bodytype` , `blood` , `vocation` , `smoke` , `marital` , `house` ,
	            `drink` , `datingtype` , `language` , `nature` , `lovemsg` , `address`,`uptime`)
             VALUES ('$mid', '1', '{$sex}', '{$uname}', '', '', '', '', '0', '0',
              '1980-01-01', '1', '0', '0', '160', '0', '0', '0', '0', '0', '0','0', '0', '', '', '', '','0'); ";
			$space='person';
		}
		else if($mtype=='��ҵ')
		{
			$infosquery = "INSERT INTO `#@__member_company`(`mid`,`company`,`product`,`place`,`vocation`,`cosize`,`tel`,`fax`,`linkman`,`address`,`mobile`,`email`,`url`,`uptime`,`checked`,`introduce`)
                VALUES ('{$mid}','{$uname}','product','0','0','0','','','','','','{$email}','','0','0',''); ";
			$space='company';
		}
		/** �˴����Ӳ�ͬ����Ա���������ݴ���sql��� **/

		$dsql->ExecuteNoneQuery($infosquery);

		//д��Ĭ��ͳ������
		$membertjquery = "INSERT INTO `#@__member_tj` (`mid`,`article`,`album`,`archives`,`homecount`,`pagecount`,`feedback`,`friend`,`stow`)
               VALUES ('$mid','0','0','0','0','0','0','0','0'); ";
		$dsql->ExecuteNoneQuery($membertjquery);

		//д��Ĭ�Ͽռ���������
		$spacequery = "Insert Into `#@__member_space`(`mid` ,`pagesize` ,`matt` ,`spacename` ,`spacelogo` ,`spacestyle`, `sign` ,`spacenews`)
	            Values('{$mid}','10','0','{$uname}�Ŀռ�','','$space','',''); ";
		$dsql->ExecuteNoneQuery($spacequery);

		//д������Ĭ������
		$dsql->ExecuteNoneQuery("INSERT INTO `#@__member_flink`(mid,title,url) VALUES('$mid','֯�����ݹ���ϵͳ','http://www.dedecms.com'); ");

		//----------------------------------------------
		//ģ���¼
		//---------------------------
		$ml = new MemberLogin(7*3600);
		$rs = $ml->CheckUser($userid,$userpwd);
		ShowMsg("ע��ɹ���3���Ӻ�ת��ϵͳ��ҳ...","index.php",0,2000);
		exit();
	}
	else
	{
		ShowMsg("ע��ʧ�ܣ����������Ƿ�����������Ա��ϵ��","-1");
		exit();
	}
}

	$sql = "desc #@__member";
	$dsql->SetQuery($sql);
	$dsql->Execute();
	while ($row = $dsql->GetArray()) {
		if($row['Field'] == 'mtype')
		{
			$types = $row['Type'];
			break;
		}
	}
	$types = str_replace(array('enum', '(', ')', '\''), '', $types);
	$types = explode(',', $types);


require_once(DEDEMEMBER."/templets/reg-new.htm");
?>