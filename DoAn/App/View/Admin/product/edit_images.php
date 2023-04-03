
<h1 style="text-align:center;">Sửa hình sản phẩm</h1>
			<div class="col-md-6">
				<?php foreach($image_by_id as $keys=>$image_by_id){ ?>
				<form action="<?php echo BASE_URL?>Admin/update_image/<?php echo $image_by_id['images_ID']?>" method="POST" enctype="multipart/form-data">
					<div class="form-group">
					<label>Hình sản phẩm:<span style="color:red;">*</span></label>
					<p><img src="<?php echo BASE_URL?>App/View/Admin/product/images/<?php echo $image_by_id['images'] ?>"height="100" width="100"></p>
					<input type="file" name="image" class="form-control"></br>
					</div>
				
					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
			<?php }?>
			</div>
		
<script>
	CKEDITOR.replace('editor1');
</script>