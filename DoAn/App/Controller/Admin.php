<?php
class Admin extends DController
{
    public function __construct()
    {
        parent::__construct();
        $alert=array();
        
    }

    public function index()
    {
        $this->login();
    }
    public function login(){
    	Session::init();
		// $this->load->view('header');
		//Session::destroy();
		if (Session::get('login')==true) {
			header("location:".BASE_URL."Admin/dashboard");
		}
		$this->load->view('Admin/login_Admin');
		// $this->load->view('footer');
	}
	public function dashboard(){
		Session::init();
		//Session::destroy();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/footer');
	}
	public function getlogin(){
		Session::init();
		$user=$_POST['username'];
		$pass=md5($_POST['password']);
		$table="admin";
		$login_Admin=$this->load->model('login_Admin');

		$count=$login_Admin->login($table,$user,$pass);

		if ($count==0) {
			$message['msg']="User hoac pass sai. xin kiem tra lai";
			header("location:".BASE_URL."Admin");
		}else{
			$result=$login_Admin->getLogin($table,$user,$pass);
			Session::init();
			Session::set('login',true);
			Session::set('name',$result[0]['Admin_Name']);
			Session::set('username',$result[0]['Admin_User']);
			Session::set('password',$result[0]['Admin_Pass']);
			header("location:".BASE_URL."Admin/dashboard");
		}

	}
	public function logout(){
		Session::init();
		//Session::destroy();
		Session::unset('login');
		header("location:".BASE_URL."Admin");
	}
    ////////////////////////////////////////////////////CATEGORY///////////////////////////////////
	public function add_category(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/category/add_category');
		$this->load->view('Admin/footer');
	}
	public function insert_category(){
		Session::init();
		$category_name=$_POST['category_name'];
		$table='category';
		$data=array(
			'category_name'=>$category_name
		);
		$category=$this->load->model('category');
		$result=$category->insert_category($table,$data);
		if ($result==1) {
			$message['msg']="Thêm danh mục thành công";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm danh mục thất bại";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}
	}
	public function list_category(){
		Session::init();
		

		$table="category";
		$category=$this->load->model('category');
		$data['list_category']=$category->list_category($table);

		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/category/list_category',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_category($id){
		Session::init();
		$table='category';
		$cond='category_ID='.$id;
		$category=$this->load->model('category');
		$result=$category->delete_category($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá danh mục thành công";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá danh mục thất bại";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}
	}
  	public function edit_category($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$cond="category_ID=".$id."";
		$table="category";
		$category=$this->load->model('category');
		$data['category_by_id']=$category->category_by_id($table,$cond);
		$this->load->view('Admin/category/edit_category',$data);
		$this->load->view('Admin/footer');
		
	}
	public function update_category($id){
		Session::init();
		$cond="category_ID=".$id."";
		$table="category";
		$category_name=$_POST['category_name'];
		$category=$this->load->model('category');
		$data= array(
			'category_name'=>$category_name
		);
		$result=$category->update_category($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa danh mục thành công";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa danh mục thất bại";
			header('location:'.BASE_URL."Admin/list_category?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/footer'); 
		
	}
	//////////////////////////////////////////////////////BRAND//////////////////////////////////////////
	public function add_brand(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$brand=$this->load->model('brand');	
		$table2='category';
		$data['list_category']=$brand->list_category($table2);
		$this->load->view('Admin/brand/add_brand',$data);
		$this->load->view('Admin/footer');
	}
	public function insert_brand(){
		Session::init();
		$brand_name=$_POST['brand_name'];
		$category_ID=$_POST['category_ID'];
		$table='brand';	
		$data=array(
			'brand_name'=>$brand_name,
			'category_ID'=>$category_ID
		);
		$brand=$this->load->model('brand');	
		$result=$brand->insert_brand($table,$data);
		if ($result==1) {
			$message['msg']="Thêm loại sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm loại sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}
	}
	public function list_brand(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');

		$table1='brand';
		$table2='category';
		$cond='brand.category_ID=category.category_ID';
		$brand=$this->load->model('brand');	
		$data['list_brand']=$brand->list_brand($table1,$table2,$cond);

		$this->load->view('Admin/brand/list_brand',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_brand($id){
		Session::init();
		$table='brand';
		$cond='brand_ID='.$id;
		$brand=$this->load->model('brand');
		$result=$brand->delete_brand($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá loại sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá loại sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}

	}
  	public function edit_brand($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$brand=$this->load->model('brand');
		$cond="brand_ID=".$id."";
		$table="brand";
		$table2='category';
		$data['list_category']=$brand->list_category($table2);
		$data['brand_by_id']=$brand->brand_by_id($table,$cond);
		$this->load->view('Admin/brand/edit_brand',$data);
		$this->load->view('Admin/footer');
	}
	public function update_brand($id){
		Session::init();
		$cond="brand_ID=".$id."";
		$table="brand";
		$brand_name=$_POST['brand_name'];
		$category_ID=$_POST['category_ID'];
		$brand=$this->load->model('brand');
		$data= array(
			'brand_Name'=>$brand_name,
			'category_ID'=>$category_ID
		);
		$result=$brand->update_brand($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa loại sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa loại sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_brand?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider'); 
		$this->load->view('Admin/footer');
	}
	/////////////////////////////////////////////////////PRODUCT/////////////////////////////////////////
	public function add_product(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$product=$this->load->model('product');	
		$table1='category';
		$data['list_category']=$product->list_category($table1);
		$table2='brand';
		$data['list_brand']=$product->list_brand($table2);
		$table='color_product';
		$data['list_color']=$product->list_color($table);
		$this->load->view('Admin/product/ajax/add_product',$data);
		$this->load->view('Admin/footer');
	}
	public function insert_product(){
		Session::init();
		$product=$this->load->model('product');
		$table1='product';
		$img=$_FILES['image']['name'];
		$tmp_image=$_FILES['image']['tmp_name'];
		$path_uploads="App/View/Admin/product/image_product/".$img;
		$filetarget=basename($img);
		$filetype=strtolower(pathinfo($img,PATHINFO_EXTENSION));
		$filesize=$img;

		$data['list_product']=$product->list_product_admin($table1);
		$count=100;
		foreach ($data['list_product'] as $key => $list_product) {
			$count++;
		}

		$product_ID='SP'.$count;
		$product_name=$_POST['product_name'];
		$brand_ID=$_POST['brand_ID'];
		$color_ID=$_POST['color_ID'];
		$price=$_POST['product_price'];
		$discount=$_POST['discount'];
		$des=$_POST['des'];
		$store=$_POST['store'];

		
			if ($filetype!="jpg" && $filetype!="png" && $filetype!="jpeg" && $filetype!="webp") {
				$message['msg']="Chỉ chọn file ảnh...";
			}else{
					move_uploaded_file($tmp_image,$path_uploads);
					$table_des="des_product";
					$table="product";
					$table_images="images";
					$data= array(
						'product_ID'=>$product_ID,
						'product_name'=>$product_name,
						'brand_ID'=>$brand_ID,
						'price'=>$price,
						'discount'=>$discount,
						'color_ID'=>$color_ID,
						'image'=>$img
					);
					$data_des=array(
						'product_ID'=>$product_ID,
						'description'=>$des,
						'store'=>$store
					);
					foreach($_FILES['images']['name'] as $key=>$value){
						$image1=$_FILES['images']['name'][$key];
						$tmp_image1=$_FILES['images']['tmp_name'][$key];
						$path_uploads1="App/View/Admin/product/images/".$image1;
						$filetarget1=basename($image1);
						$filetype1=strtolower(pathinfo($image1,PATHINFO_EXTENSION));
							if ($filetype1!="jpg" && $filetype1!="png" && $filetype1!="jpeg" && $filetype1!="webp") {
								$message['msg']="Chỉ chọn file ảnh...";
							}
							else{
								if (move_uploaded_file($tmp_image1,$path_uploads1)) {
									$images[]=$image1;
								}
							}
											
						
					};	
					$result=$product->insert_product($table,$data);
					$result1=$product->insert_des($table_des,$data_des);

					for ($i=0; $i < count($images); $i++) { 
						$data_images=array(
							'images'=>$images[$i],
							'product_ID'=>$product_ID
						);
						$result2=$product->insert_images($table_images,$data_images);
					}
		}	
		if ($result==1 && $result1==1 ) {
			$message['msg']="Thêm sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}
		
	}
	public function list_product(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$table1='product';
		$table2='brand';
		$table3='color_product';
		$cond='product.brand_ID=brand.brand_ID AND product.color_ID=color_product.color_ID';
		$product=$this->load->model('product');	
		$data['list_product']=$product->list_product($table1,$table2,$table3,$cond);
		$this->load->view('Admin/product/list_product',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_product($id){
		Session::init();
		$table="product";
		$cond="product_ID='$id'";
		
		$product=$this->load->model('product');
		$data['productbyid']=$product->product_by_id_home($table,$cond);
			foreach ($data['productbyid'] as $key => $pro) {
			 	$path_uplink="App/View/Admin/product/image_product/";
			 	unlink($path_uplink.$pro['image']);
		} 
		$result=$product->delete_product($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}
	}
	public function edit_product($id){
		Session::init();

			$table_product="product";
			$table_brand="brand";
			$table_color='color_product';
			$cond="brand.brand_ID=product.brand_ID && product.product_ID='$id'";
			$product=$this->load->model('product');

			$table1='category';
			$data['list_category']=$product->list_category($table1);
			$table2='brand';

			$data['list_product_by_id']=$product->product_by_id($table_product,$table2,$cond); 
			$data['list_brand']=$product->list_brand($table_brand);
			$data['list_color']=$product->list_color($table_color);

			$this->load->view('Admin/header');
			$this->load->view('Admin/slider');
			$this->load->view('Admin/product/ajax/edit_product',$data);
			$this->load->view('Admin/footer');
	}
	public function update_product($id){
		Session::init();
		$table_product="product";
		$cond="product_ID='$id'";
		$product=$this->load->model('product');

		$product_name=$_POST['product_name'];
		$brand_ID=$_POST['brand_ID'];
		$color_ID=$_POST['color_ID'];
		$product_price=$_POST['product_price'];
		$discount=$_POST['discount'];
		$img=$_FILES['image']['name'];
		$path_uploads="App/View/Admin/product/image_product/".$img;
		$table='product';
		if($img){
			// $data['productbyid']=$product->product_by_id($table,$cond);
			// 	foreach ($data['productbyid'] as $key => $pro) {
			// 	 	$path_uplink="App/View/Admin/product/image_product/";
			// 	 	unlink($path_uplink.$pro['image']);				
			// } 
			$data=array(
				'product_name'=>$product_name,
				'brand_ID'=>$brand_ID,
				'price'=>$product_price,
				'discount'=>$discount,
				'color_ID'=>$color_ID,
				'image'=>$img
			);
			move_uploaded_file($_FILES['image']['tmp_name'],$path_uploads);
		}
		else{
			$data=array(
				'product_name'=>$product_name,
				'brand_ID'=>$brand_ID,
				'price'=>$product_price,
				'discount'=>$discount,
				'color_ID'=>$color_ID
			);
		}
		$result=$product->update_product($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa sản phẩm thành công";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa sản phẩm thất bại";
			header('location:'.BASE_URL."Admin/list_product?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider'); 
		$this->load->view('Admin/footer'); 
	}
	public function Search(){
		Session::init();
		$table1='product';
		$table2='brand';
		$table3='color_product';
		$name=$_POST['Search'];

		$product=$this->load->model('product');
		$cond='product.brand_ID=brand.brand_ID AND product.color_ID=color_product.color_ID';
		$data['list_product_by_id']=$product->search($table1,$table2,$table3,$cond,$name);

       	$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/product/Search',$data); 
		$this->load->view('Admin/footer'); 
	}
	////////////////////////////////////////////SIZE////////////////////////////////////////////
	public function add_size(){
		Session::init();
		$size=$this->load->model('size');
		$table1='category';
		$data['list_category']=$size->list_category($table1);
		$table2='brand';
		$data['list_brand']=$size->list_brand($table2);
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/size/ajax/add_size',$data);
		$this->load->view('Admin/footer');
	}
	public function insert_size(){
		Session::init();
		$size_name=$_POST['size_name'];
		$brand_ID=$_POST['brand_ID'];
		$table='size_product';
		$data=array(
			'size'=>$size_name,
			'brand_ID'=>$brand_ID
		);
		$size=$this->load->model('size');
		$result=$size->insert_size($table,$data);
		if ($result==1) {
			$message['msg']="Thêm kích cỡ thành công";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm kích cỡ thất bại";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}
	}
	public function list_size(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');

		$table="size_product";
		$size=$this->load->model('size');
		$data['list_size']=$size->list_size($table);

		$this->load->view('Admin/size/list_size',$data);
		$this->load->view('Admin/footer');
	}public function delete_size($id){
		Session::init();
		$table='size_product';
		$cond='size_ID='.$id;
		$size=$this->load->model('size');
		$result=$size->delete_size($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá kích cỡ thành công";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá kích cỡ thất bại";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}
	}
  	public function edit_size($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$cond="size_product.brand_ID=brand.brand_ID AND size_product.size_ID=".$id."";
		$table="size_product";
		$size=$this->load->model('size');
		$table1='category';
		$data['list_category']=$size->list_category($table1);
		$table2='brand';
		$data['size_by_id']=$size->size_by_id($table,$table2,$cond);
		$this->load->view('Admin/size/ajax/edit_size',$data);
		$this->load->view('Admin/footer');
		
	}
	public function update_size($id){
		Session::init();
		
		$cond="size_ID=".$id."";
		$table="size_product";
		$size_name=$_POST['size_name'];
		$brand_ID=$_POST['brand_ID'];
		$size=$this->load->model('size');
		$data= array(
			'size'=>$size_name,
			'brand_ID'=>$brand_ID
		);
		$result=$size->update_size($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa kích cỡ thành công";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa kích cỡ thất bại";
			header('location:'.BASE_URL."Admin/list_size?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider'); 
		$this->load->view('Admin/footer');
	}
	/////////////////////////////////////////////COLOR///////////////////////////////////////////////
	public function add_color(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/color/add_color');
		$this->load->view('Admin/footer');
	}
	public function insert_color(){
		Session::init();
		$color_name=$_POST['color_name'];
		$img=$_FILES['image_color']['name'];
		$tmp_image=$_FILES['image_color']['tmp_name'];
		$path_uploads="App/View/Admin/color/image_color/".$img;
		$table='color_product';
		$data=array(
			'color_name'=>$color_name,
			'image_color'=>$img
		);
		$color=$this->load->model('color');
		$result=$color->insert_color($table,$data);
		if ($result==1) {
			move_uploaded_file($tmp_image,$path_uploads);
			$message['msg']="Thêm màu thành công";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm màu thất bại";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		}
	}
	public function list_color(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');

		$table="color_product";
		$color=$this->load->model('color');
		$data['list_color']=$color->list_color($table);

		$this->load->view('Admin/color/list_color',$data);
		$this->load->view('Admin/footer');
	}public function delete_color($id){
		Session::init();
		$table='color_product';
		$cond='color_ID='.$id;
		$color=$this->load->model('color');
		$data['colorbyid']=$color->color_by_id($table,$cond);
		foreach ($data['colorbyid'] as $key => $pro) {
			$path_uplink="App/View/Admin/color/image_color/";
			unlink($path_uplink.$pro['image_color']);
		} 
		$result=$color->delete_color($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá màu thành công";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá màu thất bại";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		}
	}
  	public function edit_color($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$cond="color_ID=".$id."";
		$table="color_product";
		$color=$this->load->model('color');
		$data['color_by_id']=$color->color_by_id($table,$cond);
		$this->load->view('Admin/color/edit_color',$data);
		$this->load->view('Admin/footer');
	}
	public function update_color($id){
		Session::init();
		
		$cond="color_ID=".$id."";
		$table="color_product";
		$color_name=$_POST['color_name'];
		$img=$_FILES['image_color']['name'];
		$tmp_image=$_FILES['image_color']['tmp_name'];
		$path_uploads="App/View/Admin/color/image_color/".$img;
		$image_type=strtolower(pathinfo($img,PATHINFO_EXTENSION));
		$color=$this->load->model('color');
		
		if ($img) {	
			// $data['colorbyid']=$color->color_by_id($table,$cond);
			// foreach ($data['colorbyid'] as $key => $pro) {
			// 	$path_uplink="App/View/Admin/color/image_color/";
			// 	unlink($path_uplink.$pro['image_color']);
			// } 
							
			$data= array(

				'image_color'=>$img,
				'color_name'=>$color_name
			);
			move_uploaded_file($tmp_image,$path_uploads);
		}else{
			$data= array(
				'color_name'=>$color_name
			);
		}
		$result=$color->update_color($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa màu thành công";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa màu thất bại";
			header('location:'.BASE_URL."Admin/list_color?msg=".urlencode(serialize($message)));
		} 
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/footer');
	}
	/////////////////////////////////////////////////Slide/////////////////////////////////////////////////
	public function add_slide(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/slider/add_slide');
		$this->load->view('Admin/footer');
	}
	public function insert_slide(){
		Session::init();
		$table='slider';
		$img=$_FILES['slide']['name'];
		$tmp_image=$_FILES['slide']['tmp_name'];
		$path_uploads='App/View/Admin/slider/images/'.$img;
		$data=array(
			'image'=>$img
		);
		$slide=$this->load->model('slide');
		$result=$slide->insert_slide($table,$data);
		if ($result==1) {
			move_uploaded_file($tmp_image,$path_uploads);
			$message['msg']="Thêm slide thành công";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Thêm slide thất bại";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}
	}
	public function list_slide(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');

		$table="slider";
		$slide=$this->load->model('slide');
		$data['list_slide']=$slide->list_slide($table);

		$this->load->view('Admin/slider/slider',$data);
		$this->load->view('Admin/footer');
	}
	public function edit_slide($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$cond="slider_ID=".$id."";
		$table="slider";
		$slide=$this->load->model('slide');
		$data['slidebyid']=$slide->slide_by_id($table,$cond);
		$this->load->view('Admin/slider/edit_slide',$data);
		$this->load->view('Admin/footer');
		
	}
	public function update_slide($id){
		Session::init();
		$cond="slider_ID=".$id."";
		$table="slider";
		$img=$_FILES['image']['name'];
		$tmp_image=$_FILES['image']['tmp_name'];
		$slide=$this->load->model('slide');
		$path_uploads='App/View/Admin/slider/images/'.$img;
		if ($img) {	
			$data['slidebyid']=$slide->slide_by_id($table,$cond);
			foreach ($data['slidebyid'] as $key => $pro) {
				$path_uplink="App/View/Admin/slider/images/";
				unlink($path_uplink.$pro['image']);
			} 
							
			$data= array(

				'image'=>$img
			);
			move_uploaded_file($tmp_image,$path_uploads);
		}
		$result=$slide->update_slide($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa slide thành công";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa slide thất bại";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/footer'); 
		
	}
	public function delete_slide($id){
		Session::init();
		$table='slider';
		$cond='slider_ID='.$id;
		$slide=$this->load->model('slide');
		$data['slidebyid']=$slide->slide_by_id($table,$cond);
		foreach ($data['slidebyid'] as $key => $pro) {
			$path_uplink="App/View/Admin/slider/images/";
			unlink($path_uplink.$pro['image']);
		} 
		$result=$slide->delete_slide($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá slide thành công";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá slide thất bại";
			header('location:'.BASE_URL."Admin/list_slide?msg=".urlencode(serialize($message)));
		}
	}
	/////////////////////////////////////////////////Description///////////////////////////////////////////
	public function list_des($id){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$table2='des_product';
		$cond="des_product.product_ID ='$id'";
		$product=$this->load->model('product');	
		$data['list_description']=$product->list_des_product($table2,$cond);
		$this->load->view('Admin/product/list_description',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_des($id){
		Session::init();
		$table='des_product';
		$table_product='product';
		$cond='des_ID='.$id;
		$cond1='product.product_ID=des_product.product_ID AND des_product.des_ID='.$id;
		$product=$this->load->model('product');
		$data1['list_product_by_id']=$product->product_by_id($table_product,$table,$cond1);
		foreach ($data1['list_product_by_id'] as $key => $value) {
		 	$id_product=$value['product_ID'];
		 } 
		$result=$product->delete_des($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá mô tả thành công";
			header('location:'.BASE_URL."Admin/list_des/$id_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá mô tả thất bại";
			header('location:'.BASE_URL."Admin/list_des/$id_product?msg=".urlencode(serialize($message)));
		}
	}
  	public function edit_des($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$product=$this->load->model('product');
		$cond="des_ID=".$id."";
		$table="des_product";
		$data['des_by_id']=$product->des_by_id($table,$cond);
		$this->load->view('Admin/product/edit_description',$data);
		$this->load->view('Admin/footer');
	}
	public function update_des($id){
		Session::init();
		$cond="des_ID=".$id."";
		$cond1='product.product_ID=des_product.product_ID AND des_product.des_ID='.$id;
		$table="des_product";
		$table_product='product';
		$des=$_POST['des'];
		$store=$_POST['store'];
		$product=$this->load->model('product');
		$data= array(
			'description'=>$des,
			'store'=>$store
		);
		$data1['list_product_by_id']=$product->product_by_id($table_product,$table,$cond1);
		foreach ($data1['list_product_by_id'] as $key => $value) {
		 	$id_product=$value['product_ID'];
		} 
		$result=$product->update_des($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa mô tả thành công";
			header('location:'.BASE_URL."Admin/list_des/$id_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa mô tả thất bại";
			header('location:'.BASE_URL."Admin/list_des/$id_product?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider'); 
		$this->load->view('Admin/footer');
	}
	public function list_image($id){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$table2='images';
		$cond="images.product_ID ='$id'";
		$product=$this->load->model('product');	
		$data['list_image']=$product->list_image_product($table2,$cond);
		$this->load->view('Admin/product/list_image',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_image($id){
		Session::init();
		$table='images';
		$table_product='product';
		$cond='images_ID='.$id;
		$cond1='product.product_ID=images.product_ID AND images.images_ID='.$id;
		$product=$this->load->model('product');
		$data1['list_product_by_id']=$product->product_by_id($table_product,$table,$cond1);
		foreach ($data1['list_product_by_id'] as $key => $value) {
		 	$id_product=$value['product_ID'];
		} 
		$result=$product->delete_image($table,$cond);
		if ($result==1) {
			$message['msg']="Xoá ảnh thành công";
			header('location:'.BASE_URL."Admin/list_image/$id_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Xoá ảnh thất bại";
			header('location:'.BASE_URL."Admin/list_image/$id_product?msg=".urlencode(serialize($message)));
		}
	}
  	public function edit_image($id){
  		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$product=$this->load->model('product');
		$cond="images_ID=".$id."";
		$table="images";
		$data['image_by_id']=$product->image_by_id($table,$cond);
		$this->load->view('Admin/product/edit_images',$data);
		$this->load->view('Admin/footer');
	}
	public function update_image($id){
		Session::init();
		$cond="images_ID=".$id."";
		$table="images";
		$table_product='product';
		$cond1='product.product_ID=images.product_ID AND images.images_ID='.$id;
		$product=$this->load->model('product');
		$img=$_FILES['image']['name'];
		$path_uploads="App/View/Admin/product/images/".$img;
		if($img){
			$data['productbyid']=$product->product_by_id($table_product,$table,$cond1);
				foreach ($data['productbyid'] as $key => $pro) {
					$id_product=$pro['product_ID'];
				 	// $path_uplink="App/View/Admin/product/images/";
				 	// unlink($path_uplink.$pro['images']);				
			} 
			$data=array(
				'images'=>$img
			);
			move_uploaded_file($_FILES['image']['tmp_name'],$path_uploads);
		}
		else{
			$data=array(
			);
		}
		$result=$product->update_image($table,$data,$cond);
		if ($result==1) {
			$message['msg']="Sửa ảnh thành công";
			header('location:'.BASE_URL."Admin/list_image/$id_product?msg=".urlencode(serialize($message)));
		}else{
			$message['msg']="Sửa ảnh thất bại";
			header('location:'.BASE_URL."Admin/list_image/$id_product?msg=".urlencode(serialize($message)));
		}
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider'); 
		$this->load->view('Admin/footer');
	}
	//////////////////////////////////////////////POST///////////////////////////////////////////////////////
	public function add_post(){
		Session::init();
		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/post/add_post');
		$this->load->view('Admin/footer');
	}
	public function insert_post(){
			$img=$_FILES['post_image']['name'];
			$tmp_image=$_FILES['post_image']['tmp_name'];
			$path_uploads="App/View/Admin/post/post_image/".$img;


			$post_Name=$_POST['post_Name'];
			
			$post_summary=$_POST['post_summary'];
			
			$post_content=$_POST['post_content'];

			$table="post";
			$data= array(
				'post_image'=>$img,
				'post_Name'=>$post_Name,
				'post_summary'=>$post_summary,
				'post_content'=>$post_content
			);
			$postModel=$this->load->model('post');
			$result=$postModel->insertpost($table,$data);
			if ($result==1) {
				move_uploaded_file($tmp_image,$path_uploads);
				$message['msg']="Thêm bài viết thành công";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}else{
				$message['msg']="Thêm bài viết thất bại";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}
		}
	public function list_post(){
		Session::init();

		$table_post="post";
		$postModel=$this->load->model('post');
		$data['post']=$postModel->post($table_post);


		$this->load->view('Admin/header');
		$this->load->view('Admin/slider');
		$this->load->view('Admin/post/list_post',$data);
		$this->load->view('Admin/footer');
	}
	public function delete_post($id){
			$table="post";
			$cond="post_ID=".$id."";
			$postModel=$this->load->model('post');
			$data['postbyid']=$postModel->postbyid($table,$cond);
			foreach ($data['postbyid'] as $key => $post) {
				 $path_uplink="App/View/Admin/post/post_image/";
				 unlink($path_uplink.$post['post_image']);
			} 
			$result=$postModel->deletepost($table,$cond);
			if ($result==1) {
				$message['msg']="Xoá bài viết thành công";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}else{
				$message['msg']="Xoá bài viết thất bại";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}
		}
	public function edit_post($id){
			$table_post="post";
			$cond="post_ID=".$id."";
			$postModel=$this->load->model('post');

			$data['postbyid']=$postModel->postbyid($table_post,$cond); 

			$this->load->view('admin/header');
			$this->load->view('admin/slider');
			$this->load->view('admin/post/edit_post',$data);
			$this->load->view('admin/footer');
		}
	public function update_post($id){
			$table_post="post";
			$cond="post_ID=".$id."";
			$postModel=$this->load->model('post');

			$post_Name=$_POST['post_Name'];
			$post_summary=$_POST['post_summary'];
			$post_content=$_POST['post_content'];

			$img=$_FILES['post_image']['name'];
			$tmp_image=$_FILES['post_image']['tmp_name'];
			$path_uploads="App/View/Admin/post/post_image/".$img;
			if ($img) {
				
				// $data['postbyid']=$postModel->postbyid($table_post,$cond);
				// foreach ($data['postbyid'] as $key => $pos) {
				//  	$path_uplink="App/View/Admin/post/post_image/";
				//  	unlink($path_uplink.$pos['post_image']);
				 
				//  } 
				
				$data= array(

					'post_image'=>$img,
					'post_Name'=>$post_Name,
					'post_summary'=>$post_summary,
					'post_content'=>$post_content
				);
				move_uploaded_file($tmp_image,$path_uploads);
			}else{
				$data= array(
					//'HinhSanPham'=>$unique_image,
					'post_Name'=>$post_Name,
					'post_summary'=>$post_summary,
					'post_content'=>$post_content
				);
			}

			
			$result=$postModel->updatepost($table_post,$data,$cond);
			if ($result==1) {
				
				$message['msg']="Cập nhật bài viết thành công";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}else{
				$message['msg']="Cập nhật bài viết thất bại";
				header('location:'.BASE_URL."Admin/list_post?msg=".urlencode(serialize($message)));
			}
		}
	//////////////////////////////////////////////ORDER//////////////////////////////////////////////////////
	public function order_product(){
			Session::init();
			$table_order="tbl_order";
			$table_order_details="order_details";
			$table_score="score";
			$table1='city';
			$cond1="city.city_ID =".$_POST['Tinh'];	
			
			$table2='district';
			$cond2="district.district_ID =".$_POST['Quan'];	

			$table3='wards';
			$cond3="wards.wards_ID =".$_POST['Phuong'];	

			$order=$this->load->model('order');

			$data['list_city']=$order->list_ciy($table1,$cond1);
			foreach($data['list_city'] as $keys=>$list_city){
				$city_name=$list_city['city_name'];
			};

			$data['list_district']=$order->list_district($table2,$cond2);
			foreach($data['list_district'] as $keys=>$list_district){
				$district_name=$list_district['district_name'];
			};

			$data['list_wards']=$order->list_wards($table3,$cond3);
			foreach($data['list_wards'] as $keys=>$list_wards){
				$wards_name=$list_wards['wards_name'];
			};
			$Name=$_POST['Name'];
			$Email=$_POST['Email'];
			$Phone=$_POST['Phone'];
			$address=$_POST['DiaChi'].", ".$wards_name.", ".$district_name.", ".$city_name;
			$order_ID=rand(0,9999);
			$pass1=$_POST['pass1'];
			$pass2=$_POST['pass2'];

			date_default_timezone_set('asia/ho_chi_minh');
			$date=date("d/m/Y");
			$hour=date("h:i:sa");
			$order_Date= $date.$hour;

			$table_customer='customer';
			
	        if ($pass1&&$pass2) {
	        	$homeModel=$this->load->model('homeModel');
		        $data['list_customer']=$homeModel->list_customer($table_customer);
	        	$count=0;
		        foreach ($data['list_customer'] as $key => $values) {
		            if(strcmp($values['Email'], $Email)==0){
		                $message['msg']='Email bị trùng';
		                setcookie('Name',$Name,time()+5);
		                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
		                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
		                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
		                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
		                $count++;
		                header('location:'.BASE_URL."index/order?msg=".urlencode(serialize($message)));    
		            }else if(strcmp($values['Phone'],$Phone)==0){
		                $message['msg']='Số điện thoại bị trùng';
		                setcookie('Name',$Name,time()+5);
		                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
		                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
		                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
		                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
		                $count++;
		                header('location:'.BASE_URL."index/order?msg=".urlencode(serialize($message)));    
		            }else if(strlen($pass1)<6 || strlen($pass1) > 18){
		                $message['msg']='Mật khẩu từ 6 đến 18 kí tự';
		                setcookie('Name',$Name,time()+5);
		                setcookie('Email',$Email,time()+5); setcookie('Phone',$Phone,time()+5); 
		                setcookie('Tinh',$city_name,time()+5); setcookie('Quan',$district_name,time()+5);
		                setcookie('Phuong',$wards_name,time()+5); setcookie('Address',$_POST['DiaChi'],time()+5);
		                setcookie('ID_Phuong',$_POST['Phuong'],time()+5); setcookie('ID_Quan',$_POST['Quan'],time()+5);
		                $count++;
		                header('location:'.BASE_URL."index/order?msg=".urlencode(serialize($message))); 
		            }
		        }	
				if($count==0){
					if ($pass1==$pass2) {
						$data_customer= array(
	                        'Name'=>$Name,
	                        'Email'=>$Email,
	                        'image'=>'th.jpg',
	                        'Password'=>md5($pass1),
	                        'Phone'=>$Phone,
	                        'Address'=>$address
	                    );
	                    // var_dump($data);
	                    $result=$order->register_customer($table_customer,$data_customer); 
					}
					else{
						$message['msg']="Hai mật khẩu không khớp nhau";
	                    header('location:'.BASE_URL."index/ajax/order?msg=".urlencode(serialize($message)));
					}
					$data_order=array(
						'order_ID'=>$order_ID,
						'order_Date'=>$date.' '.$hour,
						'Status'=>0
					);

					$result_order=$order->insert_order($table_order,$data_order);


					if (Session::get("cart")==true) {
						$total=0;
						foreach (Session::get("cart") as $key => $value) {
							$data_details=array(
								'order_ID'=>$order_ID,
								'product_ID'=>$value['product_ID'],
								'quantity'=>$value['quantity'],
								'Name'=>$Name,
								'Phone'=>$Phone,
								'Address'=>$address	
							);
							$total+=($value['price']*$value['quantity']);
							if ($total<300000){
								$score=0;
							}
							else if ($total < 800000) {
								$score=1;
							}
							else if ($total < 1000000) {
								$score=2;
							}
							else{
								$score=3;
							}
							$result_order_details=$order->insert_order_details($table_order_details,$data_details);
						}
						
						if ($result_order_details) {
							if (Session::get("customer")==true) {
								$cond_score="score.customer_ID=".$_SESSION['customer_id'];
								$data['list_score']=$order->list_score($table_score,$cond_score);
								// var_dump($data['list_score']);
								if (!$data['list_score']) {
									$data_score=array(
										'customer_ID'=>$_SESSION['customer_id'],
										'score'=>$score
									);
									$result=$order->insert_score($table_score,$data_score);
									// var_dump($data_score);
								}else{
									foreach ($data['list_score'] as $key => $values) {
										$score_db=$values['score'];
										$data_score=array(
											'score'=>($score_db+$score),
										);
										// var_dump($data_score);
										$order->update_score($table_score,$data_score,$cond_score);
									}
								}
							}
							///Mailer
							$value=$this->Mail($Email,$Name,$order_ID);
							if ($value==1) {
								Session::unset('cart');
								header('location:'.BASE_URL."index/payment/".$order_ID);
							}
							
						}
					}
				}
				else{
					echo "Vui lòng đặt sản phẩm";
				}
			}
			else{
				$data_order=array(
					'order_ID'=>$order_ID,
					'order_Date'=>$date.' '.$hour,
					'Status'=>0
				);

				$result_order=$order->insert_order($table_order,$data_order);


				if (Session::get("cart")==true) {
					$total=0;
					foreach (Session::get("cart") as $key => $value) {
						$data_details=array(
							'order_ID'=>$order_ID,
							'product_ID'=>$value['product_ID'],
							'quantity'=>$value['quantity'],
							'Name'=>$Name,
							'Phone'=>$Phone,
							'Address'=>$address	
						);
						$total+=($value['price']*$value['quantity']);
						if ($total<300000){
							$score=0;
						}
						else if ($total < 800000) {
							$score=1;
						}
						else if ($total < 1000000) {
							$score=2;
						}
						else{
							$score=3;
						}
						$result_order_details=$order->insert_order_details($table_order_details,$data_details);
					}
					
					if ($result_order_details) {
						if (Session::get("customer")==true) {
							$cond_score="score.customer_ID=".$_SESSION['customer_id'];
							$data['list_score']=$order->list_score($table_score,$cond_score);
							// var_dump($data['list_score']);
							if (!$data['list_score']) {
								$data_score=array(
									'customer_ID'=>$_SESSION['customer_id'],
									'score'=>$score
								);
								$result=$order->insert_score($table_score,$data_score);
								// var_dump($data_score);
							}else{
								foreach ($data['list_score'] as $key => $values) {
									$score_db=$values['score'];
									$data_score=array(
										'score'=>($score_db+$score),
									);
									// var_dump($data_score);
									$order->update_score($table_score,$data_score,$cond_score);
								}
							}
						}
						///Mailer
						$value=$this->Mail($Email,$Name,$order_ID);
						if ($value==1) {
							Session::unset('cart');
							header('location:'.BASE_URL."index/payment/".$order_ID);
						}
						
					}
				}
				else{
					echo "Vui lòng đặt sản phẩm";
				}
			}		
	}
	public function order_delete($id){
		Session::init();
			$table_order='tbl_order';
			$cond="tbl_order.order_ID='$id'";
			$order=$this->load->model('order');
			$result=$order->delete_order($table_order,$cond);
			if ($result==1) {
				$message['msg']="Xoá đặt hàng thành công";
				header('location:'.BASE_URL."Admin/list_order?msg=".urlencode(serialize($message)));
			}else{
				$message['msg']="Xoá đặt hàng thất bại";
				header('location:'.BASE_URL."Admin/list_order?msg=".urlencode(serialize($message)));
			}
		}
	public function list_order(){
		Session::init();
			$table_order='tbl_order';
			$order=$this->load->model('order');
			$data['order']=$order->list_order($table_order);

			$this->load->view('Admin/header');
			$this->load->view('Admin/slider');	
			$this->load->view('Admin/order/order',$data);
			$this->load->view('Admin/footer');
		}
		public function order_details($order_ID){
			Session::init();
			$table_order_detail='order_details';
			$table_product="product";
			$order=$this->load->model('order');

			$cond1="$table_order_detail.order_ID=$order_ID AND $table_product.product_ID=$table_order_detail.product_ID";
			$cond2="$table_order_detail.order_ID=$order_ID";
			$data['order_details']=$order->list_order_details($table_product,$table_order_detail,$cond1);
			$data['order_info']=$order->list_info($table_order_detail,$cond2);


			$this->load->view('Admin/header');
			$this->load->view('Admin/slider');	
			$this->load->view('Admin/order/order_detail',$data);
			$this->load->view('Admin/footer');
		}
		public function order_confirm($order_ID){
			Session::init();
			$table_order='tbl_order';
			$order=$this->load->model('order');
			$cond="$table_order.order_ID=$order_ID";
			$data=array(
				'Status'=>1
			);
			$result=$order->order_confirm($table_order,$data,$cond);

			if ($result==1) {
				$message['msg']="Đã xử lý thành công đơn hàng. Mã đơn hàng:".$order_ID;
				header('location:'.BASE_URL."Admin/list_order?msg=".urlencode(serialize($message)));
			}else{
				$message['msg']="Đã xử lý thất bại";
				header('location:'.BASE_URL."Admin/list_order?msg=".urlencode(serialize($message)));
			}
		}
	

}
?>
