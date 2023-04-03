<?php 
	if (!empty($_GET['msg'])) {
		$msg=unserialize(urldecode($_GET['msg']));
		foreach ($msg as $key => $value) {
			echo "<span style=color:blue;font-weight:bold>".$value."</span>";
		}
	}

?>
<h1>Sửa loại sản phẩm</h1>

			<div class="col-md-6">
				
				<?php foreach($brand_by_id as $keys=>$brand_by_id){ ?>
				<form action="<?php echo BASE_URL?>Admin/update_brand/<?php echo $brand_by_id['brand_ID'] ?>" method="POST">
					<div class="form-group">
	    			<label for="email">Tên danh mục:</label></br>
					<select name="category_ID" class="form-control">
						<option>Chọn danh mục</option>
						<?php foreach($list_category as $key=>$list_category){ ?>
						<option <?php if($brand_by_id['category_ID']==$list_category['category_ID']) echo'selected' ?> value="<?php echo $list_category['category_ID']?>"><?php echo $list_category['category_name']?></option>
						<?php }?>
					</select>
					</div>
					<div class="form-group">
	    			<label for="email">Tên loại sản phẩm:</label></br>
					<input required type="text" name="brand_name" placeholder="Nhập loại sản phẩm" value="<?php echo $brand_by_id['brand_Name']?>" class="form-control">
					</div>

					<button type="submit" class="btn btn-default">Sửa</button>
				</form>
			<?php } ?>
			</div>
