<?php
	class brand extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_brand($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_category($table)
		{
			$sql="Select * from $table ORDER BY category_ID";	
			return $this->db->select($sql);
		}
		public function list_brand($table1,$table2,$cond)
		{
			$sql="Select * from $table1,$table2 where $cond ORDER BY brand_ID";	
			return $this->db->select($sql);
		}
		public function brand_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond";
			return $this->db->select($sql);
		}
		public function update_brand($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_brand($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
	}
?>