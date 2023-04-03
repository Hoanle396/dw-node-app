<?php foreach($order_details as $key=>$order_details){$id=$order_details['order_ID'];$name=$order_details['Name'];}?>
<section class="cart">
      <div class="container">
         <div class="cart-content row" style="text-align: center;">
            <h3 style="color: green; text-transform: uppercase;padding-left: 360px;">Đặt hàng thành công</h3>
            <p style="font-size: 13px; padding-top: 10px">Chào <?php echo $name;?>, đơn hàng của bạn với mã <a id="view-detail-order" href="<?php echo BASE_URL?>index/details_order/<?php echo $id?>" style="text-decoration: underline; color: green"><?php echo $id?></a> đã được đặt thành công.<br>
                Đơn hàng của bạn đã được xác nhận tự động.<br>
                <span style="font-weight: bold">
                    <!--Hiện tại do đang trong Chương trình Sale lớn, đơn hàng của quý khách sẽ gửi chậm hơn so với thời gian dự kiến từ 5-10 ngày. Rất mong quý khách thông cảm vì sự bất tiện này!-->
                    Do tình hình dịch Covid-19 diễn biến phức tạp. IVY moda sử dụng dịch vụ vận chuyển của EMS đều được hoạt động và bưu tá đều đã được tiêm phòng nên anh/ chị yên tâm. Tuy nhiên do hàng dồn nên thời gian nhận hàng có thể lâu hơn 1 chút. Rất mong quý khách thông cảm!
                </span><br>
                <span style="color: red">(Lưu ý: IVY moda sẽ không gọi xác nhận đơn hàng, đơn hàng đươc xử lý tự động và sẽ giao cho bạn trong thời sớm nhất)</span><br>
                Cám ơn <?php echo $name;?> đã tin dùng sản phẩm của IVY moda.<br>
            </p>
            <div class="button_poductDetail">
                <a id="but-view-detail-order" href="<?php echo BASE_URL?>index/details_order/<?php echo $id?>" style="background-color: #fff; color: #000;padding-left: 360px;"><button style="height:30px;width: 200px;">Xem Chi tiết đơn hàng</button></a>
                <a id="but-checkout-continue" href="<?php echo BASE_URL?>"><button style="text-transform: uppercase; width: 180px; background-color: #000; color: #fff;height:30px;width: 200px;">Tiếp tục mua sắm</button></a>
            </div>
                        <p style="padding-top: 20px">
                Mọi thắc mắc quý khách vui lòng liên hệ hotline <span class="lead text-danger" style="color:red; font-weight:bold">0246 662 3434</span> hoặc chat với kênh hỗ trợ trên website để được hỗ trợ nhanh nhất.
            </p>
    </div>
</div>
</section>