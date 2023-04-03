<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>

				<h1 style="text-align:center;">Danh sách danh mục</h1>
				<table class="table table-striped">
					<thead>
					<tr>
						<th>ID</th>
						<th>ID sản phẩm</th>
						<th>Mô tả</th>
						<th>Bảo quản</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php foreach($list_description as $key=>$list_description){ ?>
					<tr>
						<td><?php echo $list_description['des_ID'] ?></td>
						<td><?php echo $list_description['product_ID'] ?></td>
						<td><?php echo $list_description['description'] ?></td>
						<td><?php echo $list_description['store'] ?></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_des/<?php echo $list_description['des_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_des/<?php echo $list_description['des_ID']?>">Xoá</a></td>
					</tr>
					
					<?php }?>
					</tbody>
				</table>