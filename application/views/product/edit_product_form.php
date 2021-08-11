<script src="<?php echo base_url() ?>my-assets/js/admin_js/json/product.js" type="text/javascript"></script>
<!-- Edit Product Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('product_edit') ?></h1>
            <small><?php echo display('edit_your_product') ?></small>
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('product') ?></a></li>
                <li class="active"><?php echo display('product_edit') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">
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
        <!-- Purchase report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('product_edit') ?> </h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Cproduct/product_update', array('class' => 'form-vertical', 'id' => 'product_update', 'name' => 'product_update')) ?>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
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
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="barcode_or_qrcode" class="col-sm-4 col-form-label"><?php echo display('barcode_or_qrcode') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="product_id_two" type="text" value="{product_id_two}" id="product_id" placeholder="<?php echo display('barcode_or_qrcode') ?>"  tabindex="1" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6" id="subCat_div" style="display: none;">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                    <div class="col-sm-8">
                                        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="brand_name" class="col-sm-4 col-form-label">Brand Name</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="brand_name" name="brand_id" tabindex="3">
                                            {brand_list}
                                            <option value="{brand_id}">{brand_name}</option>
                                            {/brand_list}
                                            <?php
                                            if ($brand_selected) {
                                                ?>
                                                {brand_selected}
                                                <option selected value="{brand_id}">{brand_name} </option>
                                                {/brand_selected}
                                                <?php
                                            } else {
                                                ?>
                                                <option selected value="0">Brand not selected</option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_name" class="col-sm-4 col-form-label"><?php echo display('product_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="product_name" type="text" id="product_name" placeholder="<?php echo display('product_name') ?>" required tabindex="1" value="{product_name}" >
                                        <input type="hidden" name="product_id" value="{product_id}">
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Country of Origin" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" id="country" name="country" placeholder="<?php echo display('country') ?>"  value="{country}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Parts No" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" id="parts" name="parts" placeholder="<?php echo display('parts') ?>"  value="{parts}"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Associated Tag" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" id="tag" name="tag" placeholder="<?php echo display('tag') ?>"  value="{tag}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "SKU" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" id="sku" name="sku" placeholder="<?php echo display('sku') ?>"  value="{sku}"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Unit Cost Price" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" id="cost_price" name="cost_price" placeholder="<?php echo display('cost_price') ?>"  value="{price}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="model_id" class="col-sm-4 col-form-label">Model</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_id" name="model_id" tabindex="3">
                                            {model_list}
                                            <option value="{model_id}">{model_name}</option>
                                            {/model_list}
                                            <?php
                                            if ($model_selected) {
                                                ?>
                                                {model_selected}
                                                <option selected value="{model_id}">{model_name}</option>
                                                {/model_selected}
                                                <?php
                                            } else {
                                                ?>
                                                <option selected value="0">Model not selected</option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_type" class="col-sm-4 col-form-label">Purchase Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="product_type" name="ptype_id" tabindex="3">
                                            <!--   {ptype_list}
                                              <option value="{ptype_id}">{ptype_id}</option>
                                              {/ptype_list} -->
                                            <option value="Import">Import</option>
                                            <option value="Local">Local</option>
                                            <option value="Both">Both</option>
                                            <?php
                                            if ($ptype_id) {
                                                ?>

                                                <option selected value="<?php echo $ptype_id?>"><?php echo $ptype_id?></option>

                                                <?php
                                            } else {
                                                ?>
                                                <option selected value="0">Purchase type not selected</option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- <div class="row"> -->
                        <!--    <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_model" class="col-sm-4 col-form-label"><?php echo display('model') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control" name="model" placeholder="<?php echo display('model') ?>"   value="{product_model}"/>
                                    </div>
                                </div>
                            </div>
 -->
                        <!--             <div class="col-sm-6">
                                <div class="form-group row">
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

                            <div class="col-sm-6" id="subCat_div" style="display: none;">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                    <div class="col-sm-8">
                                        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">

                                        </select>
                                    </div>
                                </div>
                            </div> -->

                        <!-- </div> -->

                        <div class="row">
                            <!--  <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="image" class="col-sm-4 col-form-label"><?php echo display('sell_price') ?>  </label>
                                    <div class="col-sm-8">
                                        <input class="form-control text-right" name="price" type="text"  placeholder="0.00" tabindex="5" min="0" value="{price}">
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="unit" class="col-sm-4 col-form-label"><?php echo display('unit') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="unit" name="unit" tabindex="-1" aria-hidden="true">
                                            <option value="">Select One</option>
                                            <?php

                                            foreach ($unit_list as $single) {
                                                if ($single['unit_name'] == $unit) {
                                                    ?>
                                                    <option selected value="<?php echo $single['unit_name']; ?>">
                                                        <?php echo $single['unit_name']; ?>
                                                    </option>
                                                <?php } else { ?>
                                                    <option  value="<?php echo $single['unit_name']; ?>">
                                                        <?php echo $single['unit_name']; ?>
                                                    </option>
                                                    <?php
                                                }
                                            }
                                            ?>

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- </div>
                            <div class="row"> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="image" class="col-sm-4 col-form-label"><?php echo display('image') ?> </label>
                                    <div class="col-sm-8">
                                        <input type="file" name="image" class="form-control" tabindex="4">
                                        <img class="img img-responsive text-center" src="{image}" height="80" width="80">
                                        <input type="hidden" value="{image}" name="old_image">
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="table-responsive product-supplier">
                            <table class="table table-bordered table-hover"  id="product_table">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('supplier') ?> </th>
                                    <th class="text-center"><?php echo display('supplier_price') ?></th>


                                    <th class="text-center"><?php echo display('action') ?> </th>
                                </tr>
                                </thead>
                                <tbody id="proudt_item">
                                {supplier_product_data}
                                <tr class="">

                                    <td width="300">
                                        <select name="supplier_id[]" class="form-control"  tabindex="8">

                                            <?php foreach ($supplier_list as $supplier) { ?>
                                                <option value="<?php echo $supplier['supplier_id'] ?>"><?php echo $supplier['supplier_name'] ?> </option>
                                            <?php } ?>
                                            <?php
                                            if ($supplier_selected) {
                                                ?>
                                                {supplier_selected}
                                                <option selected value="{supplier_id}">{supplier_name} </option>
                                                {/supplier_selected}
                                                <?php
                                            } else {
                                                ?>
                                                <option selected value="0"><?php echo display('supplier_not_selected') ?></option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </td>
                                    <td class="">
                                        <input type="text" tabindex="6" class="form-control text-right" name="supplier_price[]" placeholder="0.00"    min="0" value="{supplier_price}"/>
                                    </td>

                                    <td width="100"> <a  id="add_purchase_item" class="btn btn-info btn-sm" name="add-invoice-item" onClick="addpruduct('proudt_item');"  tabindex="9"/><i class="fa fa-plus-square" aria-hidden="true"></i></a> <a class="btn btn-danger btn-sm red"  value="<?php echo display('delete') ?>" onclick="deleteRow(this)" tabindex="10"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                {/supplier_product_data}
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <center><label for="description" class="col-form-label"><?php echo display('product_details') ?></label></center>
                                <textarea class="form-control" name="description" id="description" rows="3" placeholder="<?php echo display('product_details') ?>" tabindex="2">{product_details}</textarea>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <div class="col-sm-6">

                                <input type="submit" id="add-product" class="btn btn-primary btn-large" name="add-product" value="<?php echo display('save_changes') ?>" tabindex="10"/>

                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
            </div>
            <input type="hidden" id="supplier_list" value='<?php if ($supplier_list) { ?>{supplier_list}<option value="{supplier_id}">{supplier_name}</option>{/supplier_list}<?php }?>' name="">
        </div>
    </section>
</div>
<!-- Edit Product End -->

<script type="text/javascript">

    $(document).ready(function() {
        var cat_id = "<?= $category_id; ?>";
        var categories = document.getElementById('category_id');

        for(var i, j = 0; i = categories.options[j]; j++) {
            if(i.value == cat_id) {
                categories.selectedIndex = j;
                break;
            }
        }
        select_type();




    });

    function select_type() {
        var category_id = $("#category_id").val();

        var base_url = $('#base_url').val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        var sub_cat_selected = "<?= $sub_cat_id ?>"


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

</script>