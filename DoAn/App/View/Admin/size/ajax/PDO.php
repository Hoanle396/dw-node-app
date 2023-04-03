<?php 
	$connect='mysql:host=db2;port:3307;dbname=doan';
	$user='root';
	$pass='';
	try {
		$db=new PDO($connect,$user,$pass);
	} catch (Exception $e) {
		$error=$e->getMessage();
		echo "ket noi ko thanh cong $error";
	}
?>