<?php
require_once(dirname(__FILE__)."/config.php");
CheckPurview('a_Edit,a_AccEdit,a_MyEdit');
require_once(DEDEINC."/customfields.func.php");
require_once(DEDEADMIN."/inc/inc_archives_functions.php");
if(empty($dopost))
{
	$dopost = '';
}
if($dopost!='save')
{
	require_once(DEDEADMIN."/inc/inc_catalog_options.php");
	require_once(DEDEINC."/dedetag.class.php");
	$aid = intval($aid);
	$channelid = -1;

	//读取归档信息
	$arcQuery = "Select ch.typename as channelname,ar.membername as rankname,arc.*
    From `#@__archives` arc
    left join `#@__channeltype` ch on ch.id=arc.channel
    left join `#@__arcrank` ar on ar.rank=arc.arcrank where arc.id='$aid' ";
	$arcRow = $dsql->GetOne($arcQuery);
	if(!is_array($arcRow))
	{
		ShowMsg("读取档案基本信息出错!","-1");
		exit();
	}
	$query = "Select * From `#@__channeltype` where id='-1'";
	$cInfos = $dsql->GetOne($query);
	if(!is_array($cInfos))
	{
		ShowMsg("读取频道配置信息出错!","javascript:;");
		exit();
	}
	$addRow = $dsql->GetOne("Select * From `#@__addonspec` where aid='$aid'");
	$tags = GetTags($aid);
	include DedeInclude("templets/spec_edit.htm");
}

/*--------------------------------
function __save(){  }
-------------------------------*/
else if($dopost=='save')
{
	require_once(DEDEINC.'/image.func.php');
	require_once(DEDEINC.'/oxwindow.class.php');
	if(!isset($flags))
	{
		$flag = '';
	}
	else
	{
		$flag = join(',',$flags);
	}
	if(!isset($tags))
	{
		$tags = '';
	}
	$channelid= -1;

	//处理自定义字段会用到这些变量
	if(!isset($autokey))
	{
		$autokey = 0;
	}
	if(!isset($remote))
	{
		$remote = 0;
	}
	if(!isset($dellink))
	{
		$dellink = 0;
	}
	if(!isset($autolitpic))
	{
		$autolitpic = 0;
	}
	if($typeid==0)
	{
		ShowMsg("请指定文档的栏目！","-1");
		exit();
	}
	if(!TestPurview('a_Edit'))
	{
		if(TestPurview('a_AccEdit'))
		{
			CheckCatalog($typeid,"对不起，你没有操作栏目 {$typeid} 的文档权限！");
		}
		else
		{
			CheckArcAdmin($id,$cuserLogin->getUserID());
		}
	}

	//对保存的内容进行处理
	$pubdate = GetMkTime($pubdate);
	$sortrank = AddDay($pubdate,$sortup);
	if($ishtml==0)
	{
		$ismake = -1;
	}
	else
	{
		$ismake = 0;
	}
	$title = cn_substrR($title,$cfg_title_maxlen);
	$shorttitle = cn_substrR($shorttitle,36);
	$color =  cn_substrR($color,7);
	$writer =  cn_substrR($writer,20);
	$source = cn_substrR($source,30);
	$description = cn_substrR($description,250);
	$keywords = trim(cn_substrR($keywords,30));
	$filename = trim(cn_substrR($filename,40));
	if(!TestPurview('a_Check,a_AccCheck,a_MyCheck'))
	{
		$arcrank = -1;
	}
	$adminid = $cuserLogin->getUserID();

	//处理上传的缩略图
	if(empty($ddisremote))
	{
		$ddisremote = 0;
	}
	$litpic = GetDDImage('none',$picname,$ddisremote);

	//分析处理附加表数据
	$inadd_f = '';
	$inadd_v = '';
	if(!empty($dede_addonfields))
	{
		$addonfields = explode(';',$dede_addonfields);
		$inadd_f = '';
		$inadd_v = '';
		if(is_array($addonfields))
		{
			foreach($addonfields as $v)
			{
				if($v=='')
				{
					continue;
				}
				$vs = explode(',',$v);
				if($vs[1]=='htmltext'||$vs[1]=='textdata') //HTML文本特殊处理
				{
					${$vs[0]} = AnalyseHtmlBody(${$vs[0]},$description,$litpic,$keywords,$vs[1]);
				}else{
					if(!isset(${$vs[0]}))
					{
						${$vs[0]} = '';
					}
					${$vs[0]} = GetFieldValueA(${$vs[0]},$vs[1],$arcID);
				}
				$inadd_f .= ",`{$vs[0]}` = '".${$vs[0]}."'";
			}
		}
	}

	//处理图片文档的自定义属性
	if($litpic!='' && !ereg('p',$flag))
	{
		$flag = ($flag=='' ? 'p' : $flag.',p');
	}
	$inQuery = "update `#@__archives` set
		    typeid='$typeid',
		    sortrank='$sortrank',
		    flag='$flag',
		    ismake='$ismake',
		    arcrank='$arcrank',
		    title='$title',
		    color='$color',
		    writer='$writer',
		    source='$source',
		    litpic='$litpic',
		    pubdate='$pubdate',
		    description='$description',
		    keywords='$keywords',
		    shorttitle='$shorttitle',
		    filename='$filename'
		    where id='$id'; ";
	if(!$dsql->ExecuteNoneQuery($inQuery))
	{
		ShowMsg("更新数据库archives表时出错，请检查！","-1");
		exit();
	}

	//专题节点列表
	$arcids = '';
	$notelist = '';
	for($i=1;$i<=$cfg_specnote;$i++)
	{
		if(!empty(${'notename'.$i}))
		{
			$notename = str_replace("'","",trim(${'notename'.$i}));
			$arcid = trim(${'arcid'.$i});
			$col = trim(${'col'.$i});
			$imgwidth = trim(${'imgwidth'.$i});
			$imgheight = trim(${'imgheight'.$i});
			$titlelen = trim(${'titlelen'.$i});
			$infolen = trim(${'infolen'.$i});
			$listtmp = trim(${'listtmp'.$i});
			if(isset(${'noteid'.$i}))
			{
				$noteid = trim(${'noteid'.$i});
			}
			else
			{
				$noteid = $i;
			}
			if(isset(${'isauto'.$i}))
			{
				$isauto = trim(${'isauto'.$i});
			}
			else
			{
				$isauto = 0;
			}
			if(isset(${'keywords'.$i}))
			{
				$keywords = str_replace("'","",trim(${'keywords'.$i}));
			}
			else
			{
				$keywords = "";
			}
			if(!empty(${'typeid'.$i}))
			{
				$ttypeid = trim(${'typeid'.$i});
			}
			else
			{
				$ttypeid = 0;
			}
			if(!empty(${'rownum'.$i}))
			{
				$rownum = trim(${'rownum'.$i});
			}
			else
			{
				$rownum = 0;
			}
			$arcid = ereg_replace("[^0-9,]","",$arcid);
			$ids = explode(",",$arcid);
			$okids = "";
			if(is_array($ids))
			{
				foreach($ids as $mid)
				{
					$mid = trim($mid);
					if($mid=="")
					{
						continue;
					}
					if(!isset($arcids[$mid]))
					{
						if($okids=="")
						{
							$okids .= $mid;
						}
						else
						{
							$okids .= ",".$mid;
						}
						$arcids[$mid] = 1;
					}
				}
			}
			$notelist .= "{dede:specnote imgheight=\\'$imgheight\\' imgwidth=\\'$imgwidth\\'
				infolen=\\'$infolen\\' titlelen=\\'$titlelen\\' col=\\'$col\\' idlist=\\'$okids\\'
				name=\\'$notename\\' noteid=\\'$noteid\\' isauto=\'$isauto\' rownum=\\'$rownum\\'
				keywords=\\'$keywords\\' typeid=\\'$ttypeid\\'}
				$listtmp
				{/dede:specnote}\r\n";
		}
	}

	//更新附加表
	$inQuery = "update `#@__addonspec` set typeid ='$typeid',note='$notelist'{$inadd_f},templet='$templet' where aid='$id';";
	if(!$dsql->ExecuteNoneQuery($inQuery))
	{
		ShowMsg("更新数据库附加表 addonspec 时出错，请检查原因！","-1");
		exit();
	}

	//生成HTML
	UpIndexKey($id,$arcrank,$typeid,$sortrank,$tags);
	$artUrl = MakeArt($id,true,true);
	if($artUrl=='')
	{
		$artUrl = $cfg_phpurl."/view.php?aid=$id";
	}

	//返回成功信息
	$msg = "　　请选择你的后续操作：
    <a href='spec_add.php?cid=$typeid'><u>发布新专题</u></a>
    &nbsp;&nbsp;
    <a href='archives_do.php?aid=".$id."&dopost=editArchives'><u>查看更改</u></a>
    &nbsp;&nbsp;
    <a href='$artUrl' target='_blank'><u>查看专题</u></a>
    &nbsp;&nbsp;
    <a href='content_s_list.php'><u>已发布专题管理</u></a> ";
	$wintitle = "成功更改一个专题！";
	$wecome_info = "专题管理::更改专题";
	$win = new OxWindow();
	$win->AddTitle("成功更改专题！");
	$win->AddMsgItem($msg);
	$winform = $win->GetWindow("hand","&nbsp;",false);
	$win->Display();
}

?>