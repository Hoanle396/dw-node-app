<?php 

	class Dmodel{
		
		protected $db=array();
		public $con;
		public function __construct(){
			$connect="mysql:host=localhost;dbname=doan;charset=utf8";
			$user="tanhuy";
			$pass="Huy0389973178";
			$this->db=new Database($connect,$user,$pass);
			$this->con=new PDO($connect,$user,$pass);
		}
	}

?>