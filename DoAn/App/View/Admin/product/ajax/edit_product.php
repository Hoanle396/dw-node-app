<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<script type="text/javascript"  >
         $(document).ready(function(){
            $("#category_ID").click(function(){
                var id1=$("#category_ID").val();
                $.post("<?php echo BASE_URL?>App/View/Admin/product/ajax/data.php",{id1: id1},function(data){
                    $("#brand_ID").html(data);
                })
            })
        })
    </script>
</head>
<body>
<h1 style="text-align:center;">Sửa sản phẩm</h1>
<div class="col-md-6">
				
				<?php foreach($list_product_by_id as $keys=>$list_product_by_id){ ?>
				<form action="<?php echo BASE_URL?>Admin/update_product/<?php echo $list_product_by_id['product_ID']?>" method="POST" enctype="multipart/form-data">
					
					<div class="form-group">
	    			<label for="email">Tên sản phẩm:</label></br>
					<input required type="text" name="product_name" value="<?php echo $list_product_by_id['product_name']?>" class="form-control">
					</div>
					<div class="form-group">
					<label>Hình sản phẩm:<span style="color:red;">*</span></label>
					<p><img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $list_product_by_id['image'] ?>"height="100" width="100"></p>
					<input type="file" name="image" class="form-control">
					</div>
					<div class="form-group">
					<label>Danh mục:<span style="color:red;"  id="tb">*</span></label>
					<select id='category_ID' name="category_ID" class="form-control">
						<option>Chọn loại sản phẩm</option>
				       	 <?php
					        foreach($list_category as $list_category){?>
					          <option <?php if($list_product_by_id['category_ID']==$list_category['category_ID']) echo "Selected"?> value='<?php echo $list_category['category_ID']?>'><?php echo $list_category['category_name']?></option>
					      <?php }?>
				    </select>
				    </div>
				    <div class="form-group">
				    <label>Loại sản phẩm:<span style="color:red;"  id="tb">*</span></label>
				    <select id='brand_ID' name="brand_ID" class="form-control">
						<option value="<?php echo $list_product_by_id['brand_ID']?>"><?php echo $list_product_by_id['brand_Name'] ?></option>
				    </select>
				    </div>
				    <div class="form-group">
				    <label>Màu sản phẩm:<span style="color:red;"  id="tb">*</span></label>
					<select name="color_ID" class="form-control">
						<option>Chọn màu sắc</option>
						<?php foreach($list_color as $key=>$list_color){ ?>
						<option <?php if($list_product_by_id['color_ID']==$list_color['color_ID']) echo'selected' ?> value="<?php echo $list_color['color_ID']?>"><?php echo $list_color['color_name']?></option>
						<?php }?>
					</select>
					</div>
					<div class="form-group">		
					<label>Giá sản phẩm:<span style="color:red;">*</span></label><br>
					<input required type="text" name="product_price" value="<?php echo $list_product_by_id['price']?>" class="form-control">
					</div>	
					<div class="form-group">
					<label>Giảm giá:<span style="color:red;">*</span></label><br>
					<input required type="text" name="discount" value="<?php echo $list_product_by_id['discount']?>" class="form-control"></br>
					</div>
				
					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
			<?php }?>
		</div>
		

<script>
	CKEDITOR.replace('editor1');
</script>