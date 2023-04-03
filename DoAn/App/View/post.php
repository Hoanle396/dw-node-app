<style type="text/css">
	.abc{
		width: 100%;
		height: 20%;
		display: inline-block;
		padding-top: 12px;
	}
	.abc > .aa{
		width: 65%;
		height: 100%;
		float: left;
		padding-left: 23px;
	}
	.abc > .aa > h5 > a{
		color: #333;
		font-size: 15px;
	}
	.abc > .aa > .new_detail{
		font-size: 14px;
		font-weight: normal;
		padding-top: 12px;
	}
	.Trai{
		border-radius: 0px;
    	box-shadow: none;
    	border: #ddd 2px solid;
	}
	.Trai > .Z{
		padding: 5px;
		border: 0;
		font-weight: bold;
		color: #333;
    	background-color: #f5f5f5;
    	border-top-left-radius: 3px;
    	border-top-right-radius: 3px;
    	text-align: center;
	}
</style>
<section class="cartegory">
	<div class="container">
        <div class="cartegory-top row">
                
            <p style="font-size: 23px;">Trang chủ</p><span>⟶</span> <p style="font-size: 23px;">Tin tức</p>
        </div>
    </div>
    <h3 style="text-align:center;">Tin tức</h3>
    <div class="container">
    	<div style="width: 75%;">
    		<h6>Những tin tức nổi bật</h6>
    		<?php foreach ($post as $key => $post) { ?>
    		
	    		<div class="abc">
	    			<a href="">
	    				<img src="<?php echo BASE_URL?>App/View/Admin/post/post_image/<?php echo $post['post_image']?>" style="width: 30%;height: 160px;float: left;">
	    			</a>				
		    		<div class="aa">
		    			<h5><a href="<?php echo BASE_URL?>index/detail_post/<?php echo $post['post_ID']?>"><?php echo $post['post_Name']?></a></h5>
			    		<div class="new_detail">
			    			<?php echo $post['post_summary']?>
			    		</div>
		    		</div>
	    		</div>
	    		<hr style="width: 100%;height: 1px;">
    		<?php }?>
		</div>
    </div>

</section>