<!-- Manage Category Start -->


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


        <?php foreach ($all_product as $product) { ?>
   <div class="row panel panel-bd lobidrag" style="margin: 5px;padding: 10px">
    <div class="col-sm-12 col-md-3" >

        <div class="image_box" >

         <?php echo "<img class='zoom' src='".html_escape($product->image)."' id='img1'  >";?>
        </div>

    </div>

    <div class="col-sm-12 col-md-8">

        <div class="col-sm-6 col-md-6 " >

          <table class="table" width="100%">


<!--            <caption  class="resumehead">--><?php //echo display('positional_information')?><!--</caption>-->

                    <tr>
                        <th>Category</th>
<!--                        <td>--><?php //echo html_escape($row[0]['designation']);?><!--</td>-->
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
                        <td><?php echo html_escape($row[0]['hrate']);?></td>
                    </tr>
              <tr>
                  <th>SKU</th>
                  <td><?php echo html_escape($row[0]['hrate']);?></td>
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
                      <td><?php echo html_escape($product->product_model); ?></td>
                  </tr>
              <tr>
                  <th>Associated Tag</th>
                  <td><?php echo html_escape($row[0]['hrate']);?></td>
              </tr>


</table>






</div>


</div>

   </div>

        <?php } ?>


    </section>
    <?php echo  $this->uri->segment(4);?>
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

    $('.lobidrag').pagination({
        dataSource: [1, 2, 3, 4, 5, 6, 7, ... , 195],
    callback: function(data, pagination) {
        // template method of yourself
        var html = template(data);
        dataContainer.html(html);
    }
    })
</script>
