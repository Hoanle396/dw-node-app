<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>

<p style="text-align: center;">Liệt kê bài viết</p>
<table class="table table-striped" style="font-size:13px">
    <thead>
      <tr>
        <th>ID</th>
        <th>Hình</th>
        <th>Tên danh mục</th>
        <th>Tóm tắt</th>
      </tr>
    </thead>
    <tbody>
      <?php $i=0; foreach ($post as $key => $po) {  $i++?>
          <tr>
            <td ><?php echo $i ?></td>
            <td ><img src="<?php echo BASE_URL?>App/View/Admin/post/post_image/<?php echo $po['post_image'] ?>" height="100" width="100"></td>
            <td ><?php echo $po['post_Name'] ?></td>
            <td ><?php echo $po['post_summary'] ?></td>
            <td><a href="<?php echo BASE_URL?>/Admin/delete_post/<?php echo $po['post_ID'] ?>">Xoá</a> || <a href="<?php echo BASE_URL?>/Admin/edit_post/<?php echo $po['post_ID'] ?>">Cập nhật</a></td>
          </tr>
        <?php } ?>
     
     
       
    </tbody>
</table>