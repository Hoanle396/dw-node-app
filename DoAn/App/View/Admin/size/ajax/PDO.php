<?php 
	$connect='mysql:host=localhost;dbname=doan';
	$user='tanhuy';
	$pass='Huy0389973178';
	try {
		$db=new PDO($connect,$user,$pass);
	} catch (Exception $e) {
		$error=$e->getMessage();
		echo "ket noi ko thanh cong $error";
	}
?>