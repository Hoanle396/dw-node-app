<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

   <link rel="stylesheet" href="<?php echo BASE_URL ?>App/View/Admin/style.css">
     <script type="text/javascript" src="<?php echo BASE_URL ?>App/View/Admin/product/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="<?php echo BASE_URL ?>App/View/Admin/product/ckfinder/ckfinder.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
	<title>Danh mục sản phẩm</title>
</head>
<body>
	<header>
		<?php if (isset($_SESSION['login'])) {?>
			<h3>XIN CHÀO ,<?php echo $_SESSION['name']?></h3>
		<?php }?>
		
	</header>