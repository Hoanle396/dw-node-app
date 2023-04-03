<h1>Thêm loại sản phẩm</h1>
<div class="col-md-6">
    <form action="<?php echo BASE_URL?>Admin/insert_brand" method="POST">
        <div class="form-group">
            <label for="email">Tên danh mục:</label>
            <select name="category_ID" class="form-control">
                <option>Chọn danh mục</option>
                <?php foreach($list_category as $key=>$list_category){ ?>
                <option value="<?php echo $list_category['category_ID']?>"><?php echo $list_category['category_name']?></option>
                <?php }?>
            </select>
        </div>
        <input required type="text" name="brand_name" placeholder="Nhập loại sản phẩm" class="form-control" />
        <button type="submit" class="btn btn-default">Thêm</button>
    </form>
</div>
