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
	    <li class="icon article"><a href="../member/index.php" >��Ա������ҳ</a></li>
        <!--<li class="icon article"><a href="../member/content_list.php?channelid=1" title="�ѷ���������">����</a><em class="black"><a href="../member/article_add.php" title="����������">����</a></em></li>
        <li class="icon image"><a href="../member/content_list.php?channelid=2" title="����ͼ��">ͼ��</a><em class="black"><a href="../member/album_add.php" title="�½�ͼ��">�½�</a></em></li>
        <li class="icon soft"><a href="../member/content_list.php?channelid=3" title="�ѷ��������">���</a><em class="black"><a href="../member/soft_add.php" title="�ϴ����">�ϴ�</a></em></li>-->
    </ul>
    <hr width="94%" class="dotted" />
    <button class="button2 mTB10" onclick="location='../member/edit_baseinfo.php';">��Ա���Ϲ���</button>
	<button class="button2 mTB10" onclick="location='/plus/view.php?aid=74';" target=_blank>�߼���Աͨ��</button>
    <hr width="94%" class="dotted" />
    <div class="lineB"></div>
</div>