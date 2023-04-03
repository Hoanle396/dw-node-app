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
<h1 style="text-align:center;">Sửa kích cỡ</h1>
<div class="col-md-6">
				
				<?php foreach($size_by_id as $key=>$size_by_id) {?>

				<form action="<?php echo BASE_URL?>Admin/update_size/<?php echo $size_by_id['size_ID']?>" method="POST">
					<div class="form-group">
	    			<label for="email">Danh mục:</label></br>
					<select id='category_ID' name="color_ID" class="form-control">
				    	<option selected>Chọn danh mục</option>
				       	  <?php
					        foreach($list_category as $list_category){?>
					          <option <?php if($size_by_id['category_ID']==$list_category['category_ID']) echo "Selected"?> value='<?php echo $list_category['category_ID']?>'><?php echo $list_category['category_name']?></option>
					      <?php }?>
				    </select>
					</div>
					<div class="form-group">
	    			<label for="email">Loại sản phẩm:</label></br>
				    <select id='brand_ID' name="brand_ID" class="form-control">
				    	<option value="<?php echo $size_by_id['brand_ID']?>"><?php echo $size_by_id['brand_Name'] ?></option>
				    </select>
					</div>
					<div class="form-group">
	    			<label for="email">Tên Kích cỡ:</label></br>
					<input required type="text" name="size_name" placeholder="Nhập tên danh mục" value="<?php echo $size_by_id['size'] ?>" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
				<?php }?>
		</div>
		
	</section>

</body>
</html>