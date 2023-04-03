<?php
	$user="";
	$pass="";
	if (isset($_COOKIE['user'])&&isset($_COOKIE['pass'])) {
		$user=$_COOKIE['user'];
		$pass=$_COOKIE['pass'];
	}

?>
<style type="text/css">
	p{
		font-size: 14px;
	}
	#td{
		height: 30px;
    	padding: 0 10px;
	    width: 200px;
	    outline: none;
	    border: 1px solid #ccc;
	}
	a{
		text-decoration: none;
		color: black;
	}
</style>
<section class="cart" style="width: 90%;margin: 0 auto;font-weight: normal;font-size: 23px;">
	<div>
		<?php 
		    if (!empty($_GET['msg'])) {
		        $msg=unserialize(urldecode($_GET['msg']));
		        foreach ($msg as $key => $value) {
		            echo "<span style=color:blue;font-weight:bold;font-size:23px;margin-top:23px;>".$value."</span>";
		        }
		    }
		?>
	</div>
	<div style="text-align:center;">
		<h3>Đăng nhập</h3>
	</div>
	<div style="height:300px;margin-top: 30px;">
		<div style="width: 49%; float: left;">
			<h5>Đăng nhập bằng tài khoản thường:</h5><br>
			<p>Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</p>
			<div>
				<form action="<?php echo BASE_URL?>index/login_customer" method="POST" >
					<table cellspacing="20">
						<tr>
							<td style="font-size: 14px;">Email(hoặc số điện thoại) của bạn:</td>
							<td><input required type="text" name="email" placeholder="Email của bạn" id="td" value="<?php echo $user?>" autocomplete="off"></td>
						</tr>
						<tr>
							<td style="font-size: 14px;">Mật khẩu:</td>
							<td><input required type="Password" name="pass" placeholder="Mật khẩu của bạn" id="td" value="<?php echo $pass?>" autocomplete="off"></td>
						</tr>
						<tr>
							<td></td>
							<td style="font-size: 14px;">
									<input type="checkbox" name="ghinho">Ghi nhớ đăng nhập?
							</td>
						</tr>
						<tr>
							<td></td>
							<td style="font-size: 14px;"><a href="<?php echo BASE_URL?>index/GetPass">Quên mật khẩu?</a></td>
						</tr>
						<tr>
							<td></td>
							<td style="font-size: 14px;"><input type="submit" name="" id="td" value="Đăng nhập" style="background-color: black;color: white;"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div style="width: 49%; float: left;margin-left: 23px;">
			<h5>Khách hàng mới của IVY moda</h5><br>
			<p>Nếu bạn chưa có tài khoản trên ivymoda.com, hãy sử dụng tùy chọn này để truy cập biểu mẫu đăng ký.</p><br>
			<p>Bằng cách cung cấp cho IVY moda thông tin chi tiết của bạn, quá trình mua hàng trên ivymoda.com sẽ là một trải nghiệm thú vị và nhanh chóng hơn!</p>	
			<form action="<?php echo BASE_URL?>index/register" method="POST">
				<input type="submit" name="" id="td" value="Đăng kí" style="background-color: black;color: white;margin-top: 23px;">
			</form>
		</div>
	</div>
</section>