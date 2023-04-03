
<?php
	class product extends Dmodel{
		public function __construct(){
			parent::__construct();
		}
		public function insert_product($table,$data)
		{
			return $this->db->insert($table,$data);
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
		public function list_color($table)
		{
			$sql="Select * from $table ORDER BY color_ID";	
			return $this->db->select($sql);
		}
		public function list_product($table1,$table2,$table3,$cond)
		{
			$sql="Select * from $table1,$table2,$table3 where $cond ORDER BY $table1.product_ID";	
			return $this->db->select($sql);
		}
		public function list_product_admin($table1)
		{
			$sql="Select product_ID from $table1 ORDER BY $table1.product_ID DESC";	
			return $this->db->select($sql);
		}
		public function product_by_id($table,$table2,$cond)
		{
			$sql="Select * from $table,$table2 where $cond ";	
			return $this->db->select($sql);
		}
		public function product_by_id_home($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_product($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_product($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
		public function insert_des($table,$data){
			return $this->db->insert($table,$data);
		}
		public function list_des_product($table2,$cond){
			$sql="Select * from $table2 where $cond";	
			return $this->db->select($sql);
		}
		public function des_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_des($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_des($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
		public function insert_images($table,$data){
			return $this->db->insert($table,$data);
		}
		public function list_image_product($table2,$cond){
			$sql="Select * from $table2 where $cond";	
			return $this->db->select($sql);
		}
		public function image_by_id($table,$cond)
		{
			$sql="Select * from $table where $cond ";	
			return $this->db->select($sql);
		}
		public function update_image($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
		public function delete_image($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
		public function search($table1,$table2,$table3,$cond,$name){
			$sql="Select * from $table1,$table2,$table3 where $cond AND $table1.product_name LIKE '%".$name."%'";	
			return $this->db->select($sql);
		}
	}
?>