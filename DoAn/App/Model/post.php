<?php 
	class post extends Dmodel{

		public function __construct(){
			parent::__construct();
		}
		public function category_post($table){
			$sql="Select * from $table ORDER BY post_ID";	
			return $this->db->select($sql);
		} 
		public function insertpost($table,$data){
			return $this->db->insert($table,$data);
		}
		public function post($table_post){
			$sql="Select * from $table_post ORDER BY $table_post.post_ID";	
			return $this->db->select($sql);
		}
		public function list_post_home($post){
			$sql="Select * from $post ORDER BY $post.post_ID DESC";		
			return $this->db->select($sql);
		} 
		public function deletepost($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
		public function postbyid($table,$cond){
			$sql="Select * from $table where $cond";		
			return $this->db->select($sql);
		}
		public function updatepost($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		
	}


?>