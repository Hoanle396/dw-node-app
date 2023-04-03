<style type="text/css">
  table{
    font-size: 12px;
  }
</style>
        <table class="table table-striped">
          <thead>
          <tr>
            <th>ID đơn hàng</th>
            <th>Tên người đặt</th>
            <th>Số điện thoại</th>
            <th>Địa chỉ</th>
          </tr>
          </thead>
          <tbody>
          <?php foreach($order_info as $key=>$order_info){?>
          <tr>
            <td><?php echo $order_info['order_ID'] ?></td>
            <td><?php echo $order_info['Name'] ?></td>
            <td><?php echo $order_info['Phone'] ?></td>
            <td><?php echo $order_info['Address'] ?></td>
          </tr>
        <?php }?>
        </tbody>
        </table>

        <table class="table table-striped">
          <thead>
         <tr>
            <th>ID sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Hình</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
            <th>Giảm giá</th>
            <th>Thành tiền</th>
        </tr>
      </thead>
      <tbody>
          <?php $total=0; foreach($order_details as $key=>$order_details){?>
          <tr>
              <td ><?php echo $order_details['product_ID'] ?></td>
              <td ><?php echo $order_details['product_name'] ?></td>
              <td ><img src="<?php echo BASE_URL ?>App/View/Admin/product/image_product/<?php echo $order_details['image'] ?>" style="height: 100px;width: 100px;"></td>
              <td ><?php echo $order_details['quantity'];?></td>
              <td ><?php echo number_format($order_details['price'],0,',','.').'đ'?></td>
              <td ><?php echo $order_details['discount'].'%'?></td>
              <td ><?php echo number_format(($order_details['price']*(1-($order_details['discount']/100)))*$order_details['quantity'],0,',','.').'đ'?></td>
          </tr>
        <?php $total+=($order_details['price']*(1-($order_details['discount']/100)))*$order_details['quantity'];$order_ID=$order_details['order_ID']; }?>
        </tbody>
        <form method="POST" action="<?php echo BASE_URL ?>Admin/order_confirm/<?php echo $order_ID ?>">
        <tr>
          <td colspan="6" align="right">Tổng tiền: <?php echo number_format($total,0,',','.').'đ' ?></td></br>
          <td><input type="submit" name="update_order" value="Đã xử lý" style="width: 80px;height: 40px;" class="btn btn-success"></td>
        </tr>
        </form>

        </table>
      
    