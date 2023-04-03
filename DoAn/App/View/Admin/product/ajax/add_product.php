<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<script type="text/javascript"  >
         $(document).ready(function(){
            $("#category_ID").change(function(){
                var id1=$("#category_ID").val();
                $.post("<?php echo BASE_URL?>App/View/Admin/product/ajax/data.php",{id1: id1},function(data){
                    $("#brand_ID").html(data);
                })
            })
        })
    </script>
</head>
<body>
<h1 style="text-align:center;">Thêm sản phẩm</h1></br>
<div class="col-md-6">
				
				
				<form action="<?php echo BASE_URL?>Admin/insert_product" method="POST" enctype="multipart/form-data">
					<div class="form-group">
					<label>Tên sản phẩm:<span style="color:red;" id="tb">*</span></label>
					<input required type="text" name="product_name" placeholder="Nhập tên sản phẩm" id="Name" class="form-control">
					</div>
					<div class="form-group">
					<label>Hình sản phẩm:<span style="color:red;" id="tb">
					<?php 
						if (!empty($_GET['msg'])) {
							$msg=unserialize(urldecode($_GET['msg']));
							foreach ($msg as $key => $value) {
								echo $value;
							}
						}

					?></span></label>
					<input type="file" name="image" id="image" class="form-control">
					</div>
					<div class="form-group">
					<label>Danh mục:<span style="color:red;"  id="tb">*</span></label>
					<select id='category_ID' name="category_ID" class="form-control">
						<option>Chọn loại sản phẩm</option>
				       	 <?php
					        foreach($list_category as $list_category){?>

					          <option value='<?php echo $list_category['category_ID']?>'><?php echo $list_category['category_name']?></option>
					      <?php }?>
				    </select>
				    </div>
				    <div class="form-group">
				    <label>Loại sản phẩm:<span style="color:red;"  id="tb">*</span></label>
				    <select id='brand_ID' name="brand_ID" class="form-control">
						<option>Chọn loại sản phẩm</option>
				    </select>
				    </div>
				    <div class="form-group">
				    <label>Màu sắc sản phẩm:<span style="color:red;">*</span></label>
				    <select id='color_ID' name="color_ID" class="form-control">
				    	<option>Chọn màu sắc</option>
				       	 <?php
					        foreach($list_color as $list_color){?>

					          <option value='<?php echo $list_color['color_ID']?>'><?php echo $list_color['color_name']?></option>
					      <?php }?>
				    </select>
				    </div>
				    <div class="form-group">
				   	<label>Giá sản phẩm:<span style="color:red;" id="tb">*</span></label>
					<input required type="text" name="product_price" placeholder="Nhập giá sản phẩm" id="price" class="form-control">
					</div>
					<div class="form-group">
					<label>Giảm giá:<span style="color:red;" id="tb">*</span></label>
					<input required type="text" name="discount" placeholder="Giảm giá sản phẩm" id="price" class="form-control">
					</div>
					<div class="form-group">
					<label>Mô tả sản phẩm:<span style="color:red;" id="tb">*</span></label></br>
					<textarea id="editor1" required cols="50" rows="10" placeholder="Mô tả sản phẩm" name="des" class="form-control"></textarea><br>
					</div>
					<div class="form-group">
					<label>Bảo quản sản phẩm:<span style="color:red;" id="tb">*</span></label></br>
					<textarea id="editor2" required cols="50" rows="10" placeholder="Bảo quản sản phẩm" name="store" class="form-control"></textarea><br>
					</div>
					<div class="form-group">
					<label>Thêm hình ảnh<span style="color:red;" id="tb">
						<?php 
						if (!empty($_GET['msg'])) {
							$msg=unserialize(urldecode($_GET['msg']));
							foreach ($msg as $key => $value) {
								echo $value;
							}
						}

					?>
					</span></label>
					<input type="file" name="images[]" multiple="multiple" id="images" class="form-control">
					</div>
					<button type="submit" id="submit" class="btn btn-default">Thêm</button>
				</form>
				
		</div>
		

<script type="text/javascript">
	$(document).ready(function(){
		$(#submit).click(function(){
			var id=$("#ID").val();
			var name=$("#Name").val();
			var image=$("#image").val();
			var price=$("#price").val();
			var des=$("#editor1").val();
			var store=$("#editor2").val();
			var images=$("#images").val();

			if (id.length=="") {
				$("#tb").text("Vui lòng nhập ID sản phẩm");
				$("#ID").focus();
				return false;
			}
			if (name.length=="") {
				$("#tb").text("Vui lòng nhập tên sản phẩm");
				$("#Name").focus();
				return false;
			}
			if (image.length=="") {
				$("#tb").text("Vui lòng nhập hình sản phẩm");
				$("#image").focus();
				return false;
			}
			if (price.length=="") {
				$("#tb").text("Vui lòng nhập giá sản phẩm");
				$("#price").focus();
				return false;
			}
			if (des.length=="") {
				$("#tb").text("Vui lòng nhập mô tả");
				$("#editor1").focus();
				return false;
			}
			if (store.length=="") {
				$("#tb").text("Vui lòng nhập cách bảo quản");
				$("#editor2").focus();
				return false;
			}
			if (images.length=="") {
				$("#tb").text("Vui lòng thêm hình mô tả sản");
				$("#images").focus();
				return false;
			}
		})
	})
</script>
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