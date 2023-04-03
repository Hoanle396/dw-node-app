<?php
	class color extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_color($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_color($table)
		{
			$sql="Select * from $table ORDER BY color_ID";	
			return $this->db->select($sql);
		}
		public function color_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_color($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_color($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
	}
?>