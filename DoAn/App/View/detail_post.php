<?php 
	foreach ($postbyid as $key => $value) {
		$post_Name=$value['post_Name'];
		$post_summary=$value['post_summary'];
		$post_content=$value['post_content'];
	}
?>
<section class="cartegory">
	<div class="container">
        <div class="cartegory-top row">
                
            <p style="font-size: 23px;">Trang chủ</p><span>⟶</span> <p style="font-size: 23px;">Tin tức</p><span>⟶</span> <p style="font-size: 23px;"><?php echo $post_Name?></p>
        </div>
    </div>
    <div class="container">
    	<div style="width: 90%;font-weight: normal;font-size: 14px;">
    		<h1><?php echo $post_Name?></h1>
    		<p><?php echo $post_summary ?></p>
    		<hr style="width: 100%;height: 1px;margin-top: 17px;">
    		<p style="padding-top:17px"><?php echo $post_content ?></p>
		</div>
    </div>

</section>