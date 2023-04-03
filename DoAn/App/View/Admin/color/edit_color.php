<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span>";
		}
	}

?>
				<h1 style="text-align:center;">Sửa danh mục</h1>
				<div class="col-md-6">
				<?php foreach($color_by_id as $key=>$color_by_id) {?>
				<form action="<?php echo BASE_URL?>Admin/update_color/<?php echo $color_by_id['color_ID']?>" method="POST" enctype="multipart/form-data">
					<div class="form-group">
	    			<label for="email">Tên màu:</label></br>
					<input required type="text" name="color_name" placeholder="Nhập tên danh mục" value="<?php echo $color_by_id['color_name'] ?>"class="form-control">
					</div>
					<div class="form-group">
	    			<label for="email">Hình màu:</label></br>
					<p><img src="<?php echo BASE_URL?>App/View/Admin/color/image_color/<?php echo $color_by_id['image_color'] ?>"height="100" width="100"></p>
					<input type="file" name="image_color" class="form-control"></br>
					</div>
					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
				<?php }?>
			</div>