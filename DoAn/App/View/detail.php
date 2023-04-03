<?php foreach($list_category_brand as $key=>$list_category_brand) { 
    $id_category=$list_category_brand['category_ID'];
    $name_category=$list_category_brand['category_name'];
 }?>
 <?php foreach($list_brand as $key=>$list_brand){
    $id_brand=$list_brand['brand_ID'];
    $name_brand=$list_brand['brand_Name'];
 }?>
<?php foreach($list_product as $key=>$list_product){
    $id_product=$list_product['product_ID'];
    $name_product=$list_product['product_name']; 
    $img=$list_product['image'];
    $price=$list_product['price'];
    $discount=$list_product['discount'];
}?>
<?php foreach($list_color_product as $key=>$list_color_product){
    $id_color=$list_color_product['color_ID'];
    $name_color=$list_color_product['color_name'];
    $color_image=$list_color_product['image_color'];
 }?>
 <style type="text/css">
     #p{
        font-size: 23px;
     }
 </style>
<section class="product">
        <div class="container">
            <div class="product-top row">
                <p id="p">Trang chủ</p> <span>⟶	</span> <p id="p"><?php echo $name_category?></p> <span>⟶</span> <p id="p"><?php echo $name_brand?></p><span>⟶</span><p id="p"><?php echo $name_product?></p>
            </div>
            <div class="product-content row">
                <div class="product-content-left row">
                    <div class="product-content-left-big-img">
                        <img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $img ?>" alt="">
                    </div>
                    <div class="product-content-left-small-img">
                        <?php foreach($list_images_product as $keys=>$list_images_product){?>
                        <img src="<?php echo BASE_URL?>App/View/Admin/product/images/<?php echo $list_images_product['images']?>" alt="">
                        <?php }?>
                    </div>
                </div>
                <div class="product-content-right">
                    <div class="product-content-right-product-name">
                        <h1><?php echo $name_product ?></h1>
                        <p>MSP: <?php echo $id_product?></p>
                    </div>
                    <div class="product-content-right-product-price">
                          <?php if($discount==0){?>
                                <p>
                                    <?php $subtotal=$price; echo number_format($subtotal,0,',','.').'đ' ?> 
                                </p>
                            <?php }else{?>
                                <p>  
                                    <del><?php echo number_format($price,0,',','.').'đ'?></del>
                                  ===
                                  <?php $subtotal=$price*(1-$discount/100);echo number_format($subtotal,0,',','.').'đ' ?></br>
                                  <span style="color:#D61713;font-size: 12px;"><?php echo $discount.'%'?></span>       
                                </p>
                            <?php }?>
                    </div>
                    <div class="product-content-right-product-color">
                        <p><span style="font-weight: bold;">Màu sắc:</span><?php echo $name_color?><span style="color: red;">*</span></p>
                        <div class="product-content-right-product-color-img">
                            <img src="<?php echo BASE_URL?>App/View/Admin/color/image_color/<?php echo $color_image?>" alt="">
                        </div>
                    </div>
                    <div class="product-content-right-product-size">
                        <p style="font-weight: bold;">Size:</p>
                        <div class="size" id="size">
                             <form action="<?php echo BASE_URL ?>index/Add_cart" method="POST">
                                <select name="size" style="width: 50px;height: 35px;">
                                    <?php foreach($list_size as $keys=>$list_size){?>
                                    <option value="<?php echo $list_size['size']?>"><?php echo $list_size['size']?></option>
                                    <?php }?>
                                </select>
                            
                        </div>
                    </div>
                   
                    <div class="quantity">
                        <p style="font-weight: bold;padding-top: 20px;">Số lượng:</p>
                        <input type="number" min="0" value="1" name="quantity" style="margin-left: 12px;height: 50px;margin-top: 20px;"> 
                    </div>
                    <div class="product-content-right-product-button">
                            <input type="hidden" name="product_ID" value="<?php echo $id_product ?>" />
                            <input type="hidden" name="product_name" value="<?php echo $name_product ?>" />
                            <input type="hidden" name="color" value="<?php echo $color_image ?>" />
                            <input type="hidden" name="image" value="<?php echo $img ?>" />
                            <input type="hidden" name="discount" value="<?php echo $discount ?>" />
                            <input type="hidden" name="price" value="<?php echo $subtotal ?>" />
                            <button type="submit" name="BuyProduct"><i class="fas fa-shopping-cart"></i> <p>MUA HÀNG</p></button>
                        
                        
                    </div>
                    </form>
                   
                    <div class="product-content-right-product-icon">
                        <div class="product-content-right-product-icon-item">
                            <i class="fas fa-phone-alt"></i> <p>Hotline</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-comments"></i> <p>Chat</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-envelope"></i><p>Mail</p>
                        </div>
                    </div>
                    <div class="product-content-right-product-QR">
                        <img src="image/qrcode2.png" alt="">
                    </div>
                    <div class="product-content-right-bottom">
                        <div class="product-content-right-bottom-top">
                            ∨
                        </div>
                        <div class="product-content-right-bottom-content-big">
                            <div class="product-content-right-bottom-content-title row">
                                <div class="product-content-right-bottom-content-title-item chitiet">
                                        <p>Chi tiết</p>
                                </div>
                                <div class="product-content-right-bottom-content-title-item baoquan">
                                        <p>Bảo quản</p>
                                </div>
                            </div>
                            <?php foreach($list_des_product as $key=>$list_des_product){?>
                            <div class="product-content-right-bottom-content">
                                <div class="product-content-right-bottom-content-chitiet">
                                   <?php echo $list_des_product['description']?>
                                </div>
                                <div class="product-content-right-bottom-content-baoquan">
                                    <?php echo $list_des_product['store']?>
                                </div>
                            </div>
                            <?php }?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<section class="product-related container">
        <div class="product-related-title">
            <p>SẢN PHẨM LIÊN QUAN</p>
        </div>
        <div class=" row product-content">
            <?php 
                foreach($list_brand_product as $key=>$list_brand_product){ 
                    $bien=$id_category.",".$id_product.",".$id_brand.",".$id_color;
                ?>
                <div class="product-related-item">
                    <img src="<?php echo BASE_URL?>App/View/Admin/product/image_product/<?php echo $list_brand_product['image']?>" alt="">
                    <h1><a href="<?php echo BASE_URL?>index/detail/<?php echo $bien?>"><?php echo $list_brand_product['product_name']?></a></h1>
                    <p><?php echo number_format($list_brand_product['price'],0,',','.').'đ' ?></p>
                </div>
            <?php }?>
        </div>
    </section>