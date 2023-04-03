 <?php foreach($list_category_brand as $key=>$list_category_brand) { 
    $name_category=$list_category_brand['category_name'];
    $id_category=$list_category_brand['category_ID'];
 }?>
 <?php foreach($list_brand as $key=>$list_brand){
    $name_brand=$list_brand['brand_Name'];
    $id_brand=$list_brand['brand_ID'];
 }?>

 <section class="cartegory">
        <div class="container">
            <div class="cartegory-top row">
                
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="cartegory-left">
                    <ul>
                        <?php foreach($list_category as $key=>$list_category){?>
                        <li class="cartegory-left-li "><a href="#"><?php echo $list_category['category_name']?></a>
                            <ul>
                                <?php 
                                $header=new header(); 
                                $query='Select * from brand where brand.category_ID='.$list_category['category_ID'].'';
                                $stm=$header->con->prepare($query);
                                $stm->execute();
                                $brand_by_id= $stm->fetchAll();
                                ;foreach($brand_by_id as $key=>$brand_by_id){
                                     $id=$brand_by_id['brand_ID'].",".$list_category['category_ID'];
                                    ?>
                                <li><a href="<?php echo BASE_URL?>index/category/<?php echo $id?>"><?php echo $brand_by_id['brand_Name']?></a></li>
                                <?php }?>
                            </ul>
                        </li>
                        <?php }?>
                    </ul>

                </div>
                <div class="cartegory-right row">
                    <div class="cartegory-right-top-item">
                        <p><?php echo $name_brand?></p>
                    </div>
                      <div class="cartegory-right-top-item">
                        <?php $id1=$id_brand.",".$id_category;?>
                        <form action="<?php echo BASE_URL?>index/Search/<?php echo $id1?>" method="POST">
                            <select name="Sapxep" id="Sapxep" style="float: left;">
                                <option value="DESC">Giá cao đến thấp</option>       
                                <option value="ASC">Giá thấp đến cao</option>
                            </select>
                            <input type="submit" name="" value="Tìm" style="width:13%;height: 40px;float: left;">
                        </form>
                    </div>
                     <div class="cartegory-right-content row">

                        <?php $row=1;
                        foreach($search_product as $key=>$search_product){ 
                          $bien=$id_category.",".$search_product['product_ID'].",".$id_brand.",".$search_product['color_ID'];
                        ?>
                        <div class="cartegory-right-content-item">
                            <img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $search_product['image']?>" alt="">
                            <h1><a href="<?php echo BASE_URL?>index/detail/<?php echo $bien?>"><?php echo $search_product['product_name']?></a></h1>
                            <?php if($search_product['discount']==0){?>
                                <p>
                                    <?php echo number_format($search_product['price'],0,',','.').'đ' ?> 
                                </p>
                            <?php }else{?>
                                <p>  
                                    <del><?php echo number_format($search_product['price'],0,',','.').'đ'?></del>
                                  ===
                                  <?php echo number_format($search_product['price']*(1-($search_product['discount']/100)),0,',','.').'đ' ?>       
                                </p>
                            <?php }?>
                        </div>
                        <?php $row++;}?>
                    </div>
                </div>
                
                    <div class="cartegory-right-bottom row">
                        <?php
                            $Name='';
                            if (isset($_SESSION['Name'])) {
                                $Name=$_SESSION['Name'];
                            }
                            $trang=ceil($row/8);
                        ?>
                       <div class="cartegory-right-bottom-items">
                           <p></p>
                       </div>
                       <div class="cartegory-right-bottom-items">
                        <p><span>«</span>
                            <?php 
                                for ($i=1; $i <= $trang; $i++) { 
                                    $id=$id_brand.",".$id_category.",".$i;?>
                                   <a href="<?php echo BASE_URL?>index/Search/<?php echo $id?>" style="font-size:15px;color: black;padding-right: 20px;"><?php echo $i ?></a>
                                <?php }?>
                        <span>»</span>Trang cuối</p>
                        </div>
                   </div> 
            </div>
        </div>
    </section>