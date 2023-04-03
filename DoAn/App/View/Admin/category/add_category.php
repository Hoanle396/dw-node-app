<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span>";
		}
	}

?>
<h1>Thêm danh mục</h1>
<div class="col-md-6">
				
				<form action="<?php echo BASE_URL ?>Admin/insert_category" method="POST">
					<div class="form-group">
	    			<label for="email">Tên danh mục:</label></br>
					<input required type="text" name="category_name" placeholder="Nhập tên danh mục" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Thêm</button>
				</form>
		</div>