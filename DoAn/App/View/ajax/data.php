 <?php
    require "PDO.php";
    $city_ID=$_POST['id1'];
    $sql="Select * from district where district.city_ID='$city_ID'";
    $stm=$db->prepare($sql);
    $stm->execute();
    $list_district=$stm->fetchAll();
    foreach ($list_district as $key => $list_district) {?>


     <option value="<?php echo $list_district['district_ID']?>"><?php echo $list_district['district_name'];?></option>

<?php


    }
?>