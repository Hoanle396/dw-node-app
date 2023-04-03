<?php
	class size extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_size($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_size($table)
		{
			$sql="Select * from $table ORDER BY size_ID";	
			return $this->db->select($sql);
		}
		public function list_brand($table)
		{
			$sql="Select * from $table ORDER BY brand_ID";	
			return $this->db->select($sql);
		}
		public function list_category($table)
		{
			$sql="Select * from $table ORDER BY category_ID";	
			return $this->db->select($sql);
		}
		public function size_by_id($table,$table2,$cond)
		{
			$sql="Select * from $table,$table2 where $cond ";	
			return $this->db->select($sql);
		}
		public function update_size($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_size($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
	}
?>