<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
<h1 style="text-align:center;">Danh sách size</h1>

				
				<table class="table table-striped">
					<thead>
					<tr>
						<th>ID</th>
						<th>Brand_ID</th>
						<th>Size</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php $i=0; foreach($list_size as $key=>$list_size){ $i++;?>
					<tr>
						<td><?php echo $list_size['size_ID'] ?></td>
						<td><?php echo $list_size['brand_ID'] ?></td>
						<td><?php echo $list_size['size'] ?></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_size/<?php echo $list_size['size_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_size/<?php echo $list_size['size_ID']?>">Xoá</a></td>
					</tr>
					<?php }?>
					</tbody>
				</table>
			