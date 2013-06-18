<?php
if(!defined('DEDEINC'))
{
	exit("Request Error!");
}

function SpHtml2Text($str)
{
	$alltext = str_replace("　"," ",$str);
	$alltext=strip_tags(trim($alltext));
	return $alltext;
}


?>