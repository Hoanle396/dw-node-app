<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span";
		}
	}

?>

<p style="text-align: center;">Cập nhật sản phẩm</p>

<div class="col-md-6">
	<?php foreach ($postbyid as $key => $pos) { ?>
		
	
	<form action="<?php echo BASE_URL ?>Admin/update_post/<?php echo $pos['post_ID'] ?>" method="POST" enctype="multipart/form-data">
	  <div class="form-group">
	    <label for="email">Hình Bài viết:</label>
	    <input type="file" name="post_image" class="form-control">
	    <p><img src="<?php echo BASE_URL?>App/View/Admin/post/post_image/<?php echo $pos['post_image'] ?>" height="100" width="100"></p>
	  </div>
	   <div class="form-group">
	    <label for="email">Tên bài viết:</label>
	    <input type="text" name="post_Name" class="form-control" value="<?php echo $pos['post_Name'] ?>">
	  </div>
	   <div class="form-group">
	    <label for="pwd">Tóm tắt bài viết:</label>
	    <textarea id="editor" class="form-control" name="post_summary" style="resize:none" rows="5"><?php echo $pos['post_summary'] ?></textarea>
	  </div>
	  <div class="form-group">
	    <label for="pwd">Nội dung bài viết:</label>
	    <textarea id="editor" class="form-control" name="post_content" style="resize:none" rows="5"><?php echo $pos['post_content'] ?></textarea>
	  </div>
	<?php } ?>
	  <button type="submit" class="btn btn-default">Cập nhật bài viết</button>
	</form>
</div>