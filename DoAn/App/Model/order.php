<?php 
	class order extends Dmodel{

		public function __construct(){
			parent::__construct();
		}
		public function insert_order($table_order,$data_order){
			return $this->db->insert($table_order,$data_order);
		}
		public function insert_order_details($table_order_details,$data_details){
			return $this->db->insert($table_order_details,$data_details);
		}
		public function insert_score($table_score,$data_score){
			return $this->db->insert($table_score,$data_score);
		}
		public function list_order($table_order){
			$sql="Select * FROM $table_order ORDER BY $table_order.ID";
			return $this->db->select($sql);
		}
		public function list_score($table_score,$cond_score){
			$sql="Select * FROM $table_score where $cond_score";
			return $this->db->select($sql);
		}
		public function update_score($table_score,$data_score,$cond_score){
			return $this->db->update($table_score,$data_score,$cond_score);
		}
		public function list_order_details($table_product,$table_order_details,$cond){
			$sql="Select * from $table_order_details,$table_product where $cond ORDER BY $table_order_details.order_details_ID DESC";
			return $this->db->select($sql);
		}
		public function register_customer($table,$data)
		{
			return $this->db->insert($table,$data);
		}
		public function list_info($table_order_details,$cond2){
			$sql="Select * from $table_order_details where $cond2 ORDER BY $table_order_details.order_details_ID DESC LIMIT 1";
			return $this->db->select($sql);
		}
		public function order_confirm($table_order,$data,$cond){
			return $this->db->update($table_order,$data,$cond);
		}
		public function list_ciy($table,$cond){
			$sql="Select * FROM $table where $cond ORDER BY $table.city_ID";
			return $this->db->select($sql);
		}
		public function list_district($table,$cond){
			$sql="Select * FROM $table where $cond  ORDER BY $table.district_ID";
			return $this->db->select($sql);
		}
		public function list_wards($table,$cond){
			$sql="Select * FROM $table where $cond ORDER BY $table.wards_ID";
			return $this->db->select($sql);
		}
		public function delete_order($table,$cond){
			return $this->db->delete($table,$cond);
		
		}
		
	}


?>