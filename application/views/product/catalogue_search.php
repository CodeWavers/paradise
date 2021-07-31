<script src="<?php echo base_url() ?>assets/js/pagination.min.js" type="text/javascript"></script>
<div class="content-wrapper"  >
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Product</h1>
            <small>Catalogue</small>
            <ol class="breadcrumb">
                <li><a href=""><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Product</a></li>
                <li class="active">Catalogue</li>
            </ol>
        </div>
    </section>

    <section class="content" >

        <!-- Alert Message -->
        <?php
        $message = $this->session->userdata('message');
        if (isset($message)) {
            ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $message ?>
            </div>
            <?php
            $this->session->unset_userdata('message');
        }
        $error_message = $this->session->userdata('error_message');
        if (isset($error_message)) {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error_message ?>
            </div>
            <?php
            $this->session->unset_userdata('error_message');
        }
        ?>
          <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('CProduct/filter_category_wise', array('class' => 'form-inline', 'method' => 'post')) ?>
                        <?php
                        date_default_timezone_set("Asia/Dhaka");
                        $today = date('Y-m-d');
                        ?>
                        <div class="col-sm-6">
                                <div class="form-group row">
                            <label class="" for="category"><?php echo display('category') ?></label>
                            <select  name="category" class="form-control" id="category">
                                <option value="">--select one -- </option>
                                <?php
                                foreach ($category_list as $category) {
                                    ?>
                                    <option value="<?php echo $category['category_id']; ?>"><?php echo $category['category_name']; ?></option>
                                <?php } ?>
                            </select>
                        </div> 
                      </div>
                            <div class="col-sm-4" id="subCat_div">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="">Sub Category</label>
                                    <div class="col-sm-8">
                                        <select  name="subcategory" class="form-control" id="subcategory">
                                <option value="">--select one -- </option>
                                <?php
                                foreach ($subcategory_list as $subcategory) {
                                    ?>
                                    <option value="<?php echo $subcategory['sub_cat_id']; ?>"><?php echo $subcategory['subcat_name']; ?></option>
                                <?php } ?>
                            </select>
                                    </div>
                                </div>
                            </div>
                        <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                        <a  class="btn btn-warning" href="#" onclick="printDiv('purchase_div')"><?php echo display('print') ?></a>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>
            <?php foreach ($category_wise as $product) {?>
   <div class="row panel panel-bd lobidrag catalogue-panel" id="myUL">

    <div class="col-sm-12 col-md-4">

        <div class="image_box" >

         <?php echo "<img class='zoom' src='".html_escape($product->image)."' id='img1'  >";?>
        </div>

    </div>
    <div class="col-sm-12 col-md-8">
        <div class="col-sm-6 col-md-6 " >
          <table class="table" width="100%" id="myTable">
                <tr>
                    <th>Category</th>
                    <td><?php echo html_escape($product->category_name); ?></td>
                 </tr>
            <?php if($product->subcat_name):?>
              <tr>
                  <th>Sub-category</th>
                  <td><?php echo html_escape($product->subcat_name); ?></td>
              </tr>
            <?php endif;?>
                    <tr>
                        <th>Product Name</th>
                        <td><?php echo html_escape($product->product_name); ?></td>
                    </tr>
                    <tr>
                        <th>Parts No.</th>
                        <td><?php echo html_escape($product->parts);?></td>
                    </tr>
              <tr>
                  <th>SKU</th>
                  <td><?php echo html_escape($product->sku);?></td>
              </tr>
              <tr>
                  <th>Unit Type</th>
                  <td><?php echo html_escape($product->unit); ?></td>
              </tr>
                    <tr>
                        <th>Brand</th>
                        <td><?php echo html_escape($product->brand_name); ?></td>
                    </tr>
                  <tr>
                      <th>Model</th>
                      <td><?php echo html_escape($product->model_name); ?></td>
                  </tr>
              <tr>
                  <th>Associated Tag</th>
                  <td><?php echo html_escape($product->tag);?></td>
              </tr>
              
                                     
</table>
</div>
</div>
</div>
 <?php } ?>
    </section>
    <?php echo $links;?>
</div>



<script>



    // Get the img object using its Id
    img = document.getElementById("img1");
    // Function to increase image size
    function enlargeImg() {
        // Set image size to 1.5 times original
        img.style.transform = "scale(1.5)";
        // Animation effect
        img.style.transition = "transform 0.25s ease";
    }
    // Function to reset image size
    function resetImg() {
        // Set image size to original
        img.style.transform = "scale(1)";
        img.style.transition = "transform 0.25s ease";
    }


</script>
