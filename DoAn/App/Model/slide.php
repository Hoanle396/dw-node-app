<?php
	class slide extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_slide($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_slide($table)
		{
			$sql="Select * from $table ORDER BY slider_ID";	
			return $this->db->select($sql);
		}
		public function slide_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_slide($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_slide($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
	}
?>