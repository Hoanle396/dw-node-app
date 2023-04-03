<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span";
		}
	}

?>

<p style="text-align: center;">Cập nhật slide</p>

<div class="col-md-6">
	<?php foreach ($slidebyid as $key => $slide) { ?>
		
	
	<form action="<?php echo BASE_URL ?>Admin/update_slide/<?php echo $slide['slider_ID'] ?>" method="POST" enctype="multipart/form-data">
	  <div class="form-group">
	    <label for="email">Hình Bài viết:</label>
	    <input type="file" name="image" class="form-control">
	    <p><img src="<?php echo BASE_URL?>App/View/Admin/slider/images/<?php echo $slide['image'] ?>" height="100" width="100"></p>
	  </div>
	<?php } ?>
	  <button type="submit" class="btn btn-default">Cập nhật</button>
	</form>
</div>