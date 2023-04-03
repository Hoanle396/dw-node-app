 <?php 
    $ho='';
    $ten='';
    $Email='';
    $Phone='';
    $Date='';
    $Sex='';
    $Tinh='';
    $Quan='';
    $Phuong='';
    $Address='';
    if(isset($_COOKIE['Ho'])&&isset($_COOKIE['Ten'])&&isset($_COOKIE['Email'])&&isset($_COOKIE['Phone'])&&isset($_COOKIE['Date'])&&isset($_COOKIE['Sex'])&&isset($_COOKIE['Tinh'])&&isset($_COOKIE['Quan'])&&isset($_COOKIE['Phuong'])&&isset($_COOKIE['Address'])){ 
        $ho=$_COOKIE['Ho'];
        $ten=$_COOKIE['Ten'];
        $Email=$_COOKIE['Email'];
        $Phone=$_COOKIE['Phone'];
        $Date=$_COOKIE['Date'];
        $Sex=$_COOKIE['Sex'];
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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
      <script type="text/javascript">
        function check(){

            var email=document.forms["checkform"]["email"];
            if (!isEmail(email.value)) {
                alert("Email không xác định");
                email.focus();
                return false;
            }
            var sdt=document.forms["checkform"]["phone"];
            if (!isPhone(sdt.value)) {
                alert("Số điện thoại không xác định");
                sdt.focus();
                return false;
            }    
            var dongy=document.forms["checkform"]["dongy"];
            if (dongy.checked) {
               return true;
            }
            else{
                alert("Vui lòng đồng ý các điều khoản của chúng tôi");
                dongy.focus();
                return false;
            }
        }
        function isEmail(email){
            return /^(([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4}))$/.test(email);
        }
        function isPhone(sdt){
            return /^([0]+([0-9]{9}))$/.test(sdt);
        }


    </script>

    <script type="text/javascript"  >
         $(document).ready(function(){
            $("#Tinh").change(function(){
                var id1=$("#Tinh").val();
                $.post("<?php echo BASE_URL?>App/View/ajax/data.php",{id1: id1},function(data){
                    $("#Quan").html(data);
                })
            })
            $("#Quan").change(function(){
                var id2=$("#Quan").val();
                $.post("<?php echo BASE_URL?>App/View/ajax/data2.php",{id2: id2},function(data){
                    $("#Phuong").html(data);
                })
            })
        })
    </script>
  
</head>
<body>
    <style type="text/css">
    p{
        font-size: 14px;
    }
    #td{
        height: 30px;
        padding: 0 10px;
        width: 250px;
        outline: none;
        border: 1px solid #ccc;
        
    }
    select{
        height: 30px;
        padding: 0 10px;
        width: 250px;
        outline: none;
        border: 1px solid #ccc;
    }
    th{
       text-align: left; 
    }
    a{
        text-decoration: none;
        color: black;
    }
</style>
<section class="cart" style="width: 90%;margin: 0 auto;font-weight: normal;font-size: 23px;height: 750px;">
    <div style="text-align:center;">
        <h3>Đăng kí</h3>
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
    <form action="<?php echo BASE_URL?>index/register_customer" name="checkform" method="POST" autocomplete="off">
    <div style="height:300px;margin-top: 30px;">
        <div style="width: 49%; float: left;max-height: 400px;">
            <h5>Thông tin khách hàng:</h5><br>
            <div>
                    <table cellspacing="8">
                        <tr>
                            <th style="font-size: 14px;">Họ<span style="color:red;">*</span>:</th>
                            <th style="font-size: 14px;">Tên<span style="color:red;">*</span>:</th>
                        </tr>
                        <tr>
                            <td><input required type="text" name="ho" placeholder="Họ..........." id="td" value="<?php echo $ho?>"></td>
                            <td><input required type="text" name="ten" placeholder="Tên.........." id="td"
                            value="<?php echo $ten?>"></td>
                        </tr>
                        <tr>
                            <th style="font-size: 14px;">Email<span style="color:red;">*</span>:</th>
                            <th style="font-size: 14px;">Điện thoại<span style="color:red;">*</span>:</th>
                        </tr>
                        <tr>
                            <td><input required type="text" name="email" placeholder="Email..........." id="td" value="<?php echo $Email?>"></td>
                            <td><input required type="text" name="phone" placeholder="Điện thoại.........." id="td" value="<?php echo $Phone?>"></td>
                        </tr>
                        <tr>
                            <th style="font-size: 14px;">Ngày sinh<span style="color:red;">*</span>:</th>
                            <th style="font-size: 14px;">Giới tính<span style="color:red;">*</span>:</th>
                        </tr>
                        <tr>
                            <td>
                                <?php if($Date ==""){?>
                                <input required type="date" name="date" placeholder="Ngày sinh..........." id="td">
                                <?php }else{?>
                                <input type="text" name="date" value="<?php echo $Date ?>" id="td">
                                <?php }?>
                            </td>
                            <td><select name="sex">
                                <?php if ($Sex=='Nam') {?>
                                    <option value="Nam" selected>Nam</option>
                                    <option value="Nữ">Nữ</option>
                                <?php }else{?>
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ" selected>Nữ</option>
                                <?php }?>
                                    
                            </select></td>
                        </tr>
                         <tr>
                            <th style="font-size: 14px;">Tỉnh/TP<span style="color:red;">*</span>:</th>
                            <th style="font-size: 14px;">Quận/Huyện<span style="color:red;">*</span>:</th>
                        </tr>
                        <tr>
                            <td>
                                <select required id="Tinh" name="Tinh" style="width: 100%;height: 35px;border: 1px solid #dddddd;" >
                                    <option selected>Tỉnh/Tp</option>
                                    <?php foreach($list_city as $key=>$list_city){ ?>
                                        <option <?php if($list_city['city_name']==$Tinh) echo 'selected'?> value="<?php echo $list_city['city_ID']?>"><?php echo $list_city['city_name'];?></option>
                                    <?php }?>
                                </select>
                            </td>
                            <td>
                                <select  id="Quan" name="Quan" style="width: 100%;height: 35px;border: 1px solid #dddddd;" >
                                                                    <option selected value="2">lien chieu</option>
                                    <option selected value="<?php echo $ID_Quan?>"><?php echo $Quan?></option>
                                </select>
                            </td>
                        </tr>
                         <tr>
                            <th style="font-size: 14px;">Phường/Xã<span style="color:red;">*</span>:</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>
                                <select  id="Phuong" name="Phuong" style="width: 207%;height: 35px;border: 1px solid #dddddd;" >
                                                                    <option selected value="3">Hoa hiep</option>

                                    <option selected value="<?php echo $ID_Phuong?>"><?php echo $Phuong?></option>
                                </select>
                            </td>
                        </tr>
                         <tr>
                            <th style="font-size: 14px;">Địa chỉ<span style="color:red;">*</span>:</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td><textarea style="width: 207%;" rows="8" name="DiaChi" ><?php echo $Address?></textarea></td>
                        </tr>
                    </table>
            </div>
        </div>
        <div style="width: 49%; float: left;margin-left: 23px;">
            <h5>Thông tin mật khẩu:</h5><br>
                <table cellspacing="8">
                    <tr>
                        <th style="font-size: 14px;">Mật khẩu<span style="color:red;">*</span>:</th>
                        
                    </tr>
                    <tr>
                        <td><input required type="Password" name="pass1" placeholder="Mật khẩu..........." id="td" ></td>
                        
                    </tr>
                    <tr>
                        <th style="font-size: 14px;">Nhập lại mật khẩu<span style="color:red;">*</span>:</th>
                    </tr>
                    <tr>
                        <td><input required type="Password" name="pass2" placeholder="Nhập lại mật khẩu.." id="td"></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="dongy" value="1"><span style="font-size:14px">Tôi đồng ý với các điều khoản</span><span style="color:red;">*</span></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="" id="td" value="Đăng kí" style="background-color: black;color: white;margin-top: 23px;" onclick="return check()"></td>
                    </tr>
                </table>
               
                
           
        </div>
    </div>
    </form>
</section>

</body>
</html>