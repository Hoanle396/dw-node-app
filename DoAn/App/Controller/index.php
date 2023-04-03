<?php 
class index extends DController
{
    public function __construct()
    {
        $data = array();
        parent::__construct();
    }

    public function index()
    {
        $this->home();
    }
    public function home(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table="slider";
        $slide=$this->load->model('slide');
        $data['list_slide']=$slide->list_slide($table);

        $this->load->view('header',$data);
        $this->load->view('slider',$data);
        $this->load->view('footer');
    }

    public function category($id){
        Session::init();
        $id_brand[]=explode(',',$id);
        // var_dump($id_brand);
        $table1="category";
        $table2="brand";
        $table3="product";
        
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $cond1="category.category_ID=brand.category_ID AND category.category_ID=".$id_brand[0][1];
        $data['list_category_brand']=$homeModel->list_category_brand($table1,$table2,$cond1);

        $cond2="brand.brand_ID=".$id_brand[0][0];
        $data['list_brand']=$homeModel->list_brand($table2,$cond2);

        if (isset($id_brand[0][2]))
            $page=$id_brand[0][2];
        else
            $page='';
        if($page=='' || $page==1)
            $begin=0;
        else
            $begin=($page*8)-8;
        $Limit='LIMIT '.$begin.',8';
        $cond4="product.brand_ID=brand.brand_ID AND product.brand_ID=".$id_brand[0][0];
        if (isset($_POST['Sapxep'])) {
            $SX=$_POST['Sapxep'];
            if ($SX=='DESC') {
                $data['list_brand_product']=$homeModel->list_brand_product_DESC($table2,$table3,$cond4,$Limit);
            }else if($SX=='ASC'){
                $data['list_brand_product']=$homeModel->list_brand_product_ASC($table2,$table3,$cond4,$Limit);
            }     
        }else{
             $data['list_brand_product']=$homeModel->list_brand_product($table2,$table3,$cond4,$Limit);
        }
       
       

        $this->load->view('header',$data);
        $this->load->view('category',$data);
        $this->load->view('footer');
    }
    public function detail($id){
        Session::init();
        $id_brand[]=explode(',',$id);
        // var_dump($id_brand);
        $table1="category";
        $table2="brand";
        $table3="product";
        $table4="color_product";
        $table5="size_product";
        $table6="des_product";
        $table7="images";

        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $cond1="category.category_ID=brand.category_ID AND category.category_ID=".$id_brand[0][0];
        $data['list_category_brand']=$homeModel->list_category_brand($table1,$table2,$cond1);

        $cond2="brand.brand_ID=".$id_brand[0][2];
        $data['list_brand']=$homeModel->list_brand($table2,$cond2);

        $id=$id_brand[0][1];
        $cond3="product.product_ID='$id'";
        $data['list_product']=$homeModel->list_product($table3,$cond3);

        $cond5="product.color_ID=color_product.color_ID AND color_product.color_ID=".$id_brand[0][3];
        $data['list_color_product']=$homeModel->list_color_product($table4,$table3,$cond5);

        $cond6="size_product.brand_ID=".$id_brand[0][2];
        $data['list_size']=$homeModel->list_size($table5,$cond6);

        $cond7="product.product_ID=des_product.product_ID AND product.product_ID='$id'";
        $data['list_des_product']=$homeModel->list_des_product($table6,$table3,$cond7);

        $cond8="product.product_ID=images.product_ID AND product.product_ID='$id'";
        $data['list_images_product']=$homeModel->list_images_product($table7,$table3,$cond8);

        $cond9="product.brand_ID=brand.brand_ID AND brand.brand_ID=".$id_brand[0][2];
        $data['list_brand_product']=$homeModel->list_brand_product_Hot($table2,$table3,$cond9);

        $this->load->view('header',$data);
        $this->load->view('detail',$data);
        $this->load->view('footer');
    }
    public function cart(){
        Session::init();
        // $id[]=explode(',',$id);
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);


        $this->load->view('header',$data);
        $this->load->view('cart',$data);
        $this->load->view('footer');
    }
    public function Add_cart(){
        Session::init();
            // Session::destroy();
            
            if (isset($_SESSION['cart'])) {
                $avaiable=0;
                foreach($_SESSION['cart'] as $key=>$value){
                    if ($_SESSION['cart'][$key]['product_ID'] == $_POST['product_ID']) {
                        $avaiable++;
                        $_SESSION['cart'][$key]['quantity']+=$_POST['quantity'];
                    }
                }
                if ($avaiable==0) {
                    $item=array(
                        'product_ID'=>$_POST['product_ID'],
                        'product_name'=>$_POST['product_name'],
                        'image'=>$_POST['image'],
                        'price'=>$_POST['price'],
                        'discound'=>$_POST['discount'],
                        'quantity'=>$_POST['quantity'],
                        'color'=>$_POST['color'],
                        'size_name'=>$_POST['size']

                    );
                    $_SESSION['cart'][]=$item;
                }
            }else{
                $item=array(
                    'product_ID'=>$_POST['product_ID'],
                    'product_name'=>$_POST['product_name'],
                    'image'=>$_POST['image'],
                    'price'=>$_POST['price'],
                    'discound'=>$_POST['discount'],
                    'quantity'=>$_POST['quantity'],
                    'color'=>$_POST['color'],
                    'size_name'=>$_POST['size']

                );
                $_SESSION['cart'][]=$item;
            }
            header('Location:'.BASE_URL.'index/cart');
            // var_dump($_SESSION['cart']);
    }
    public function updategiohang(){
            Session::init();
            if (isset($_POST['delete_cart'])) {
                if (isset($_SESSION['cart'])) {
                    foreach($_SESSION['cart'] as $key=>$value){
                        if ($_SESSION['cart'][$key]['product_ID'] == $_POST['delete_cart']) {        
                            unset($_SESSION['cart'][$key]);
                        }
                    }
                    header('Location:'.BASE_URL.'index/cart');                 
                }else{
                    header('Location:'.BASE_URL);
                }
            }
        }
    public function order(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table2="city";
        $table3="district";
        $table4="wards";

        $data['list_city']=$homeModel->list_city($table2);

        if(Session::get('customer')){
            $table_score='score';
            $cond='score.customer_ID='.$_SESSION['customer_id'];
            $data['score']=$homeModel->list_score_customer($table_score,$cond);
        }

        $this->load->view('header',$data);
        $this->load->view('ajax/order',$data);
        $this->load->view('footer');
    }
    public function payment($id){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table_order='order_details';
        $cond="order_details.order_ID='$id'";
        $data['order_details']=$homeModel->order_details($table_order,$cond);

        $this->load->view('header',$data); 
        $this->load->view('payment',$data);
        $this->load->view('footer'); 
    }
    public function details_order($id){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table_order_details='order_details';
        $cond1="order_details.order_ID='$id'";
        $data['order_details']=$homeModel->order_details($table_order_details,$cond1);
        $table_product='product';
        // foreach ($data['order_details'] as $key => $value) { 
        //     $product_ID=$value['product_ID'];      
        // }

        if(Session::get('customer')){
            $table_score='score';
            $cond='score.customer_ID='.$_SESSION['customer_id'];
            $data['score']=$homeModel->list_score_customer($table_score,$cond);
        }

        $table_order='tbl_order';
        $cond2="tbl_order.order_ID='$id'";
        $data['order']=$homeModel->list_order($table_order,$cond2);

        $table_product='product';
        $cond3="product.product_ID=order_details.product_ID  AND order_details.order_ID='$id'";
        $data['list_order_product']=$homeModel->list_order_product($table_order_details,$table_product,$cond3);

        $this->load->view('header',$data);
        $this->load->view('detail_order',$data); 
        $this->load->view('footer');
    }
    public function destroy($id){
         Session::init();
            $table_order='tbl_order';
            $homeModel=$this->load->model('homeModel');
            $cond="$table_order.order_ID=$id";

            date_default_timezone_set('asia/ho_chi_minh');
            $date=date("d/m/Y");
            $hour=date("h:i:sa");
           
            $data=array(
                'Status'=>2,
                'order_Cancel'=>$date.' '.$hour
            );
           
            $result=$homeModel->destroy_order($table_order,$data,$cond);
            if ($result==1) {
                header('location:'.BASE_URL."index/details_order/".$id);
            }else{
                header('location:'.BASE_URL."index/details_order/".$id);
            }

    }
    public function login(){
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $this->load->view('header',$data);
        $this->load->view('login'); 
        $this->load->view('footer'); 
    }
    public function register(){
        $table1="category";
        $table2="city";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);
        $data['list_city']=$homeModel->list_city($table2);

        $this->load->view('header',$data);
        $this->load->view('ajax/register',$data); 
        $this->load->view('footer'); 
    }
    public function register_customer(){
        $homeModel=$this->load->model('homeModel');
        $table1='city';
        $cond1="city.city_ID =".$_POST['Tinh']; 
            
        $table2='district';
        $cond2="district.district_ID =".$_POST['Quan']; 

        $table3='wards';
        $cond3="wards.wards_ID =".$_POST['Phuong']; 
        

        $data['list_city']=$homeModel->list_ciy($table1,$cond1);
        foreach($data['list_city'] as $keys=>$list_city){
            $city_name=$list_city['city_name'];
        };

        $data['list_district']=$homeModel->list_district1($table2,$cond2);
        foreach($data['list_district'] as $keys=>$list_district){
            $district_name=$list_district['district_name'];
        };

        $data['list_wards']=$homeModel->list_wards($table3,$cond3);
        foreach($data['list_wards'] as $keys=>$list_wards){
            $wards_name=$list_wards['wards_name'];
        };

        $Name=$_POST['ho']." ".$_POST['ten'] ;
        $Phone=$_POST['phone'];   
        $Email=$_POST['email'];
        $Date_of_birth=$_POST['date'];
        $Date=date("d/m/Y",strtotime($Date_of_birth));
        $Sex=$_POST['sex'];
        $Password1=$_POST['pass1'];
        $Password2=$_POST['pass2'];
        $address=$_POST['DiaChi'].", ".$wards_name.", ".$district_name.", ".$city_name;

        $table="customer";
        $data['list_customer']=$homeModel->list_customer($table);
        $count=0;
        foreach ($data['list_customer'] as $key => $values) {
            if(strcmp($values['Email'], $Email)==0){
                $message['msg']='Email bị trùng';
                setcookie('Ho',$_POST['ho'],time()+5); setcookie('Ten',$_POST['ten'],time()+5);
                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
                setcookie('Date',$Date,time()+5);  setcookie('Sex',$Sex,time()+5);
                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
                $count++;
                header('location:'.BASE_URL."index/register?msg=".urlencode(serialize($message)));    
            }else if(strcmp($values['Phone'],$Phone)==0){
                $message['msg']='Số điện thoại bị trùng';
                setcookie('Ho',$_POST['ho'],time()+5); setcookie('Ten',$_POST['ten'],time()+5);
                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
                setcookie('Date',$Date,time()+5);  setcookie('Sex',$Sex,time()+5);
                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
                $count++;
                header('location:'.BASE_URL."index/register?msg=".urlencode(serialize($message)));    
            }else if(strlen($Password1)<6 || strlen($Password1) > 18){
                $message['msg']='Mật khẩu từ 6 đến 18 kí tự';
                setcookie('Ho',$_POST['ho'],time()+5); setcookie('Ten',$_POST['ten'],time()+5);
                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
                setcookie('Date',$Date,time()+5);  setcookie('Sex',$Sex,time()+5);
                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
                $count++;
                header('location:'.BASE_URL."index/register?msg=".urlencode(serialize($message))); 
            }
        }
        if ($count==0) {
            if ($Password1==$Password2) {
                $data= array(
                    'Name'=>$Name,
                    'image'=>'th.jpg',
                    'Email'=>$Email,
                    'Password'=>md5($Password1),
                    'Phone'=>$Phone,
                    'Date_of_birth'=>$Date,
                    'Sex'=>$Sex,
                    'Address'=>$address
                );
                        // var_dump($data);
                $result=$homeModel->register_customer($table,$data); 
                if ($result==1) {  
                    $message['msg']="Đăng kí thành công, mời bạn đăng nhập";
                    header('location:'.BASE_URL."index/login?msg=".urlencode(serialize($message)));
                }else{
                    $message['msg']="Đăng kí thất bại";
                    header('location:'.BASE_URL."index/register?msg=".urlencode(serialize($message)));
                }
            }else{
                $message['msg']="Hai mật khẩu không khớp nhau";
                header('location:'.BASE_URL."index/register?msg=".urlencode(serialize($message)));
            }
        }
       
    }
    public function login_customer(){
        $user=$_POST['email'];
        $phone=$_POST['email'];
        $pass=$_POST['pass'];
        $table="customer";
        $homeModel=$this->load->model('homeModel');

        $password=md5($pass);
        $count_email=$homeModel->login_email($table,$user,$password);

        $count_phone=$homeModel->login_phone($table,$phone,$password);

        if ($count_email==0 && $count_phone==0) {
            $message['msg']="Email(số điện thoại) hoặc mật khẩu sai. Xin kiểm tra lại";
            header("location:".BASE_URL."index/login?msg=".urlencode(serialize($message)));
        }else if ($count_email==1){
            $result=$homeModel->getLogin_email($table,$user,$password);
            Session::init();
            Session::set('customer',true);
            Session::set('customer_id',$result[0]['customer_ID']);
            Session::set('image',$result[0]['image']);
            Session::set('username',$result[0]['Name']); 
            if (isset($_POST['ghinho'])&&($_POST['ghinho'])) {         
                 SetCookie('user',$user,time()+(86400*7));
                 SetCookie('pass',$pass,time()+(86400*7));
            }
            header("location:".BASE_URL."index");
        }else{
            $result=$homeModel->getLogin_phone($table,$user,$password);
            Session::init();
            Session::set('customer',true);
            Session::set('customer_id',$result[0]['customer_ID']);
            Session::set('image',$result[0]['image']);
            Session::set('username',$result[0]['Name']); 
            if (isset($_POST['ghinho'])&&($_POST['ghinho'])) {         
                 SetCookie('user',$phone,time()+(86400*7));
                 SetCookie('pass',$pass,time()+(86400*7));
            }
            header("location:".BASE_URL."index");
        }

    }
    public function logout(){
        Session::init();
        //Session::destroy();
        Session::destroy();
        header("location:".BASE_URL."index/login");
    }
    public function Search($id){
        Session::init();
        $homeModel=$this->load->model('homeModel');

        $id_brand[]=explode(',',$id);
        // var_dump($id_brand);
        $table1="category";
        $table2="brand";
        $table3="product";
      
        $data['list_category']=$homeModel->list_category($table1);

        $cond1="category.category_ID=brand.category_ID AND category.category_ID=".$id_brand[0][1];
        $data['list_category_brand']=$homeModel->list_category_brand($table1,$table2,$cond1);

        $cond2="brand.brand_ID=".$id_brand[0][0];
        $data['list_brand']=$homeModel->list_brand($table2,$cond2);

        $data['list_category']=$homeModel->list_category($table1);


        if (isset($id_brand[0][2]))
            $page=$id_brand[0][2];
        else
            $page='';
        if($page=='' || $page==1)
            $begin=0;
        else
            $begin=($page*8)-8;
        $Limit='LIMIT '.$begin.',8';

        if (isset($_POST['Search'])) {
            Session::set('Name',$_POST['Search']);
        }
        if (isset($_SESSION['Name'])) {
            $name=$_SESSION['Name'];
        }
        if (isset($_POST['Sapxep'])) {
            $SX=$_POST['Sapxep'];
            if ($SX=='DESC') {
                $data['search_product']=$homeModel->search_product_home_DESC($table3,$name,$Limit);
            }else if($SX=='ASC'){
                $data['search_product']=$homeModel->search_product_home_ASC($table3,$name,$Limit);;
            }     
        }else{
             $data['search_product']=$homeModel->search_product_home($table3,$name,$Limit);
        }
        $this->load->view('header',$data);
        $this->load->view('search',$data); 
        $this->load->view('footer'); 
    }
    public function GetPass(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $this->load->view('header',$data);
        $this->load->view('GetPass');
        $this->load->view('footer');
    }
    public function Edit_Profile(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $cond1="customer.customer_ID=".$_SESSION['customer_id'];
        $table="customer";
        $data['list_customer_by_id']=$homeModel->list_customer_by_id($table,$cond1);

        $this->load->view('header',$data);
        $this->load->view('Edit_Profile',$data);
        $this->load->view('footer');
    }
    public function View_Profile(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        if(Session::get('customer')){
            $table_score='score';
            $cond='score.customer_ID='.$_SESSION['customer_id'];
            $data['score']=$homeModel->list_score_customer($table_score,$cond);
        }
        $cond1="customer.customer_ID=".$_SESSION['customer_id'];
        $table="customer";
        $data['list_customer_by_id']=$homeModel->list_customer_by_id($table,$cond1);
        // var_dump($data['list_customer_by_id']);
        $this->load->view('header',$data);
        $this->load->view('View_Profile',$data);
        $this->load->view('footer');
    }
    public function Update_Profile(){
        Session::init();
        $cond="customer_ID=".$_SESSION['customer_id']."";
        $table="customer";
        $img=$_FILES['image_customer']['name'];
        $Name=$_POST['Name'];
        $Email=$_POST['Email'];
        $Date_of_birth=$_POST['Date'];
        $Date=date("d/m/Y",strtotime($Date_of_birth));
        $Sex=$_POST['Sex'];
        $Address=$_POST['Address'];
        $homeModel=$this->load->model('homeModel');     
        $path_uploads="Icon/".$img;

        $data['list_customer']=$homeModel->list_customer($table);
        $count=0;
        foreach ($data['list_customer'] as $key => $values) {
            // var_dump($data['list_customer']);
            if(strcmp($values['Email'], $Email)==0){
                $message['msg']='Email bị trùng';
                $count++;
                header('location:'.BASE_URL."index/Edit_Profile?msg=".urlencode(serialize($message)));    
            }
                
        }
        if($img){     
            $data= array(
                'image'=>$img
            );
            move_uploaded_file($_FILES['image_customer']['tmp_name'],$path_uploads);
            Session::unset($_SESSION['image']);
            Session::set('image',$img);
            $result=$homeModel->Update_Profile($table,$data,$cond);
        }
        if ($count==0) {
            if ($Email) {
                $data= array(
                    'Name'=>$Name,
                    'Email'=>$Email,
                    'Date_of_birth'=>$Date,
                    'Sex'=>$Sex,
                    'Address'=>$Address
                );
            }
            else{
                 $data= array(
                    'Name'=>$Name,
                    'Date_of_birth'=>$Date,
                    'Sex'=>$Sex,
                    'Address'=>$Address
                );
            }
            $result=$homeModel->Update_Profile($table,$data,$cond);
            if ($result==1) {
                header('location:'.BASE_URL."index/View_Profile");
            }else{
                header('location:'.BASE_URL."index/Edit_Profile");
            } 
        }
           
    }
    public function post(){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table_post="post";
        $postModel=$this->load->model('post');
        $data['post']=$postModel->post($table_post);

        $this->load->view('header',$data);
        $this->load->view('post',$data);
        $this->load->view('footer');
    }
    public function detail_post($id){
        Session::init();
        $table1="category";
        $homeModel=$this->load->model('homeModel');       
        $data['list_category']=$homeModel->list_category($table1);

        $table_post="post";
        $cond="post.post_ID=".$id;
        $postModel=$this->load->model('post');
        $data['postbyid']=$postModel->postbyid($table_post,$cond);

        $this->load->view('header',$data);
        $this->load->view('detail_post',$data);
        $this->load->view('footer');
    }
}


?>