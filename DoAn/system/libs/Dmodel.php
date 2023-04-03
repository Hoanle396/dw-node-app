<?php 

	class Dmodel{
		
		protected $db=array();
		public $con;
		public function __construct(){
			$connect="mysql:host=db2;port=3307;dbname=doan;charset=utf8";
			$user="root";
			$pass="";
			$this->db=new Database($connect,$user,$pass);
			$this->con=new PDO($connect,$user,$pass);
		}
	}

?>