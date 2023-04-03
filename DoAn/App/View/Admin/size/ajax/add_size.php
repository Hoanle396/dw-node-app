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
	<h1 style="text-align:center;">Thêm Size</h1>
	<div class="col-md-6">
				
				<form action="<?php echo BASE_URL ?>Admin/insert_size" method="POST">
					<div class="form-group">
					<label>Danh mục:<span style="color:red;">*</span></label></br>
					<select id='category_ID' name="color_ID" class="form-control">
				    	<option>Chọn danh mục</option>
				       	  <?php
					        foreach($list_category as $list_category){?>

					          <option value='<?php echo $list_category['category_ID']?>'><?php echo $list_category['category_name']?></option>
					      <?php }?>
				    </select>
					</div>
					<div class="form-group">
					<label>Loại sản phẩm:<span style="color:red;">*</span></label></br>
				    <select id="brand_ID" name="brand_ID" class="form-control">
				    	<option>Chọn loại sản phẩm</option>
				    </select>
					</div>
					<div class="form-group">
					<label>Kích cỡ:<span style="color:red;">*</span></label></br>
					<input required type="text" name="size_name" placeholder="Nhập kích cỡ" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Thêm</button>
				</form>
		</div>

</body>
</html>