<?php 
	class login_Admin extends Dmodel{

		public function __construct(){
			parent::__construct();
		}
		public function login($table,$user,$pass){
			$sql="Select * from $table where Admin_User=? AND Admin_Pass=?";	
			return $this->db->affectedRows($sql,$user,$pass);
		} 
		public function getLogin($table,$user,$pass){
			$sql="Select * from $table where Admin_User=? AND Admin_Pass=?";	
			return $this->db->selectUser($sql,$user,$pass);
		} 
	}


?>