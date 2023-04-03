<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span>";
		}
	}

?>
<h1>Sửa danh mục</h1>
<div class="col-md-6">
				
				<?php foreach($category_by_id as $key=>$category_by_id) {?>
				<form action="<?php echo BASE_URL?>Admin/update_category/<?php echo $category_by_id['category_ID']?>" method="POST">
					<div class="form-group">
	    			<label for="email">Tên danh mục:</label></br>
					<input required type="text" name="category_name" placeholder="Nhập tên danh mục" value="<?php echo $category_by_id['category_name'] ?>" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
				<?php }?>
		</div>
		