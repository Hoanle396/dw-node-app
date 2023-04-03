<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
			<form style="float: right;width: 400px;" action="<?php echo BASE_URL?>Admin/Search" method="POST">
				<input type="text" name="Search" class="form-control" style="float:left;width: 300px;">
				<input type="submit" name="" value="Tìm"  class="btn btn-success" style="float:left;">
			</form>
				<h1 style="text-align: center;">Danh sách danh mục</h1>

				<table class="table table-striped">
					<thead>
					<tr>
						<th>ID</th>
						<th>Tên sản phẩm</th>
						<th>Hình</th>
						<th>Loại sản phẩm</th>
						<th>Màu</th>
						<th>Giá sản phẩm</th>
						<th>Giảm giá</th>
						<th>Mô tả</th>				
						<th>Xem thêm hình</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php foreach($list_product as $key=>$list_product){ ?>
					<tr>
						<td><?php echo $list_product['product_ID'] ?></td>
						<td><?php echo $list_product['product_name'] ?></td>
						<td><img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $list_product['image'] ?>"height="100" width="100"></td>
						<td><?php echo $list_product['brand_Name'] ?></td>
						<td><img src="<?php echo BASE_URL?>App/View/Admin/color/image_color/<?php echo $list_product['image_color'] ?>"height="100" width="100"></td>
						<td><?php echo $list_product['price'] ?></td>
						<td><?php echo $list_product['discount'].'%' ?></td>
						<td><a href="<?php echo BASE_URL?>Admin/list_des/<?php echo $list_product['product_ID']?>">Xem thêm</a></td>
						<td><a href="<?php echo BASE_URL?>Admin/list_image/<?php echo $list_product['product_ID']?>">Xem thêm</a></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_product/<?php echo $list_product['product_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_product/<?php echo $list_product['product_ID']?>">Xoá</a></td>
					</tr>
				<?php }?>
				</tbody>
				</table>