<?php
class Upload {
	public $upload_name; // 上传文件名
	public $upload_tmp_name; // 上传临时文件名
	public $upload_final_name; // 上传文件的最终文件名
	public $upload_target_dir; // 文件被上传到的目标目录
	public $upload_target_path; // 文件被上传到的最终路径
	public $upload_filetype; // 上传文件类型
	public $allow_uploadedfile_type; // 允许的上传文件类型
	public $upload_file_size; // 上传文件的大小
	public $allow_uploaded_maxsize = 104857600; // 允许上传文件的最大值
	public $upload_error_msg = '';
	public $upload_error_code = 1;
	// 构造函数
	public function __construct() {
		$file = array_shift($_FILES);
		$this->upload_name = $file ["name"][0]; // 取得上传文件名
		$this->upload_filetype = $file ["type"][0];
		$this->upload_tmp_name = $file ["tmp_name"][0];
		$this->allow_uploadedfile_type = array (
				'jpeg',
				'jpg',
				'png',
				'gif',
				'bmp',
				'doc',
				'zip',
				'rar',
				'txt',
				'wps',
				'exe',
				'tar',
				'7z',
		);
		$this->upload_file_size = $file ["size"][0];
		$this->upload_target_dir = "./upload";
	}
	
	public function set_upload_target_dir($target_dir){
		$this->upload_target_dir = $target_dir;
	}
	
	public function set_allow_uploaded_maxsize($size){
		$this->allow_uploaded_maxsize = $size;
	}
	
	// 文件上传
	public function upload_file() {
		$info = pathinfo (  $this->upload_name );
		$upload_filetype = $info['extension'];
		$upload_basename = $info['filename'];
		if (in_array ( $upload_filetype, $this->allow_uploadedfile_type )) {
			if ($this->upload_file_size < $this->allow_uploaded_maxsize) {
				if ( !is_dir ( $this->upload_target_dir )) {
					mkdir ( $this->upload_target_dir, 0777, true);
					chmod ( $this->upload_target_dir, 0777 );
				}
				$this->upload_final_name = $this->upload_name;
				$this->upload_target_path = $this->upload_target_dir . "/" . $this->upload_final_name;
				if ( file_exists($this->upload_target_path) ){
 					$this->upload_target_path = $this->upload_target_dir . "/" .$upload_basename.'-'.time().'.'.$upload_filetype;
				}
				if (! move_uploaded_file ( $this->upload_tmp_name, $this->upload_target_path )){
					$this->upload_error_code = 53;
					$this->upload_error_msg = '系统错误,可能是文件夹没有写入权限';
				}
			} else {
				$this->upload_error_code = 57;
				$this->upload_error_msg = '文件太大,上传失败';
			}
		} else {
			$this->upload_error_msg = '不支持此文件类型，请重新选择';
			$this->upload_error_code = 62;
		}
		
		if ( $this->upload_error_code !=1 ){
			$info = array(
					'status'=>$this->upload_error_code,
					'msg'   =>$this->upload_error_msg
			);
		}
		else{
			$info = $this->get_file_info();
		}
		return $info;
	}
	
	/**
	 * 上传完后获取文件信息
	 */
	public function get_file_info(){
		$info = array(
			'path'=>$this->upload_target_path,
			'status'=>$this->upload_error_code,
			'msg'=>''
			);
		return $info;
	}
	
	/**
	 * 获取文件扩展名
	 * 
	 * @param String $filename
	 * 要获取文件名的文件
	 */
	public function getFileExt($filename) {
		$info = pathinfo ( $filename );
		return $info ["extension"];
	}
}