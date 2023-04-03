<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>

				<h1 style="text-align: center;">Danh sách ảnh</h1>
				<table class="table table-striped">
					<thead>
					<tr>
						<th>ID</th>
						<th>ID sản phẩm</th>
						<th>Hình ảnh</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php foreach($list_image as $key=>$list_image){ ?>
					<tr>
						<td><?php echo $list_image['images_ID'] ?></td>
						<td><?php echo $list_image['product_ID'] ?></td>
						<td><img src="<?php echo BASE_URL?>App/View/Admin/product/images/<?php echo $list_image['images'] ?>" height="100" width="100"></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_image/<?php echo $list_image['images_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_image/<?php echo $list_image['images_ID']?>">Xoá</a></td>
					</tr>
					
					<?php }?>
					</tbody>
				</table>