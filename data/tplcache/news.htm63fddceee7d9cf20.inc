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
$z[4]=Array("include","",1237,1272);
$z[4][4]['filename']="head.htm";
$z[5]=Array("arclist","        \r\n			  <h4 class=\"xin_title\"><a href=\"[field:arcurl/]\">[field:title/]</a></h4>\r\n			  <p>[field:pubdate function=\"MyDate('Y-m-d',@me)\"/] </p>\r\n			  <p>[field:description function='cn_substr(@me,200)'/]</p>\r\n			  ",1805,2107);
$z[5][4]['row']="100";
$z[5][4]['typeid']="39";
$z[5][4]['addfields']="body";
$z[5][4]['channelid']="1";
$z[6]=Array("arclist","\r\n			  <li>[field:title/]<a href=\"[field:arcurl/]\">&gt;&gt;点击播放</a></li>\r\n			  ",2220,2390);
$z[6][4]['row']="100";
$z[6][4]['typeid']="41";
$z[6][4]['addfields']="body";
$z[6][4]['channelid']="1";
$z[7]=Array("arclist"," 	 \r\n        <a href=\"[field:arcurl/]\">[field:title/]</a><br />\r\n        ",2656,2812);
$z[7][4]['row']="100";
$z[7][4]['typeid']="40";
$z[7][4]['addfields']="body";
$z[7][4]['channelid']="1";
$z[8]=Array("include","",3159,3196);
$z[8][4]['filename']="footer.htm";

?>