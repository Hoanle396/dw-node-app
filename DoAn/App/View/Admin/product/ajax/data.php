 <?php
    require "PDO.php";
    $category_ID=$_POST['id1'];
    $sql="Select * from brand where brand.category_ID='$category_ID'";
    $stm=$db->prepare($sql);
    $stm->execute();
    $list_brand=$stm->fetchAll();
    foreach ($list_brand as $key => $list_brand) {?>


     <option <?php if($list_brand['category_ID']==$category_ID) echo "Selected";?> value="<?php echo $list_brand['brand_ID']?>"><?php echo $list_brand['brand_Name'];?></option>

<?php


    }
?>