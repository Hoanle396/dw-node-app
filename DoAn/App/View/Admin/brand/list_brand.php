<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>
<h1 style="text-align: center;">Danh sách loại sản phẩm</h1>
<table class="table table-striped">
    <thead>
        <tr>
            <th>STT</th>
            <th>ID</th>
            <th>Loại sản phẩm</th>
            <th>Danh Mục</th>
            <th>Tuỳ biến</th>
        </tr>
    </thead>
    <tbody>
        <?php $i=0; foreach($list_brand as $key=>$list_brand){ $i++;?>
        <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $list_brand['brand_ID'] ?></td>
            <td><?php echo $list_brand['brand_Name'] ?></td>
            <td><?php echo $list_brand['category_name'] ?></td>
            <td><a href="<?php echo BASE_URL?>Admin/edit_brand/<?php echo $list_brand['brand_ID']?>">Sửa</a>||<a href="<?php echo BASE_URL?>Admin/delete_brand/<?php echo $list_brand['brand_ID']?>">Xoá</a></td>
        </tr>
        <?php }?>
    </tbody>
</table>
