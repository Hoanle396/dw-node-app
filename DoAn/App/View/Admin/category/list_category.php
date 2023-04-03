<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
<h1 style="text-align: center;">Danh sách danh mục</h1>
		 
				<table class="table table-striped">
					<thead>	
					<tr>
						<th>STT</th>
						<th>ID</th>
						<th>Danh mục</th>
						<th>Tuỳ biến</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=0; foreach($list_category as $key=>$list_category){ $i++;?>
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $list_category['category_ID'] ?></td>
						<td><?php echo $list_category['category_name'] ?></td>
						<td><a href="<?php echo BASE_URL?>Admin/edit_category/<?php echo $list_category['category_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_category/<?php echo $list_category['category_ID']?>" >Xoá</a></td>
					</tr>
				<?php }?>
				</tbody>
				</table>