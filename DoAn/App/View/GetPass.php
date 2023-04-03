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
</style>
<section class="cart" style="width: 90%;margin: 0 auto;font-weight: normal;font-size: 23px;">
	<div>
		<h4 style="text-align:center;">BẠN MUỐN TÌM LẠI MẬT KHẨU?</h4>
	</div>
	<div style="padding-top:40px">
		<p>Vui lòng nhập lại email đã đăng ký, hệ thống của chúng tôi sẽ gửi cho bạn 1 đường dẫn để thay đổi mật khẩu.</p>
	</div>
	<div>
		
	</div>
	<div>
		<form action="<?php echo BASE_URL?>index/login_customer" method="POST">
			<table cellspacing="20">
				<tr>
					<th align="left" style="font-size: 14px;">Email của bạn:<span style="color:red;">*</span></th>
				</tr>
				<tr>
					<td><input required type="text" name="email" placeholder="Email của bạn" id="td"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="" value="GỬI ĐI" id="submit"></td>
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