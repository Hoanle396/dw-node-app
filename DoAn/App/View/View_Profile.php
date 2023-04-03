<?php
	$diem=0;
	if ($score) {
		foreach ($score as $key => $score) {
			$diem=$score['score'];
		}
	}
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
		<h4 style="text-align:center;">THÔNG TIN CÁ NHÂN</h4>
	</div>
	<div>
		
	</div>
	<div style="padding-top:60px">
		<table cellspacing="20">
			<tr>
				<th>Ảnh cá nhân:</th>
				<td>
					<div class="profile">
                        <img src="<?php echo BASE_URL?>Icon/<?php echo $img?>">
                    </div>
				</td>
			</tr>
			<tr>
				<th>Họ và tên:</th>
				<td><?php echo $Name?></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><?php echo $Email?></td>
			</tr>
			<tr>
				<th>Ngày sinh:</th>
				<td><?php echo $Date?></td>
			</tr>
			<tr>
				<th>Giới tính:</th>
				<td><?php echo $Sex?></td>
			</tr>
			<tr>
				<th>Địa chỉ:</th>
				<td><?php echo $Address?>

				</td>
			</tr>
			<tr>
				<th>Điểm tích luỹ:</th>
				<td><?php echo $diem?></td>
			</tr>
		</table>

	</div>

	
</section>