<?php
$z[0]=Array("field","",254,273);
$z[0][4]['name']="title";
$z[1]=Array("global","",274,300);
$z[1][4]['name']="cfg_webname";
$z[2]=Array("field","",341,370);
$z[2][4]['name']="keywords";
$z[3]=Array("field","",410,468);
$z[3][4]['name']="description";
$z[3][4]['function']="html2text(@me)";
$z[4]=Array("global","",486,515);
$z[4][4]['name']="cfg_templeturl";
$z[5]=Array("include","",624,659);
$z[5][4]['filename']="head.htm";
$z[6]=Array("channel","\r\n          <li><a href='[field:typeurl/]'><span>[field:typename/]</span></a></li>",747,951);
$z[6][4]['currentstyle']="<li class='thisclass'><a href='~typelink~'><span>~typename~</span></a> </li>";
$z[7]=Array("global","",994,1019);
$z[7][4]['name']="cfg_cmsurl";
$z[8]=Array("field","",1197,1226);
$z[8][4]['name']="position";
$z[9]=Array("list","\r\n				<li>\r\n      				[field:array runphp='yes']@me = (empty(@me['litpic']) ? \"\" : \"<a href='{@me['arcurl']}' class='preview'><img src='{@me['litpic']}'/></a>\"); [/field:array]\r\n					<a href=\"[field:arcurl/]\" class=\"title\">[field:title/]</a>\r\n					<span class=\"info\">\r\n						<small>日期：</small>[field:pubdate function=\"GetDateTimeMK(@me)\"/]\r\n						<small>点击：</small>[field:click/]\r\n						<small>好评：</small>[field:scores/]\r\n					</span>\r\n					<p class=\"intro\">\r\n						[field:description/]...\r\n					</p>\r\n				</li>\r\n",1298,1866);
$z[9][4]['pagesize']="10";
$z[10]=Array("pagelist","",1972,2043);
$z[10][4]['listitem']="info,index,end,pre,next,pageno";
$z[10][4]['listsize']="5";
$z[11]=Array("arclist","\r\n          	<li><a href=\"[field:arcurl/]\">[field:title/]</a>\r\n            	<p>[field:description function='cn_substr(@me,80)'/]...</p>\r\n            </li>",2264,2474);
$z[11][4]['flag']="c";
$z[11][4]['titlelen']="42";
$z[11][4]['row']="6";
$z[12]=Array("arclist","\r\n                    	<li><a href=\"[field:arcurl/]\">[field:title/]</a></li>\r\n                    ",2688,2836);
$z[12][4]['row']="10";
$z[12][4]['orderby']="click";
$z[13]=Array("include","",2920,2957);
$z[13][4]['filename']="footer.htm";

?>