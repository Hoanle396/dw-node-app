<style type="text/css">
	.admin-content-left ul li a{
		margin: 16px 0;
		font-size: 23px;
	}
	.admin-content-left ul ul{
		margin-left: 20px;
	}
</style>
<div class="container">
	<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		     	<a class="navbar-brand" href="<?php echo BASE_URL ?>Admin/dashboard">Admin</a>
		    </div>
		    <ul class="nav navbar-nav">
			    
			    <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Danh mục sản phẩm
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		          		<li><a href="<?php echo BASE_URL?>Admin/add_category">Thêm danh mục</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_category">Danh sách danh mục</a></li>
		        	</ul>
		        </li>	
		     	<li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Loại sản phẩm
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		          		<li><a href="<?php echo BASE_URL?>Admin/add_brand">Thêm loại sản phẩm</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_brand">Danh sách loại sản phẩm</a></li>
		        	</ul>
		        </li>
		        <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Màu sắc
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		          		<li><a href="<?php echo BASE_URL?>Admin/add_color">Thêm color</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_color">Danh sách color</a></li>
		        	</ul>
		        </li>
		       	 <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Kích cỡ
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		          		<li><a href="<?php echo BASE_URL?>Admin/add_size">Thêm size</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_size">Danh sách size</a></li>
		        	</ul>
		        </li>
		        
		        <li class="dropdown">
		        	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Sản phẩm
			        <span class="caret"></span></a>
			        <ul class="dropdown-menu">
						<li><a href="<?php echo BASE_URL?>Admin/add_product">Thêm sản phẩm</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_product">Danh sách sản phẩm</a></li>
			        </ul>
		        </li>
		        <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Tin tức
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		          		<li><a href="<?php echo BASE_URL?>Admin/add_post">Thêm Tin tức</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_post">Danh sách Tin tức</a></li>
		        	</ul>
		        </li>
		        <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Slider
		       	 	<span class="caret"></span></a>
		       	 	<ul class="dropdown-menu">
		       	 		<li><a href="<?php echo BASE_URL?>Admin/add_slide">Thêm Slide</a></li>
						<li><a href="<?php echo BASE_URL?>Admin/list_slide">Danh sách Slide</a></li>
		        	</ul>
		        </li>
		     	<li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="">Đơn hàng
				    <span class="caret"></span></a>
				    <ul class="dropdown-menu"> 
				       <li><a href="<?php echo BASE_URL?>Admin/list_order">Danh sách đơn hàng</a></li>  
				   </ul>
		        </li>
		        <li ><a href="<?php echo BASE_URL?>Admin/logout">Đăng xuất</a></li>
		    </ul>
		     
		          
		        
		  </div>
		</nav>
	</div>
		<!-------------------End menu----------------------->