<?php
if(!isset($GLOBALS['_vars'])) $GLOBALS['_vars'] = array(); 
$fields = array();
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>会员中心 -<?php echo $cfg_webname; ?></title>
<?php include(DEDEMEMBER."/templets/head_inc.htm"); ?>
<script type="text/javascript" src="js/box.js"></script>
</head>
<body>
<?php include(DEDEMEMBER."/templets/head.htm"); ?>
<div class="wrapper lineT">
  <div class="mainBox">
    <div class="main">
      <?php include(DEDEMEMBER."/templets/menu.php"); ?>
      <div class="dedeCenter" id="personal">
        <!--个人信息 -->
        <div class="message">
          <div class="visualize fLeft">
          	<img class="mB10" src="<?php echo (!empty($cfg_ml->fields['face']) ? $cfg_ml->fields['face'] : "images/nopic.gif"); ?>" width="150" height="150" alt="您的形象" />
            <ul class="black">
              <li><a class="icon upImage" href="edit_face.php" title="修改个人头像">上传头像</a></li>
              <li><a class="icon mySetting" href="edit_baseinfo.php" title="设置个人资料">个人资料</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="datum fLeft mT10">
            <h3 class="userName"><?php echo $cfg_ml->M_LoginID;?><em class="mL10"><?php echo $cfg_ml->M_MbType; ?>用户</em></h3>
            <div class="userState mTB10"><span class="fLeft"><?php echo $cfg_ml->GetSta($dsql); ?></span>
              <div class="clear"></div>
              <script type="text/javascript">
function setTab(m,n){
var tli=document.getElementById("menu"+m).getElementsByTagName("li");
var mli=document.getElementById("main"+m).getElementsByTagName("dl");
for(i=0;i<tli.length;i++){
   tli[i].className=i==n?"select":"";
   mli[i].className=i==n?"block":"none";
}
}
</script>
              <div id="Upbox" style="display:none;">
                <div class="lineBorder mTB10">
                  <div class="titleTabBar bgGreen lineB">
                    <ul id="menuUp">
                      <li class="select"><a onclick="setTab('Up',0)">我要升级</a></li>
                      <li><a onclick="setTab('Up',1)">我要充值</a></li>
                    </ul>
                  </div>
                  <div id="mainUp" class=" mTB10 mL10 mR10">
                    <form name="formrank" action="index_do.php" method="post">
                      <dl class="block">
                        <dt><strong>帐号升级</strong></dt>
                        <?php
                        $sRanks = array();
                        $dsql->SetQuery("Select membername,rank From `#@__arcrank` where rank>-1 order by rank asc");
                        $dsql->Execute();
                        $maxrank = 0;
                        while($row = $dsql->GetObject())
                        {
                            if($row->rank > $maxrank) $maxrank = $row->rank;
                            $sRanks[$row->rank] = $row->membername;
                        }
                        $sRanks[0] = "限制会员";
                        ?>
                        <dd class="mT10">你目前的级别：<?php echo $sRanks[$cfg_ml->M_Rank]; ?></dd>
                        <?php
                        if($cfg_ml->M_Rank >= $maxrank){
                        ?>
                        <dd class="mTB10">你已经是最高级别的会员，不能再升级。
                          <button class="mL10 buttonGary2" type="button" onclick="tb_remove()">关闭</button>
                        </dd>
                        <?php }else{ ?>
                        <input type="hidden" name="fmdo" value="user" />
                        <input type="hidden" name="dopost" value="uprank" />
                        <dd class="mT10">可以升级的级别：
                          <select name="uptype" id="uptype">
                            <?php foreach($sRanks as $k => $v){  if($k > $cfg_ml->M_Rank){?>
                            <option value="<?php echo $k;?>"><?php echo $v;?></option>
                            <?php } }?>
                          </select>
                        </dd>
                        <dd>
                          <hr />
                          <button class="button2" type="submit">提交</button>
                          <button class="mL10 buttonGary2" type="button" onclick="tb_remove()">取消</button>
                        </dd>
                        <?php }?>
                      </dl>
                    </form>
                    <form name="formmoney" action="index_do.php" method="post">
                      <dl class="none">
                        <dt><strong>账户充值</strong></dt>
                        <dd class="mT10">
                          <input type="hidden" name="fmdo" value="user" />
                          <input type="hidden" name="dopost" value="addmoney" />
                          金币数：
                          <input class="text" name="money" type="text" id="money" value="500" size="6" />
                        </dd>
                        <dd class="mTB10">验证码：
                          <input class="text" name="vdcode" type="text" id="vdcode" size="4" style="width:160px;text-transform:uppercase;" />
                          <img id="vdimgck" src="../include/vdimgck.php" width="50" height="20" alt="看不清？点击更换" align="absmiddle" style="cursor:pointer" onclick="this.src=this.src+'?'" /></dd>
                        <dd>
                          <hr />
                          <button class="button2" type="submit">提交</button>
                          <button class="mL10 buttonGary2" type="button" onclick="tb_remove()">取消</button>
                        </dd>
                      </dl>
                    </form>
                    <div class="clear"></div>
                  </div>
                </div>
              </div>
            </div>
            <ul class="entry">
              <!--<li><a href="pm.php" title="短消息">消息</a>(<?php echo $pms['nums'];?>)</li>
              <li><a href="caicai.php" title="发出的评论">评论</a>(<?php echo $minfos['feedback']; ?>)</li>
              <li><a href="mystow.php" title="收藏夹">收藏</a>(<?php echo $minfos['stow']; ?>)</li>
              <li><a href="javascript:;">其它</a>(<?php echo $minfos['archives']; ?>)</li>
              <li><a href="content_list.php?channelid=1" title="已发布的文章">文章</a>(<?php echo $minfos['article']; ?>)</li>
              <li><a href="content_list.php?channelid=2" title="管理图集">图集</a>(<?php echo $minfos['album']; ?>)</li>
              <li><a href="content_list.php?channelid=3" title="已发布的软件">软件</a>(<?php echo $minfos['soft']; ?>)</li>
              <li><a href="shops_products.php" title="购买的商品">商品</a>(<?php echo $minfos['shop']; ?>)</li>--> 
			  <li><a href="content_list.php?channelid=1" title="已发布的文章">文章</a>(<?php echo $minfos['article']; ?>)</li>             
            </ul>
            <div> <!--<span class="fRight" style='background-color:#F8FEDA;clear:both;padding:3px 5px 3px 5px;margin-top:12px;'> <a href="#" onclick="location='shops_orders.php';return false;" class="thickbox">[商品订单]</a>&nbsp; <a href="#TB_inline?height=210&width=380&inlineId=Upbox&modal=true" title="升级与充值" class="thickbox">[申请升级/充值]</a>--> </span> </div>
            <div class="clear"></div>
            <script type="text/javascript">
			$("document").ready(function(){
				$(".tipClose").click(function(){
					$(this).parent(".tip").animate({ height: 'toggle', opacity: 'toggle' }, "hide");
					})
			});
			</script>
            <!--提示 -->
            
          </div>
        </div>
        
        <!--谁来看过我 -->
        
      </div>
      <div class="clear"></div>
    </div>
    
    <div class="clear"></div>
  </div>
</div>
<?php include(DEDEMEMBER."/templets/foot.htm"); ?>
</body>
</html>