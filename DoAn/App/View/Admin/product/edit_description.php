<h1 style="text-align:center;">Sửa danh mục</h1>
			<div class="col-md-6">
				<?php foreach($des_by_id as $key=>$des_by_id) {?>
				<form action="<?php echo BASE_URL?>Admin/update_des/<?php echo $des_by_id['des_ID']?>" method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label>Mô tả sản phẩm:<span style="color:red;">*</span></label></br>
					<textarea id="editor1" required cols="50" rows="10" placeholder="Mô tả sản phẩm" name="des" class="form-control"><?php echo $des_by_id['description'] ?></textarea><br>
				</div>
				<div class="form-group">
					<label>Bảo quản sản phẩm:<span style="color:red;">*</span></label></br>
					<textarea id="editor2" required cols="50" rows="10" placeholder="Bảo quản sản phẩm" name="store" class="form-control"><?php echo $des_by_id['store'] ?></textarea><br>
				</div>
					<button type="submit" class="btn btn-default">Sửa</button>
				
				</form>
				<?php }?>
			</div>
		
		
<script>
	CKEDITOR.replace( 'editor1', {
	filebrowserBrowseUrl: '<?php echo BASE_URL ?>App/View/Admin/product/ckfinder/ckfinder.html',
	filebrowserUploadUrl: '<?php echo BASE_URL ?>App/View/Admin/product/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'
} );
	CKEDITOR.replace( 'editor2', {
	filebrowserBrowseUrl: '<?php echo BASE_URL ?>App/View/Admin/product/ckfinder/ckfinder.html',
	filebrowserUploadUrl: '<?php echo BASE_URL ?>App/View/Admin/product/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'
} );
</script>