<?php 
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class DController{
	
	protected $load = array();

	public function __construct(){
		$this->load = new Load();
	}
	public function Mail($Email,$Name,$order_ID){
        $mail = new PHPMailer(true);

        try {
            $mail->SMTPDebug = 2;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'tanhuyqn6789@gmail.com';
            $mail->Password = 'yayoctyflwvgurcl';
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;
            $mail->setFrom('ivyshop@gmail.com', 'IvyShop');
            $mail->addAddress($Email, $Name);
            $mail->isHTML(true);
            $mail->CharSet = "UTF-8";
            $mail->Subject = 'Chào bạn. Đây là thông tin bạn vừa mua sản phẩm của chúng tôi.';
            $mail->Body =
                'Mã đơn hàng của
        bạn là ' .
                $order_ID .
                ". Truy cập http://localhost/index/payment/" .
                $order_ID;
            $result = $mail->send();
            if (!$result) {
                $error = "Có lỗi xảy ra...";
            }else{
               return 1; 
            }
        } catch (Exception $e) {
            echo "Không thể gửi mail: {$mail->ErrorInfo}";
        }
    }
}


?>