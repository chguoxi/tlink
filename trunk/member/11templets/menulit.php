<?php
$add_channel_menu = array();
if($cfg_mb_sendall=='Y')
{
	$dsql->Execute('addmod',"SELECT id,nid,typename,useraddcon,usermancon FROM #@__channeltype WHERE issend=1 AND issystem<>1 AND (usertype='' OR usertype LIKE '{$cfg_ml->M_MbType}')");
	while($menurow = $dsql->GetArray('addmod'))
	{
		$menurow['ddcon'] = empty($menurow['useraddcon']) ? 'archives_add.php' : $menurow['useraddcon'];
		$menurow['list'] = empty($menurow['usermancon']) ? 'content_list.php' : $menurow['usermancon'];
		$add_channel_menu[] = $menurow;
	}
	unset($menurow);
}
?>
<div class="dedeLeft">
    <ul class="leftNav">
        <li class="icon article"><a href="../member/content_list.php?channelid=1" title="�ѷ���������">����</a><em class="black"><a href="../member/article_add.php" title="����������">����</a></em></li>
        <li class="icon image"><a href="../member/content_list.php?channelid=2" title="����ͼ��">ͼ��</a><em class="black"><a href="../member/album_add.php" title="�½�ͼ��">�½�</a></em></li>
        <li class="icon soft"><a href="../member/content_list.php?channelid=3" title="�ѷ��������">���</a><em class="black"><a href="../member/soft_add.php" title="�ϴ����">�ϴ�</a></em></li>

        <?php
        $dsql->Execute('nn','Select indexname,indexurl From `#@__sys_module` where ismember=1 ');
        while($nnarr = $dsql->GetArray('nn')){
        @preg_match("/\/(.+?)\//is", $nnarr['indexurl'],$matches);
        $nnarr['class'] = $matches[1];
        ?>
        <li class="icon <?php echo $nnarr['class'];?>"><a href="<?php echo $nnarr['indexurl']; ?>" title="<?php echo $nnarr['indexname']; ?>" ><?php echo $nnarr['indexname']; ?></a></li>
        <?php }?>

        <?php foreach($add_channel_menu as $nnarr) { ?>
        <li class="icon channel">
        <a href="../member/<?php echo $nnarr['list'];?>?channelid=<?php echo $nnarr['id'];?>" title="�ѷ�����<?php echo $nnarr['typename'];?>"><?php echo $nnarr['typename'];?></a>
        </li>
        <?php }?>

        <li class="icon consume"><a href="../member/mypay.php">���ѹ���</a></li>
        <li class="icon file"><a href="../member/uploads.php">��������</a></li>
    </ul>
    <hr width="94%" class="dotted" />
    <button class="button2 mTB10" onclick="location='edit_fullinfo.php';">����</button>
    <hr width="94%" class="dotted" />
    <div class="lineB"></div>
</div>