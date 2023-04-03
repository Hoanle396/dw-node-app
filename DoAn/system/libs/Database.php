<?php 
	class Database extends PDO{
		
		function __construct($connect,$user,$pass){
			parent::__construct($connect,$user,$pass);
		}

		public function select($sql,$data = array(),$fetchStyle=PDO::FETCH_ASSOC){
			$Statement=$this->prepare($sql);
			foreach ($data as $key => $value) {
				$Statement->bindValue($key,$value);
			}
			$Statement->execute();
			return $Statement->fetchAll();
		}
		public function insert($bangsanpham,$data){
			$key=implode(",", array_keys($data));
			$values=":".implode(", :", array_keys($data));

			$sql="Insert into $bangsanpham($key) Values($values)";
			$Statement=$this->prepare($sql);
			foreach ($data as $key => $value) {
				$Statement->bindValue(":$key",$value);
			}
			return $Statement->execute();	
		}
		public function update($table,$data,$cond){
			$UpdateKey="";
			foreach ($data as $key => $value) {
				$UpdateKey.="$key=:$key,";
			}
			$UpdateKey=rtrim($UpdateKey,",");
			$sql =" update $table SET $UpdateKey where $cond";
			$Statement=$this->prepare($sql);
			foreach ($data as $key => $value) {
				$Statement->bindValue(":$key",$value);
			}
			return $Statement->execute();	
		}	
		public function delete($table,$cond){
			$sql="delete from $table where $cond";
			return $this->exec($sql);
		}
		public function affectedRows($sql,$user,$pass){
			$Statement=$this->prepare($sql);
			$Statement->execute(array($user,$pass));
			return $Statement->rowCount();
		}
		public function selectUser($sql,$user,$pass){
			$Statement=$this->prepare($sql);
			$Statement->execute(array($user,$pass));
			return $Statement->fetchAll(PDO::FETCH_ASSOC);
		}
	}


?>