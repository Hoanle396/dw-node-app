<?php
    foreach ($order as $key => $order) {
        $order_Date=$order['order_Date'];
        $status=$order['Status'];
        if($order['order_cancel']==""){
            $order_Cancel="";
        }else{
             $order_Cancel=$order['order_cancel'];
        }
    }
    foreach ($order_details as $key => $order_details) {
       $order_ID=$order_details['order_ID'];
       $Name=$order_details['Name'];
       $address=$order_details['Address'];
       $quantity=$order_details['quantity'];
       $phone=$order_details['Phone'];
    }
    
?>
<?php 
    $gg=0;
    if (Session::get("customer")) {
        
        foreach ($score as $key => $score) {
            $score_buy=$score['score'];
        }

        if($score_buy>15 && $score_buy<25){
            $gg=0.05;
        }
        else if ($score_buy>25 && $score_buy < 35) {
            $gg=0.1;
        }
        else if($score_buy > 35){
            $gg=0.2;
        }else{
            $gg=0;
        }

   }
?>
<style type="text/css">
    .circle{
        text-align:center;
        color: #777777 ;
        border: 0;
        font-size: 20px;
    }
    .text{
        color: #777777  ;
        font-size: 20px;
    }
    p{
        font-size: 14px;
    }
</style>
<script>
$(document).ready(function(){
  $("#button").click(function(){
    $("#button").hide();
  });
});
</script>
<section class="cart" style="width: 80%;margin: 0 auto;font-weight: normal;">
    <div style="height:200px">
        <h3 style="text-align:center;">THÔNG TIN ĐƠN HÀNG</h3>
        <h5 style="padding-top:80px;"><u>ĐƠN HÀNG: <?php echo $order_ID?></u></h5>
    </div>
    <div style="height:100px;display:flex;">
         <?php if($status==2){ ?>
            <div>
                <div class="circle " style=""><i class="fa fa-file-text" aria-hidden="true"style="color:#1E90FF;"></i></div>
                <div class="text">
                    Đơn hàng đã đặt<br>
                    <small ><?php echo $order_Date?></small>
                </div>
            </div>
            ---------------------------------------
            <div>
                <div class="circle "><i class="fa fa-recycle" aria-hidden="true" style="color:#1E90FF;"></i></div>
                <div class="text">
                    Đã hủy<br>
                    <small><?php echo $order_Cancel?></small>
                </div>
            </div>
        <?php }else{ ?>
            <div>
                <div class="circle " style=""><i class="fa fa-file-text" aria-hidden="true"style="color:#1E90FF;"></i></div>
                <div class="text">
                    Đơn hàng đã đặt<br>
                    <small ><?php echo $order_Date?></small>
                </div>
            </div>
            ---------

            <div>
                <div class="circle "><i class="fa fa-refresh" aria-hidden="true" style="color:#1E90FF;"></i></div>
                <div class="text">
                    Đang xử lý<br>
                    <small ></small>
                </div>
            </div>
            --------
            <div>
                <div class="circle "><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                <div class="text">
                    Chờ giao vận<br>
                    <small></small>
                </div>
            </div>
            --------
            <div>
                <div class="circle "><i class="fa fa-motorcycle" aria-hidden="true"></i></div>
                <div class="text">
                    Đã gửi<br>
                    <small></small>
                </div>
            </div>
            --------
            <div>
                <div class="circle "><i class="fa fa-download" aria-hidden="true"></i></div>
                <div class="text">
                    Đã nhận hàng<br>
                    <small></small>
                </div>
            </div>
            --------
            <div>
                <div class="circle "><i class="fa fa-recycle" aria-hidden="true"></i></div>
                <div class="text">
                    Đã hủy<br>
                    <small></small>
                </div>
            </div>
        <?php };?>
        
    </div>
    <div>
        <p><b>Thông tin đơn hàng:</b><?php echo $order_Date?></p></br>
        <p>Trạng thái đơn hàng:</b><span style="color:#F00"><?php if ($status==2) echo "Đã huỷ";else{ if($status==0) echo "Đang xử lý";else echo "Đã xử lý"; }?></span></br>
        <button id="button" style="width: 60px;height:30px;background-color: #CC0000;border: 0px solid;float: right;margin-right: 76px;"><a href="<?php echo BASE_URL?>index/destroy/<?php echo $order_ID?>" style="text-decoration: none;color: white;">Huỷ đơn</a></button></br>
        <div style="width: 86%; margin: 0 auto;height: 100px;background-color: #CCCCCC;margin-top: 14px;">
            <div style="width: 30%;height: 50px;float: left;">
                <p><b>Địa chỉ nhận hàng:</b></p>
                <p style="padding-top:12px;">Tên người nhận: <?php echo $Name?></p>
                <p>Địa chỉ: <?php echo $address ?></p>
                <p>Điện thoại: <?php echo $phone ?></p>
            </div>
            <div style="width: 50%;height: 50px;float: right;">
                <p><b>Phương thức vận chuyển:</b></p>
                <p>Chuyển phát nhanh</p>
            </div>
        </div>
    </div>
    <div style="margin-top:23px;width: 86%; margin: 0 auto;max-height: 1000px;background-color: white;margin-top: 14px;border: 2px solid #CCCCCC;">
        <div style="background-color: #CCCCCC;height: 60px;">
            <p style="font-size: 30px;">Sản phẩm đã mua</p>
            <hr width="95%" style="margin-left: 23px;margin-top: 10px;">
        </div>
        
       
        <div>
            <table style="text-align: left;">
                <tr>
                    <th style="width: 80%;font-size: 14px;">Tên sản phẩm</th>
                    <th style="width: 10%; font-size: 14px;">Giá</th>
                    <th style="width: 20%;font-size: 14px;">Giảm giá</th>
                    <th style="width: 20%;font-size: 14px;">Số lượng</th>
                    <th style="width: 20%;font-size: 14px;">Tạm tính</th>

                </tr>
                 <?php $total=0; foreach ($list_order_product as $key => $value) { 
                    if($value['discount']==0) $dc=1;else $dc=1-$value['discount']/100;
                    ?>
                <tr>
                   
                   
                    <td style="font-size: 18px;"><?php echo $value['product_name']?></td>

                    <td style="font-size: 18px;"><?php echo number_format($value['price'],0,',','.').'đ' ?></td>
                     <td style="font-size: 18px;"><?php echo ($value['discount']).'%' ?></td>
                    <td style="font-size: 18px;"><?php echo $value['quantity']?></td>
                    <td style="font-size: 18px;"><?php echo number_format($value['price']*$value['quantity']*$dc,0,',','.').'đ'?></td>
                    
                </tr>
                <?php $total+=$value['quantity']*$value['price']*$dc;
                 } ?>
                <tr>
                    <td colspan="3" align="right" style="font-size: 18px;">Giảm giá thành viên:</td>
                    <td style="font-size: 18px;">
                       <?php echo ($gg*100).'%' ?>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right" style="font-size: 18px;">Tạm tính:</td>
                    <td style="font-size: 18px;"><?php echo number_format($total-($total*$gg),0,',','.').'đ'?></td>
                </tr>
                <tr>
                    <td colspan="3" align="right" style="font-size: 18px;">Phí vận chuyển:</td>
                    <td style="font-size: 18px;"><?php if($total>2000000){
                        $vc=0; echo number_format($vc,0,',','.').'đ';
                        }else{
                            $vc=18000; echo number_format($vc,0,',','.').'đ';
                        }?></td>
                </tr>
                <tr>
                    <th colspan="3" align="right" style="font-size: 18px;">Tổng cộng:</th>
                    <td style="font-size: 18px;"><?php echo number_format($total-($total*$gg)+$vc,0,',','.').'đ' ?></td>
                </tr>
            </table>
        </div>
    </div>
    
</section>