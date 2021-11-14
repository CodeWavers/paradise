Manage Category Start -->


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
                        <?php echo form_open('Cproduct/filter_category_wise', array('class' => 'form-inline', 'method' => 'post', 'id' => 'search_form')) ?>
                        <?php
                        date_default_timezone_set("Asia/Dhaka");
                        $today = date('Y-m-d');
                        ?>
                         <div class="row">
                            <div class="col-sm-5">
                                <div class="form-group row" style="width: 100%;">
                                    <label for="category_id" class="col-sm-4 col-form-label"><?php echo display('category') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="category_id" name="category_id" onchange="select_type()" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($category_list) { ?>
                                                {category_list}
                                                <option value="{category_id}">{category_name}</option>
                                                {/category_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5 text-center" >
                                <div id="subCat_div" style="display: none;">
                                    <div class="form-group row" style="width: 100%;">
                                        <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                        <div class="col-sm-8">
                                            <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" tabindex="1">

                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2 text-right">
                                <button type="submit" class="btn btn-success "><?php echo display('search') ?></button>
                                <a  class="btn btn-warning" href="#" onclick="printDiv('myUL')"><?php echo display('print') ?></a>

                            </div>

<!--                             <div class="col-sm-5">-->
<!--                                 <div class="form-group row" style="width: 100%;">-->
<!--                                     <label for="category_id" class="col-sm-4 col-form-label">Search</label>-->
<!--                                     <div class="col-sm-8">-->
<!--                                         <input class="form-control " type="text" id="myInput" onkeyup="myFunction()" placeholder="Search....">-->
<!--                                     </div>-->
<!--                                 </div>-->
<!--                             </div>-->

                        </div>

                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>

        <div style="margin: 0; padding : 0;" id="main_pan">


<!--        --><?php //foreach ($all_product as $product) { ?>
            <div class="row panel panel-bd lobidrag catalogue-panel" id="myUL">



                        <table class="table table-striped table-bordered datatable" id="myTable">
                            <thead>
                            <tr  class="header">


                                <th>Product Name</th>
                                <th>Product Category</th>
                                <th>Product Sub-Category</th>
                                <th>SKU</th>
                                <th>Parts No</th>
                                <th>Unit Type</th>
                                <th>Brand</th>
                                <th>Model</th>
                                <th>Associated Tag</th>
                                <th>Product Image</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($all_product as $product) { ?>

                                <tr>


                                    <td><?php echo html_escape($product->product_name); ?></td>
                                    <td><?php echo html_escape($product->category_name); ?></td>
                                    <td><?php echo html_escape($product->subcat_name); ?></td>
                                    <td><?php echo html_escape($product->sku); ?></td>
                                    <td><?php echo html_escape($product->parts); ?></td>
                                    <td><?php echo html_escape($product->unit); ?></td>
                                    <td><?php echo html_escape($product->brand_name); ?></td>
                                    <td><?php echo html_escape($product->model_name); ?></td>
                                    <td><?php echo html_escape($product->tag);?></td>
                                    <td class="image_box">     <?php echo "<img class='zoom' src='".html_escape($product->image)."' id='img1'  >";?></td>



                                </tr>

                            <?php } ?>
                                </tbody>


                        </table>


                        </div>

                    </div>
                </div>











<!--    <div id="page_link">-->
<!--        --><?php //echo $links;?>
<!--    </div>-->




<script type="text/javascript">


function select_type() {
        var category_id = $("#category_id").val();

        var base_url = "<?= base_url() ?>";
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        var sub_cat_selected = ""


        $.ajax( {
            url: base_url + "Cproduct/sub_cat_by_category",
            method: 'post',
            data: {
                category_id:category_id,
                sub_cat_selected: sub_cat_selected,
                csrf_test_name:csrf_test_name
            },
            cache: false,
            success: function( data ) {
                var obj = jQuery.parseJSON(data);
                $('.sub_cat_id').html(obj.sub_cat);
                // $('#cat_id').val(obj.c_id);
                // var cat_id = $("#cat_id").val();

                if(category_id == obj.c_id ){
                    $("#subCat_div").css("display", "block");
                }else{
                    $("#subCat_div").css("display", "none");
                }
            }
        })

    }



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

    function get_data_by_cat(){
        var cat_id = $("#category_id").val();
        var base_url = "<?= base_url() ?>";
        var sub_cat_id = $("#sub_cat_id");
        var main_panel = $("#main_pan");
    }

    $(document).ready(function() {
    "use strict";
    var frm = $("#search_form");

    frm.on('submit', function(e) {
        e.preventDefault();

        var main_panel = $("#main_pan");
        var links = $("#page_link");
            $.ajax({
                url: frm.attr('action'),
                method: 'post',
                dataType: 'json',
                data: $(this).serialize(),
                cache: false,
                success: function( data ) {
                    main_panel.html(data.html_data);
                    links.html("");

                  //  $('#myTable').dataTable();
                },
                error: function() {
                    alert("Something went wrong!");
                }
            });
        });
    });

function myFunction() {
    // Declare variables
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

</script>
