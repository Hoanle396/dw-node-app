<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
<h1 style="text-align: center;">Danh sách màu</h1>
				<table class="table table-striped">
					<thead>
					<tr>
						<th>STT</th>
						<th>ID</th>
						<th>Tên màu</th>
						<th>Hình màu</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php $i=0; foreach($list_color as $key=>$list_color){ $i++;?>
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $list_color['color_ID'] ?></td>
						<td><?php echo $list_color['color_name'] ?></td>
						<td><img src="<?php echo BASE_URL?>App/View/Admin/color/image_color/<?php echo $list_color['image_color'] ?>" height="100" width="100"></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_color/<?php echo $list_color['color_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_color/<?php echo $list_color['color_ID']?>">Xoá</a></td>
					</tr>
				<?php }?>
				</tbody>
				</table>