<?php 
	foreach ($list_customer_by_id as $key => $list_customer_by_id) {
		$img=$list_customer_by_id['image'];
		$Name=$list_customer_by_id['Name'];
		$Email=$list_customer_by_id['Email'];
		$Date=$list_customer_by_id['Date_of_birth'];
		$Sex=$list_customer_by_id['Sex'];
		$Address=$list_customer_by_id['Address'];
	}
?>
<style type="text/css">
	p{
		font-size: 14px;
	}
	#td{
		height: 30px;
    	padding: 0 10px;
	    width: 400px;
	    outline: none;
	    border: 1px solid #ccc;
	}
	#submit{
		width: 180px;
		height: 30px;
		background: #ffffff;
	}
	.profile{
        position: relative;
        width: 100px;
        height: 100px;
        border-radius: 50%;
        overflow: hidden;
        cursor: pointer;
    }
	.profile img{
		position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
	}
</style>
<section class="cart" style="width: 90%;margin: 0 auto;font-weight: normal;font-size: 23px;">
	<div>
		<h4 style="text-align:center;">BẠN MUỐN THAY ĐỔI THÔNG TIN?</h4>
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
	<div style="padding-top:60px">
		<form action="<?php echo BASE_URL?>index/Update_Profile" method="POST" enctype="multipart/form-data">
			<table cellspacing="20">
				<tr>
					<th>Ảnh cá nhân:</th>
					<td>
						<div class="profile">
	                        <img src="<?php echo BASE_URL?>Icon/<?php echo $img?>">
	                    </div>
	                    <input type="file" name="image_customer" style="width: 88px;padding-left: 13px;">
					</td>
				</tr>
				<tr>
					<th>Họ và tên:</th>
					<td><input type="text" name="Name" value="<?php echo $Name?>" id="td"></td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><?php
						if ($Email=='') {?>
							<input type="text" name="Email" value="" id="td">
						<?php }else{
							 echo $Email;
						}
					?></td>
				</tr>
				<tr>
					<th>Ngày sinh:</th>
					<td><?php
						if ($Date=='') {?>
							<input type="date" name="Date" value="" id="td">
						<?php }else{?>
							<input type="text" name="Date" value="<?php echo $Date?>" id="td">
						<?php }
					?></td>
				</tr>
				<tr>
					<th>Giới tính:</th>
					<td><select name="Sex" id="td">
						<?php if ($Sex=='Nam') {?>
                                    <option value="Nam" selected>Nam</option>
                                    <option value="Nữ">Nữ</option>
                        <?php }else if($Sex=='Nữ'){?>
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ" selected>Nữ</option>
                        <?php }else{?>
                        	<option value="Nam">Nam</option>
                            <option value="Nữ">Nữ</option>
                        <?php }?>
					</select></td>
				</tr>
				<tr>
					<th>Địa chỉ:</th>
					<td><input type="text" name="Address" value="<?php echo $Address?>" id="td">

					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit" value="SỬA" id="submit"></td>
				</tr>
			</table>
		</form>

	</div>

	
</section>
<script type="text/javascript">
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