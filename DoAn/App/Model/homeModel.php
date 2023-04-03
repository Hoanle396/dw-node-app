<?php
	class homeModel extends Dmodel{
		public function __construct(){
			$data=array();
			parent::__construct();
		}
		public function list_category($table1){
			$sql="Select * from $table1 ORDER BY $table1.category_ID";	
			return $this->db->select($sql);
		}
		public function list_size($table5,$cond){
			$sql="Select * from $table5 where $cond ORDER BY $table5.size_ID";	
			return $this->db->select($sql);
		}
		public function list_city($table2){
			$sql="Select * from $table2 ORDER BY $table2.city_ID";	
			return $this->db->select($sql);
		}
		public function list_district($table3,$city_ID){
			$sql="Select * from $table3 where $table3.city=$city_ID ORDER BY $table3.district_ID";	
			return $this->db->select($sql);
		}
		public function list_category_brand($table1,$table2,$cond1)
		{
			$sql="Select * from $table1,$table2 where $cond1";
			return $this->db->select($sql);
		}
		public function list_brand_product_Hot($table2,$table3,$cond){
			$sql="Select * from $table2,$table3 where $cond LIMIT 5";
			return $this->db->select($sql);
		}
		public function list_brand($table2,$cond2){
			$sql="Select * from $table2 where $cond2";
			return $this->db->select($sql);
		}
		public function list_product($table3,$cond3){
			$sql="Select * from $table3 where $cond3";	
			return $this->db->select($sql);
		}
		public function list_brand_product($table2,$table3,$cond4,$Limit)
		{
			$sql="Select * from $table2,$table3 where $cond4 $Limit";
			return $this->db->select($sql);
		}
		public function list_brand_product_DESC($table2,$table3,$cond4,$Limit)
		{
			$sql="Select * from $table2,$table3 where $cond4 ORDER BY ($table3.price*(1-$table3.discount/100)) DESC $Limit";
			return $this->db->select($sql);
		}
		public function list_brand_product_ASC($table2,$table3,$cond4,$Limit)
		{
			$sql="Select * from $table2,$table3 where $cond4 ORDER BY ($table3.price*(1-$table3.discount/100)) $Limit";
			return $this->db->select($sql);
		}
		public function list_color_product($table4,$table3,$cond5)
		{
			$sql="Select * from $table4,$table3 where $cond5";
			return $this->db->select($sql);
		}
		public function list_order_product($table_order_details,$table_product,$cond3){
			$sql="Select * from $table_order_details,$table_product where $cond3";
			return $this->db->select($sql);
		}
		public function list_des_product($table6,$table3,$cond7)
		{
			$sql="Select * from $table6,$table3 where $cond7";
			return $this->db->select($sql);
		}
		public function list_images_product($table7,$table3,$cond8)
		{
			$sql="Select * from $table7,$table3 where $cond8";
			return $this->db->select($sql);
		}
		public function order_details($table,$cond)
		{
			$sql="Select * from $table where $cond ORDER BY order_details_ID";
			return $this->db->select($sql);
		}
		public function list_order($table,$cond)
		{
			$sql="Select * from $table where $cond ORDER BY ID";
			return $this->db->select($sql);
		}
		public function order_details_product($table_order_details,$table_product,$cond1)
		{
			$sql="Select product_name,price,quantity from $table_order_details,$table_product where $cond1";
			return $this->db->select($sql);
		}
		public function destroy_order($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		
		}
		public function list_ciy($table,$cond){
			$sql="Select * FROM $table where $cond ORDER BY $table.city_ID";
			return $this->db->select($sql);
		}
		public function list_district1($table,$cond){
			$sql="Select * FROM $table where $cond  ORDER BY $table.district_ID";
			return $this->db->select($sql);
		}
		public function list_wards($table,$cond){
			$sql="Select * FROM $table where $cond ORDER BY $table.wards_ID";
			return $this->db->select($sql);
		}
		public function list_customer($table_customer){
			$sql="Select Email,Phone FROM $table_customer ORDER BY $table_customer.customer_ID";
			return $this->db->select($sql);
		}
		public function list_customer_by_id($table_customer,$cond){
			$sql="Select * FROM $table_customer where $cond ORDER BY $table_customer.customer_ID";
			return $this->db->select($sql);
		}
		public function register_customer($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function login_email($table,$user,$pass){
			$sql="Select * from $table where (Email=? AND Password=?)";	
			return $this->db->affectedRows($sql,$user,$pass);
		} 
		public function login_phone($table,$user,$pass){
			$sql="Select * from $table where (Phone=? AND Password=?)";	
			return $this->db->affectedRows($sql,$user,$pass);
		} 
		public function getLogin_email($table,$user,$pass){
			$sql="Select * from $table where (Email=? AND Password=?) ";	
			return $this->db->selectUser($sql,$user,$pass);
		} 
		public function getLogin_phone($table,$user,$pass){
			$sql="Select * from $table where (Phone=? AND Password=?) ";	
			return $this->db->selectUser($sql,$user,$pass);
		} 
		public function search_product_home($table_product,$name,$Limit){
			$sql="Select * from $table_product  where product_name LIKE '%".$name."%' $Limit";		
			return $this->db->select($sql);
		}
		public function search_product_home_DESC($table_product,$name,$Limit){
			$sql="Select * from $table_product  where product_name LIKE '%".$name."%' ORDER BY ($table_product.price*(1-$table_product.discount/100)) DESC $Limit";		
			return $this->db->select($sql);
		}
		public function search_product_home_ASC($table_product,$name,$Limit){
			$sql="Select * from $table_product  where product_name LIKE '%".$name."%' ORDER BY ($table_product.price*(1-$table_product.discount/100)) ASC $Limit";		
			return $this->db->select($sql);
		}
		public function list_score_customer($table_score,$cond){
			$sql="Select * from $table_score  where $cond ORDER BY $table_score.score_ID";		
			return $this->db->select($sql);
		}
		public function Update_Profile($table,$data,$cond){
			return $this->db->update($table,$data,$cond);
		}
	}
?>