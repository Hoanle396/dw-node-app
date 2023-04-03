<?php 
    $gg=0;
    $score_buy=0;
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
<?php 
    $Name='';
    $Email='';
    $Phone='';
    $Tinh='';
    $Quan='';
    $Phuong='';
    $Address='';
    if(isset($_COOKIE['Name'])&&isset($_COOKIE['Email'])&&isset($_COOKIE['Phone'])&&isset($_COOKIE['Tinh'])&&isset($_COOKIE['Quan'])&&isset($_COOKIE['Phuong'])&&isset($_COOKIE['Address'])){ 
        $Name=$_COOKIE['Name'];
        $Email=$_COOKIE['Email'];
        $Phone=$_COOKIE['Phone'];
        $Tinh=$_COOKIE['Tinh'];
        $Quan=$_COOKIE['Quan'];
        $Phuong=$_COOKIE['Phuong'];
        $Address=$_COOKIE['Address'];
        $ID_Phuong=$_COOKIE['ID_Phuong'];
        $ID_Quan=$_COOKIE['ID_Quan'];
 }?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <script type="text/javascript">
            $(document).ready(function () {
                $("#Tinh").change(function () {
                    var id1 = $("#Tinh").val();
                    $.post("<?php echo BASE_URL?>App/View/ajax/data.php", { id1: id1 }, function (data) {
                        $("#Quan").html(data);
                    });
                });
                $("#Quan").focus(function () {
                    var id2 = $("#Quan").val();
                    $.post("<?php echo BASE_URL?>App/View/ajax/data2.php", { id2: id2 }, function (data) {
                        $("#Phuong").html(data);
                    });
                });
            });
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
        <title></title>
        <script>
            $(document).ready(function () {
                $("#Pass1").hide();
                $("#Pass2").hide();
                $("#hide").click(function () {
                    $("#Pass1").hide();
                    $("#Pass2").hide();
                });
                $("#show").click(function () {
                    $("#Pass1").show();
                    $("#Pass2").show();
                });
            });
            function check(){
                var email=document.forms["checkform"]["email"];
                if (!isEmail(email.value)) {
                    alert("Email không xác định");
                    email.focus();
                    return false;
                }
            }
            function isEmail(email){
                return /^(([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4}))$/.test(email);
            }
        </script>
    </head>
    <body>
        <section class="delivery">
            <div class="container">
                <div class="delivery-top-wrap">
                    <div class="delivery-top">
                        <div class="delivery-top-delivery delivery-top-item">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <div class="delivery-top-adress delivery-top-item">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="delivery-top-payment delivery-top-item">
                            <i class="fas fa-money-check-alt"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <?php 
                    if (!empty($_GET['msg'])) {
                        $msg=unserialize(urldecode($_GET['msg']));
                        foreach ($msg as $key => $value) {
                            echo "<span style=color:blue;font-weight:bold;font-size:20px;margin-top:23px;>".$value."</span>";
                        }
                    }
                ?>
            </div>
            <div class="container">
                <div class="delivery-content row">
                    <div class="delivery-content-left">
                        <p>Vui lòng chọn địa chỉ giao hàng</p>
                        <div class="delivery-content-left-dangnhap row">
                            <i class="fas fa-sign-in-alt"></i>
                            <p>Đăng nhập (Nếu bạn đã có tài khoản của IVY)</p>
                        </div>
                        <div class="delivery-content-left-khachle row">
                            <input checked name="loaikhach" type="radio" id="hide" />
                            <p><span style="font-weight: bold;">Khách lẻ</span> (Nếu bạn không muốn lưu lại thông tin)</p>
                        </div>
                        <div class="delivery-content-left-dangky row">
                            <input name="loaikhach" type="radio" id="show" />
                            <p><span style="font-weight: bold;">Đăng ký</span> (Tạo mới tài khoản với thông tin bên dưới)</p>
                        </div>
                        <form action="<?php echo BASE_URL ?>Admin/order_product" method="POST" autocomplete="off">
                            <div class="delivery-content-left-input-top row">
                                <div class="delivery-content-left-input-top-item">
                                    <label>Họ tên <span style="color: red;">*</span></label>
                                    <input  required  type="text" name="Name" value="<?php echo $Name?>" />
                                </div>
                                <div class="delivery-content-left-input-top-item">
                                    <label>Điện thoại <span style="color: red;">*</span></label>
                                    <input  required  type="text" name="Phone"value="<?php echo $Phone?>"/>
                                </div>
                                <div class="delivery-content-left-input-top-item">
                                    <label>Email <span style="color: red;">*</span></label>
                                    <input  required  type="text" name="Email" value="<?php echo $Email?>"/>
                                </div>
                                <div class="delivery-content-left-input-top-item">
                                    <label >Tỉnh/Tp <span style="color: red;">*</span></label>
                                    <select id="Tinh" name="Tinh" style="width: 100%; height: 35px; border: 1px solid #dddddd;">
                                        <option>Tỉnh/Tp</option>
                                        <?php foreach($list_city as $key=>$list_city){?>
                                        <option <?php if($list_city['city_name']==$Tinh) echo 'selected'?> value="<?php echo $list_city['city_ID']?>"><?php echo $list_city['city_name'];?></option>
                                        <?php }?>
                                    </select>
                                </div>
                                <div class="delivery-content-left-input-top-item">
                                    <label for="">Quận/Huyện <span style="color: red;">*</span></label>
                                    <select id="Quan" name="Quan" style="width: 100%; height: 35px; border: 1px solid #dddddd;">
                                        <option selected>Quận/Huyện</option>
                                         <option value="<?php echo $ID_Quan?>"><?php echo $Quan?></option>
                                    </select>
                                </div>
                                <div class="delivery-content-left-input-top-item">
                                    <label for="">Phường/Xã<span style="color: red;">*</span></label>
                                    <select required id="Phuong" name="Phuong" style="width: 100%; height: 35px; border: 1px solid #dddddd;">
                                        <option>Phường/Xã</option>
                                        <option value="<?php echo $ID_Phuong?>"><?php echo $Phuong?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="delivery-content-left-input-bottom">
                                <label for="">Địa chỉ <span style="color: red;">*</span></label>
                                <input required type="text" name="DiaChi" value="<?php echo $Address?>" />
                            </div>
                            <div class="delivery-content-left-input-top row">
                                <div class="delivery-content-left-input-top-item row" id="Pass1">
                                    <label for="">Mật khẩu <span style="color: red;">*</span></label>
                                    <input type="password" name="pass1" />
                                </div>
                                <div class="delivery-content-left-input-top-item" id="Pass2">
                                    <label for="">Nhập lại mật khẩu <span style="color: red;">*</span></label>
                                    <input type="password" name="pass2" />
                                </div>
                            </div>
                            <div class="delivery-content-left-button row">
                                <a href="<?php echo BASE_URL?>index/cart">
                                    <span>«</span>
                                    <p>Quay lại giỏ hàng</p>
                                </a>
                                <button type="submit" onclick="return check()"><p>THANH TOÁN</p></button>
                            </div>
                        </form>
                    </div>
                    <div class="delivery-content-right">
                        <table>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <th>Giảm giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                            </tr>
                            <?php if(isset($_SESSION['cart'])){?>
                            <?php 
                        $total=0;
                        $subtotal=0;
                        foreach($_SESSION['cart'] as $key =>$value){ $subtotal=$value['price']*$value['quantity']; $total+=$subtotal; ?>
                            <tr>
                                <td><?php echo $value['product_name'] ?></td>
                                <td><?php if($value['discound']==1) echo 0;else echo ($value['discound']).'%' ?></td>
                                <td><?php echo $value['quantity'] ?></td>
                                <td><?php echo number_format($subtotal,0,',','.').'đ' ?></td>
                            </tr>
                            <?php } ?>
                            <tr>
                                <td style="font-weight: bold;" colspan="3">Giảm giá thành viên:</td>
                                <td style="font-weight: bold;">
                                    <p><?php echo ($gg*100).'%' ?></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold;" colspan="3">Tổng</td>
                                <td style="font-weight: bold;"><?php echo number_format($total-($total*$gg),0,',','.').'đ' ?></td>
                            </tr>
                           
                            <tr>
                                <td style="font-weight: bold;" colspan="3">Phí vận chuyển</td>
                                <td style="font-weight: bold;">
                                    <p><?php if($total>2000000){$vc=0; echo number_format($vc,0,',','.').'đ';
                                        }else{
                                        $vc=18000; echo number_format($vc,0,',','.').'đ';
                                    } ?></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold;" colspan="3">Tổng tiền hàng</td>
                                <td style="font-weight: bold;"><?php echo number_format($total-($total*$gg)+$vc,0,',','.').'đ' ?></td>
                            </tr>
                            <?php }else {?>
                            <tr>
                                <td colspan="4">KHÔNG CÓ SẢN PHẨM ĐỂ THANH TOÁN</td>
                            </tr>
                            <?php }?>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
