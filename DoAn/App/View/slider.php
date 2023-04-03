 <section class="sliders">
            <div class="aspect-ratio-169">
                <?php $count=0;foreach ($list_slide as $key => $value) {?>
                    <img src="<?php echo BASE_URL?>App/View/Admin/slider/images/<?php echo $value['image']?>">
                <?php $count++;}?>
            </div>
            <div class="dot-container">
                <div class="dot active"></div>
                <?php for ($i=0; $i < $count-1; $i++) { ?>
                   <div class="dot"></div>
                <?php } ?>
           </div>
    </section>