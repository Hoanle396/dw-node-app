<?php 
  if (!empty($_GET['msg'])) {
    $msg=unserialize(urldecode($_GET['msg']));
    foreach ($msg as $key => $value) {
      echo "<span style=color:blue;font-weight: bold;>".$value."</span>";
    }
  }

?>

        <h1 style="text-align:center;">Danh sách đơn hàng</h1>
        <table class="table table-striped">
          <thead>
          <tr>
            <th>ID đơn hàng</th>
            <th>Ngày đặt</th>
            <th>Trạng thái</th>
          </tr>
          </thead>
          <tbody>
            <?php foreach ($order as $key => $order) {  ?>
          <tr>
            <td ><?php echo $order['order_ID'] ?></td>
            <td ><?php echo $order['order_Date'] ?></td>
            <td ><?php if($order['Status']==0) echo "Đơn hàng mới";else if($order['Status']==1) echo "Đã xử lý";else echo"Đã huỷ"?></td>
            <td><a href="<?php echo BASE_URL?>/Admin/order_details/<?php echo $order['order_ID'] ?>">Chi tiết</a> ||<a href="<?php echo BASE_URL?>/Admin/order_delete/<?php echo $order['order_ID'] ?>">Xoá</a></td>
          </tr>
        <?php } ?>
      </tbody>
        </table>