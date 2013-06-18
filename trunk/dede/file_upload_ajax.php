<?php
header('Content-type:text/html;Charset=utf-8');
$cfg_soft_dir = '../uploads/soft';
$cfg_max_file_size = 104857600;

if ( $_FILES ){
	upload_file();
}
else{

}

function upload_file(){
	set_time_limit (0);
	include "./inc/inc_upload.php";
	$Uploader = new Upload();
	global $cfg_soft_dir, $cfg_max_file_size;
	$Uploader->set_upload_target_dir($cfg_soft_dir);
	$Uploader->set_allow_uploaded_maxsize($cfg_max_file_size);
	$info = $Uploader->upload_file();
	echo json_encode($info);
	exit;
}