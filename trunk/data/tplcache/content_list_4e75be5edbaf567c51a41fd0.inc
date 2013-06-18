<?php
if(!isset($GLOBALS['_vars'])) $GLOBALS['_vars'] = array(); 
$fields = array();
?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>文档管理</title>
<link rel="stylesheet" type="text/css" href="img/base.css">
<script language="javascript" src="js/ieemu.js"></script>
<script language="javascript" src="js/context_menu.js"></script>
<script language="javascript" src="../include/dedeajax2.js"></script>
<script language="javascript">
if(moz) {
	extendEventObject();
	extendElementModel();
	emulateAttachEvent();
}
function viewArc(aid){
	if(aid==0) aid = getOneItem();
	window.open("archives_do.php?aid="+aid+"&dopost=viewArchives");
}
function editArc(aid){
	if(aid==0) aid = getOneItem();
	location="archives_do.php?aid="+aid+"&dopost=editArchives";
}
function updateArc(aid){
	var qstr=getCheckboxItem();
	if(aid==0) aid = getOneItem();
	location="archives_do.php?aid="+aid+"&dopost=makeArchives&qstr="+qstr;
}
function checkArc(aid){
	var qstr=getCheckboxItem();
	if(aid==0) aid = getOneItem();
	location="archives_do.php?aid="+aid+"&dopost=checkArchives&qstr="+qstr;
}
function moveArc(aid){
	var qstr=getCheckboxItem();
	if(aid==0) aid = getOneItem();
	location="archives_do.php?aid="+aid+"&dopost=moveArchives&qstr="+qstr;
}
function adArc(aid){
	var qstr=getCheckboxItem();
	if(aid==0) aid = getOneItem();
	location="archives_do.php?aid="+aid+"&dopost=commendArchives&qstr="+qstr;
}
function delArc(aid){
	var qstr=getCheckboxItem();
	if(aid==0) aid = getOneItem();
	location="archives_do.php?qstr="+qstr+"&aid="+aid+"&dopost=delArchives";
}
//上下文菜单
function ShowMenu(evt,obj,aid,atitle)
{
  var popupoptions
  popupoptions = [
    new ContextItem("浏览文档",function(){ viewArc(aid); }),
    new ContextItem("编辑文档",function(){ editArc(aid); }),
    new ContextSeperator(),
    new ContextItem("更新HTML",function(){ updateArc(aid); }),
    new ContextItem("审核文档",function(){ checkArc(aid); }),
    new ContextItem("推荐文档",function(){ adArc(aid); }),
    new ContextSeperator(),
    new ContextItem("删除文档",function(){ delArc(aid); }),
    new ContextSeperator(),
    new ContextItem("全部选择",function(){ selAll(); }),
    new ContextItem("取消选择",function(){ noSelAll(); }),
    new ContextSeperator(),
    new ContextItem("关闭菜单",function(){})
  ]
  ContextMenu.display(evt,popupoptions);
  //location="catalog_main.php";
}

//获得选中文件的文件名
function getCheckboxItem()
{
	var allSel="";
	if(document.form2.arcID.value) return document.form2.arcID.value;
	for(i=0;i<document.form2.arcID.length;i++)
	{
		if(document.form2.arcID[i].checked)
		{
			if(allSel=="")
				allSel=document.form2.arcID[i].value;
			else
				allSel=allSel+"`"+document.form2.arcID[i].value;
		}
	}
	return allSel;
}

//获得选中其中一个的id
function getOneItem()
{
	var allSel="";
	if(document.form2.arcID.value) return document.form2.arcID.value;
	for(i=0;i<document.form2.arcID.length;i++)
	{
		if(document.form2.arcID[i].checked)
		{
				allSel = document.form2.arcID[i].value;
				break;
		}
	}
	return allSel;
}

function selAll()
{
	for(i=0;i<document.form2.arcID.length;i++)
	{
		if(!document.form2.arcID[i].checked)
		{
			document.form2.arcID[i].checked=true;
		}
	}
}
function noSelAll()
{
	for(i=0;i<document.form2.arcID.length;i++)
	{
		if(document.form2.arcID[i].checked)
		{
			document.form2.arcID[i].checked=false;
		}
	}
}
function editTitle(aid)
{
   var taget_obj = document.getElementById('arc'+aid);
   var myajax = new DedeAjax(taget_obj,false,false,"","","");
   myajax.SendGet2("ajax.php?action=show&aid="+aid);
   DedeXHTTP = null;
}
function postTitle(aid){
   obj = document.getElementById('arc'+aid);
   v = document.getElementById('v_'+aid).value;
   var myajax = new DedeAjax(obj,false,false,"","","");
   <?php
   if(strtolower(substr($cfg_soft_lang, 0, 3)) == 'utf') {
   ?>
   myajax.AddKeyUtf8('action','post');
   myajax.AddKeyUtf8('aid',aid);
   myajax.AddKeyUtf8('title',v);
   myajax.SendPost2('ajax.php');
   <?php
   }
   elseif (strtolower(substr($cfg_soft_lang, 0, 2)) == 'gb') {
   	 echo 'myajax.SendGet2("ajax.php?action=show&aid="+aid+"&action=post&title="+v);';
   }
   ?>
   DedeXHTTP = null;
}
</script>
</head>
<body leftmargin="8" topmargin="8" background='img/allbg.gif' onLoad="ContextMenu.intializeContextMenu()">

<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
<tr>
 <td height="26" background="img/newlinebg3.gif">
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center">
  <input type='button' class="coolbg np" onClick="location='catalog_do.php?channelid=<?php echo $GLOBALS['channelid']; ?>&cid=<?php echo $GLOBALS['cid']; ?>&dopost=addArchives';" value='添加文档' />
  <?php if($adminid==$mid){ ?>
	<input type='button' class="coolbg np" onClick="location='content_list.php?cid=<?php echo $GLOBALS['cid']; ?>&mid=0';" value='全部文档' />
	<?php
}
else{
?>
	<input type='button' class="coolbg np" onClick="location='content_list.php?cid=<?php echo $GLOBALS['cid']; ?>&mid=<?php echo $cuserLogin->getUserID(); ?>';" value='我的文档' />
	<?php }  echo $GLOBALS['CheckUserSend']; ?>
 <input type='button' class="coolbg np" onClick="location='catalog_main.php';" value='栏目管理' />
 <input type='button' class="coolbg np" name='bb1' onClick="location='makehtml_list.php?cid=<?php echo $GLOBALS['cid']; ?>';" value='更新列表' />
 <input type='button' class="coolbg np" name='bb2' onClick="location='makehtml_archives.php?cid=<?php echo $GLOBALS['cid']; ?>';" value='更新文档' />
 <input type='button' class="coolbg np" name='bb1' onClick="location='recycling.php?cid=<?php echo $GLOBALS['cid']; ?>';" value='文章回收站' />
 </td>
 </tr>
</table>
</td>
</tr>
</table>
  
<!--  内容列表   -->
<form name="form2">
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
<tr bgcolor="#E7E7E7">
	<td height="24" colspan="10" background="img/tbg.gif">
		◆ <?php echo $GLOBALS['positionname']; ?>文档列表 &nbsp;(使用鼠标右键进行常用操作)
	</td>
</tr>
<tr align="center" bgcolor="#FAFAF1" height="22">
	<td width="6%">ID</td>
	<td width="4%">选择</td>
	<td width="28%">文章标题</td>
	<td width="10%">录入时间</td>
	<td width="10%">类目</td>
	<td width="8%">点击</td>
	<td width="6%">HTML</td>
	<td width="8%">权限</td>
	<td width="8%">发布人</td>
	<td width="10%">操作</td>
</tr>
<?php
$atts = array();
$atts['tagname'] = 'datalist';
$blockValue = $this->refObj->GetArcList($atts,$this->refObj,$fields); 
foreach( $blockValue as $key=>$fields )
{
?>
<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';"
	height="22" oncontextmenu="ShowMenu(event,this,<?php echo $fields['id']; ?>,'<?php echo urlencode($fields['title']); ?>')">
	<td><?php echo $fields['id']; ?></td>
	<td><input name="arcID" type="checkbox" id="arcID" value="<?php echo $fields['id']; ?>" class="np"></td>
	<td align='left' onDblClick="editTitle(<?php echo $fields['id']; ?>);"><span id="arc<?php echo $fields['id']; ?>">
<a href='archives_do.php?aid=<?php echo $fields['id']; ?>&dopost=editArchives'
	oncontextmenu="ShowMenu(event,this,<?php echo $fields['id']; ?>,'<?php echo urlencode($fields['title']); ?>')">
	<u><?php echo $fields['title']; ?></u>
</a></span><?php echo IsCommendArchives($fields['flag']); ?>
	</td>
	<td><?php echo GetDateMk($fields['senddate']); ?></td>
	<td><?php echo $fields['typename']; ?></td>
	<td><?php echo $fields['click']; ?></td>
	<td><?php echo IsHtmlArchives($fields['ismake']); ?></td>
	<td><?php echo GetRankName($fields['arcrank']); ?></td>
	<td><?php echo $fields['adminname']; ?></td>
	<td>
		<a href="javascript:editArc(<?php echo $fields['id']; ?>)">编辑</a> |
		<a href="javascript:viewArc(<?php echo $fields['id']; ?>)">预览</a>
	</td>
</tr>
<?php
}
?>
<tr bgcolor="#FAFAF1">
<td height="28" colspan="10">
	&nbsp;
	<a href="javascript:selAll()" class="coolbg">全选</a>
	<a href="javascript:noSelAll()" class="coolbg">取消</a>
	<a href="javascript:updateArc(0)" class="coolbg">&nbsp;更新&nbsp;</a>
	<a href="javascript:checkArc(0)" class="coolbg">&nbsp;审核&nbsp;</a>
	<a href="javascript:adArc(0)" class="coolbg">&nbsp;推荐&nbsp;</a>
	<a href="javascript:moveArc(0)" class="coolbg">&nbsp;移动&nbsp;</a>
	<a href="javascript:delArc(0)" class="coolbg">&nbsp;删除&nbsp;</a>
</td>
</tr>
</form>
<tr align="right" bgcolor="#EEF4EA">
	<td height="36" colspan="10" align="center">
		<?php
$atts = array();
$atts['tagname'] = 'pagelist';
$atts['listsize'] = '3';
 echo $this->refObj->GetPageList($atts,$this->refObj,$fields); 
?>

	</td>
</tr>
</table>

<!--  搜索表单  -->
<form name='form3' action='content_list.php' method='get'>
<input type='hidden' name='dopost' value='listArchives' />
<table width='98%'  border='0' cellpadding='1' cellspacing='1' bgcolor='#CBD8AC' align="center" style="margin-top:8px">
  <tr bgcolor='#EEF4EA'>
    <td background='img/wbg.gif' align='center'>
      <table border='0' cellpadding='0' cellspacing='0'>
        <tr>
          <td width='90' align='center'>请选择类目：</td>
          <td width='160'>
          <select name='cid' style='width:150'>
          <option value='0'>选择分类...</option>
          	<?php echo $GLOBALS['optionarr']; ?>
          </select>
        </td>
        <td width='70'>
          关键字：
        </td>
        <td width='160'>
          	<input type='text' name='keyword' value='<?php echo $GLOBALS['keyword']; ?>' style='width:150px' />
        </td>
        <td width='110'>
    		<select name='orderby' style='width:80px'>
            <option value='id'>排序...</option>
            <option value='pubdate'>发布时间</option>
            <option value='sortrank'>置顶权值</option>
            <option value='click'>点击量</option>
            <option value='postnum'>评论积分</option>
            <option value='lastpost'>最后评论</option>
      	</select>
      </td>
        <td>
          <input name="imageField" type="image" src="img/button_search.gif" width="60" height="22" border="0" class="np" />
        </td>
       </tr>
      </table>
    </td>
  </tr>
</table>
</form>

</body>
</html>