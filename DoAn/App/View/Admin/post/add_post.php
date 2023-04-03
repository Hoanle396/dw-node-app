<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span";
		}
	}

?>

<p style="text-align: center;">Thêm bài viết</p>

<div class="col-md-6">

	<form action="<?php echo BASE_URL ?>Admin/insert_post" method="POST" enctype="multipart/form-data"> 
	   <div class="form-group">
	    <label for="email">Tên bài viết:</label>
	    <input type="text" name="post_Name" class="form-control" >
	  </div>
	  <div class="form-group">
	    <label for="email">Hình bài viết:</label>
	    <input type="file" name="post_image" class="form-control" >
	  </div>
	  <div class="form-group">
	    <labelfor="pwd">Tóm tắt bài viết:</label>
	    <textarea id="editor1" class="form-control" name="post_summary" style="resize:none" rows="10"></textarea>
	  </div>
	  <div class="form-group">
	    <labelfor="pwd">Chi tiết bài viết:</label>
	    <textarea id="editor2" class="form-control" name="post_content" style="resize:none" rows="10"></textarea>
	  </div>
	  <button type="submit" class="btn btn-default">Thêm bài viết</button>
	</form>
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