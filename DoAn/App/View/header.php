<?php 
    class header extends Dmodel
    {
        public function __construct(){
            $data = array();
            parent::__construct();
        }
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<?php echo BASE_URL?>App/View/mainstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>

    
    <title>Website - Ivy</title>
     <style type="text/css">
        .action{
                position: fixed;
                top: 10px;
                right: 30px;
                margin-right: 105px;
                margin-top: 5px;
            }
           .action .profile{
                position: relative;
                width: 50px;
                height: 50px;
                border-radius: 50%;
                overflow: hidden;
                cursor: pointer;
            }
           .action .profile img{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
            .action .menu{
                position: absolute;
                top: 120px;
                right: -10px;
                padding: 10px 20px;
                background: #fff;
                width: 200px;
                box-sizing: 0 5px 25px rgba(0,0,0,0.1);
                border-radius: 15px;
                transition: 0.5s;
                visibility: hidden;
                opacity: 0;
            }
            .action .menu::before{
                content: '';
                position: absolute;
                top: -5px;
                right: 28px;
                width: 20px;
                height: 20px;
                background: #fff;
                transform: rotate(45deg);    
            }
            .action .menu h3{
                width: 100%;
                text-align: center;
                font-size: 18px;
                font-weight: 500;
                color: #555;
                line-height: 1.2em;
            }
            .action .menu h3 span{
                font-size: 20px;
                color: blue;
                font-weight: 400;
            }
            .action .menu.active{
                top: 80px;
                visibility: visible;
                opacity: 1;
            }
            .action .menu ul{
                flex-direction: column;
            }
           .action .menu ul li{
                list-style: none;
                padding: 10px 0;
                border-top: 1px solid rgba(0, 0, 0, 0.05);
                display: flex;
                align-items: center;
                
            }
           .action .menu ul li img{
                max-width: 20px;
                margin-right: 10px;
                opacity: 0.5;
                transition: 0.5s;
            }
            .action .menu ul li:hover img{
                opacity: 1; 
            }
           .action .menu ul li a{
                display: inline-block;
                text-decoration: none;
                color: #555;
                font-weight: 500;
                transition: 0.5s;
                font-size: 14px;
            }
            .action .menu ul li:hover a{
                color: #ff5d94 ;
            }
    </style>
</head>
<body>
    <secsion class="top">
        <div class="container">
            <div class="row">
                <div class="top-logo">
                  <a href="<?php echo BASE_URL ?>"><img src="<?php echo BASE_URL?>image/logo.png" alt="" height="44" width="200"></a>
                </div>
                <div class="top-menu-items">
                    <ul>
                       <?php foreach($list_category as $key=>$list_category){ ?>
                        <li><?php echo $list_category['category_name']?>
                            
                            <ul class="top-menu-item">
                               <?php 
                                $header=new header(); 
                                $query='Select * from brand where brand.category_ID='.$list_category['category_ID'].'';
                                $stm=$header->con->prepare($query);
                                $stm->execute();
                                $brand_by_id= $stm->fetchAll();
                                foreach($brand_by_id as $keys=>$brand_by_id){ 
                                    $bien=$brand_by_id['brand_ID'].",".$list_category['category_ID'];
                                ?>
                                <li><label style="width: 200px;text-align: center;"><a href="<?php echo BASE_URL?>index/category/<?php echo $bien?>"><?php echo $brand_by_id['brand_Name']?></a></label></li>
                               <?php }?>
                            </ul>
                        </li>
                       <?php }?>
                       <li><a href="<?php echo BASE_URL?>index/post" style="color: black;">Tin tức</a></li>
                    </ul>
                    
                </div>
                <div class="top-menu-icons">
                    <ul>
                        <li style="width: 200px;">
                            <div>
                                <form action="<?php echo BASE_URL?>index/Search/<?php echo $bien?>" method="POST">
                                <input type="text" placeholder="tìm kiếm" name="Search" style="width: 150px;">
                                <button type="submit"><i class="fas fa-search" style="margin-top: -10px;"></i></button>    
                            </form>
                            </div>
                        </li>
                        <?php if(Session::get('customer')==true){ ?>
                        <li style="max-width: 180px;width: 90px;max-height: 100px;">
                            <div class="action">
                                <div class="profile" onclick="menuToggle();">
                                    <img src="<?php echo BASE_URL?>Icon/<?php echo $_SESSION['image']?>">
                                </div>
                                <div class="menu">
                                    <h3>Xin chào, <br><span><?php echo $_SESSION['username']?></span></h3>
                                    <ul>
                                        <li><img src="<?php echo BASE_URL?>Icon/Icon.jpg"><a href="<?php
                                        echo BASE_URL?>index/View_Profile">Trang cá nhân</a></li>
                                        <li><img src="<?php echo BASE_URL?>Icon/edit.png"><a href="<?php
                                        echo BASE_URL?>index/Edit_Profile">Sửa trang cá nhân</a></li>
                                        <li><img src="<?php echo BASE_URL?>Icon/log-out.png"><a href="<?php echo BASE_URL?>index/logout">Đăng xuất</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <?php  }else{ ?>
                        <li> 
                            <a href='<?php echo BASE_URL ?>index/login' style="color: black;"><i class="fas fa-user-secret"></i></a>
                        </li>
                        <?php } ?>
                        <li>
                            <a href="<?php echo BASE_URL ?>index/cart"><i class="fas fa-shopping-cart" style="color: black;font-size: 25px;"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </secsion>
    <script type="text/javascript">
        function menuToggle(){
            const toggleMenu=document.querySelector('.menu');
            toggleMenu.classList.toggle('active');
        }
    </script>
