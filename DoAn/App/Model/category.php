<?php
	class category extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_category($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_category($table)
		{
			$sql="Select * from $table ORDER BY category_ID";	
			return $this->db->select($sql);
		}
		public function category_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_category($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_category($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
	}
?>