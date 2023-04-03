<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
<h1 style="text-align:center;">Danh sách slide</h1>

				
				<table class="table table-striped">
					<thead>
					<tr>
						<th>ID</th>
						<th>Hình</th>
						<th>Tuỳ biến</th>
					</tr>
					</thead>
					<tbody>
					<?php $i=0; foreach($list_slide as $key=>$slides){ $i++;?>
					<tr>
						<td><?php echo $slides['slider_ID'] ?></td>
						<td><img src="<?php echo BASE_URL ?>App/View/Admin/slider/images/<?php echo $slides['image']?>" height="100" width="100"></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_slide/<?php echo $slides['slider_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_slide/<?php echo $slides['slider_ID']?>">Xoá</a></td>
					</tr>
					<?php }?>
					</tbody>
				</table>
			