<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span>";
		}
	}

?>
<h1>Thêm màu</h1>
<div class="col-md-6">
				

				<form action="<?php echo BASE_URL ?>Admin/insert_color" method="POST" enctype="multipart/form-data">
					<div class="form-group">
					<label>Tên màu:<span style="color:red;">*</span></label></br>
					<input required type="text" name="color_name" placeholder="Nhập tên màu" class="form-control">
					</div>
					<div class="form-group">	
					<label>Hình màu:<span style="color:red;">*</span></label><br>
					<input type="file" name="image_color" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Thêm</button>
				</form>
			</div>