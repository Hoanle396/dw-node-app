<section class="cart">
     <div class="container">
         <div class="cart-top-wrap">
            <div class="cart-top">
                <div class="cart-top-cart cart-top-item">
                   <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="cart-top-adress cart-top-item">
                   <i class="fas fa-map-marker-alt "></i>
                </div>
                <div class="cart-top-payment cart-top-item">
                   <i class="fas fa-money-check-alt"></i>
                </div>
            </div>
         </div>
     </div>
     <div class="container">
         <div class="cart-content row">
             <div class="cart-content-left">
                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Màu</th>
                        <th>Size</th>
                        <th>SL</th>
                        <th>Thành tiền</th>
                        <th>Xóa</th>
                    </tr>
                    <?php if(isset($_SESSION['cart'])){ ?>
                        <form action="<?php echo BASE_URL ?>index/updategiohang" method="POST">
                            <?php 
                                $subtotal=0;
                                foreach($_SESSION['cart'] as $key =>$value){ 
                                    $subtotal=$value['price']*$value['quantity']; 
                                     ?>
                            <tr>
                                <td><img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $value['image']?>"></td>
                                <td><p><?php echo $value['product_name']?></p></td>
                                <td><img src="<?php echo BASE_URL?>App/View/Admin/color/image_color/<?php echo $value['color']?>"></td>
                                <td style="font-size: 16px"><?php echo $value['size_name']?></td>
                                <td style="font-size: 16px"><?php echo $value['quantity']?></td>
                                <td style="font-size: 16px"><?php echo number_format($subtotal,0,',','.').'đ' ?></td>
                                <td><button value="<?php echo $value['product_ID'] ?>" type="submit" name="delete_cart">X</button></td>
                            </tr>
                        </form>
                        <?php }?>
                    <?php }else{ ?>
                            <tr>
                                <td colspan="6">GIỎ HÀNG TRỐNG</td>
                            </tr>
                    <?php }?>
                            
                </table>
             </div>

             <div class="cart-content-right">
                <?php if(isset($_SESSION['cart'])){ ?>
                    <?php 
                        $count=0;
                        $total=0;
                        $subtotal=0;
                        foreach($_SESSION['cart'] as $key =>$value){
                            $subtotal=$value['price']*$value['quantity']; 
                            $total+=$subtotal;
                            $count++;
                        } ?>
                 <table>
                     <tr>
                         <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                     </tr>
                     <tr>
                         <td>TỔNG SẢN PHẨM</td>
                         <td><?php echo $count?></td>
                     </tr>
                     <tr>
                         <td>TỔNG TIỀN HÀNG</td>
                         <td><?php echo number_format($total,0,',','.').'đ' ?></td>
                     </tr>
                     <tr>
                         <td>PHÍ VẬN CHUYỂN</td>
                         <td><p style="color: black; font-weight: bold;">
                            <?php if($total>2000000){$vc=0; echo number_format($vc,0,',','.').'đ';
                                    }else{
                                        $vc=18000; echo number_format($vc,0,',','.').'đ';
                                    } ?></p></td>
                     </tr>
                     <tr>
                         <td>TẠM TÍNH</td>
                         <td><p style="color: black; font-weight: bold;"><?php echo number_format($total+$vc,0,',','.').'đ' ?></p></td>
                     </tr>
                 </table>
                
            
                
                 <div class="cart-content-right-text">
                     <p>Bạn sẽ được miễn phí ship khi đơn hàng của bạn có tổng giá trị trên 2.000.000 đ</p>
                     <p style="color: red; font-weight: bold;">
                        <?php if($total<2000000){ ?>
                        Mua thêm <span style="font-size: 18px;"><?php  echo number_format(2000000-$total,0,',','.').'đ';?></span> để được miễn phí SHIP
                        <?php }else{?>
                            <span style="font-size: 18px;">Bạn được miễn phí giao hàng.</span>
                        <?php }?>
                     </p>
                 </div>
            <?php }?>
                 <div class="cart-content-right-button">
                     <button><a href="<?php echo BASE_URL?>" style="color:black;">TIẾP TỤC MUA SẮM</a></button>
                     <button><a href="<?php echo BASE_URL?>index/order" style="color:white;">THANH TOÁN</a></button>
                 </div>
                 <div class="cart-content-right-dangnhap">
                     <p>TÀI KHOẢN IVY</p><br>
                     <p>Hãy <a href="<?php echo BASE_URL?>index/login">Đăng nhập</a> tài khoản của bạn để tích điểm thành viên</p>
            

                 </div>
            </div>
         </div>
     </div>
 </section>