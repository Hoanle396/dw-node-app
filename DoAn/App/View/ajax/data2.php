 <?php
    require "PDO.php";
    $district_ID=$_POST['id2'];
    $sql="Select * from wards where wards.district_ID='$district_ID'";
    $stm=$db->prepare($sql);
    $stm->execute();
    $list_wards=$stm->fetchAll();
    foreach ($list_wards as $key => $list_wards) {?>


     <option value="<?php echo $list_wards['wards_ID']?>"><?php echo $list_wards['wards_name'];?></option>

<?php


    }
?>