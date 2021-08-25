
<script src="<?php echo base_url() ?>my-assets/js/admin_js/json/product.js" type="text/javascript"></script>
<!-- Add Product Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('new_product') ?></h1>
            <small><?php echo display('add_new_product') ?></small>
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('product') ?></a></li>
                <li class="active"><?php echo display('new_product') ?></li>
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

        <div class="row">
            <div class="col-sm-12">

                <?php if($this->permission1->method('add_product_csv','create')->access()){ ?>
                    <a href="<?php echo base_url('Cproduct/add_product_csv') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('add_product_csv') ?> </a>
                <?php }?>
                <?php if($this->permission1->method('manage_product','read')->access()){ ?>
                    <a href="<?php echo base_url('Cproduct/manage_product') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('manage_product') ?> </a>
                <?php }?>


            </div>
        </div>

        <!-- Add Product -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('new_product') ?></h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Cproduct/insert_product', array('class' => 'form-vertical', 'id' => 'insert_product', 'name' => 'insert_product')) ?>
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
                                        <input class="form-control" name="product_id" type="text" id="product_id" placeholder="<?php echo display('barcode_or_qrcode') ?>"  tabindex="1" >
                                        <input type="hidden" name="product_id_two" value="{product_id_two}">
                                        <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
                                        <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url(); ?>"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6" id="subCat_div" style="display: none;">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                    <div class="col-sm-8">
                                        <!--                                        <select class="form-control" id="sub_cat_id" name="sub_cat_id"  tabindex="3">-->
                                        <!--                                            <option value=""></option>-->
                                        <!--                                            --><?php //if ($sub_cat_list) { ?>
                                        <!--                                                {sub_cat_list}-->
                                        <!--                                                <option value="{sub_cat_id}">{subcat_name}</option>-->
                                        <!--                                                {/sub_cat_list}-->
                                        <!--                                            --><?php //} ?>
                                        <!--                                        </select>-->
                                        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">
                                            <option></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Brand Name</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="brand_id" name="brand_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($brand_list) { ?>
                                                {brand_list}
                                                <option value="{brand_id}">{brand_name}</option>
                                                {/brand_list}
                                            <?php } ?>
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
                                        <input class="form-control" name="product_name" type="text" id="product_name" placeholder="<?php echo display('product_name') ?>" required tabindex="1" >
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo display('serial_no') ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="serial_no" name="serial_no" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Country of Origin" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="country" name="country" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <!--        <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Brand Name</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="brand_id" name="brand_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($brand_list) { ?>
                                                {brand_list}
                                                <option value="{brand_id}">{brand_name}</option>
                                                {/brand_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Product Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="ptype_id" name="ptype_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($ptype_list) { ?>
                                                {ptype_list}
                                                <option value="{ptype_id}">{ptype_name}</option>
                                                {/ptype_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Parts No" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="parts" name="parts" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Associated Tag" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="tag" name="tag" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "SKU" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="sku" name="sku" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Unit Cost Price" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="cost_price" name="cost_price" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_model" class="col-sm-4 col-form-label"><?php echo display('model') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_id" name="model_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($model_list) { ?>
                                                {model_list}
                                                <option value="{model_id}">{model_name}</option>
                                                {/model_list}
                                            <?php } ?>
                                        </select>
                                        <input type="hidden" tabindex="" class="form-control" id="cat_id" name="cat_id"  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Purchase Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="ptype_id" name="ptype_id" tabindex="3">
                                            <option value=""></option>
                                            <option value="Import">Import</option>
                                            <option value="Local">Local</option>
                                            <option value="Both">Both</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- <div class="col-sm-6">
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
                                    <select class="form-control" id="sub_cat_id" name="sub_cat_id"  tabindex="3">-->
                            <!--                                            <option value=""></option>-->
                            <!--                                            --><?php //if ($sub_cat_list) { ?>
                            <!--                                                {sub_cat_list}-->
                            <!--                                                <option value="{sub_cat_id}">{subcat_name}</option>-->
                            <!--                                                {/sub_cat_list}-->
                            <!--                                            --><?php //} ?>
                            <!--                                        </select>-->
                            <!--        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">
                                       <option></option>
                                   </select>
                               </div>
                           </div>
                       </div> -->


                        </div>

                        <div class="row">
                            <!--    <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="sell_price" class="col-sm-4 col-form-label"><?php echo display('sell_price') ?> </label>
                                    <div class="col-sm-8">
                                        <input class="form-control text-right" id="sell_price" name="price" type="text"  placeholder="0.00" tabindex="5" min="0">
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="unit" class="col-sm-4 col-form-label"><?php echo display('unit') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="unit" name="unit" tabindex="-1" aria-hidden="true">
                                            <option value="">Select One</option>
                                            <?php if ($unit_list) { ?>
                                                {unit_list}
                                                <option value="{unit_name}">{unit_name}</option>
                                                {/unit_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!--      </div> -->
                            <!--                         <div class="row"> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="image" class="col-sm-4 col-form-label"><?php echo display('image') ?> </label>
                                    <div class="col-sm-8">
                                        <input type="file" name="image" class="form-control" id="image" tabindex="4">
                                    </div>
                                </div>
                            </div>
                            <!--                <div class="col-sm-6">
                                               <div class="form-group row">
                                                   <label for="re_order_level" class="col-sm-4 col-form-label">Trash Hold</label>
                                                   <div class="col-sm-8">
                                                       <input type="number" tabindex="" class="form-control " id="" name="re_order_level" placeholder=""  value="0" />
                                                   </div>
                                               </div>
                                           </div> -->
                            <!--               <?php  $i=0;
                            foreach ($taxfield as $taxss) {?>

                            <div class="col-sm-6">
                         <div class="form-group row">
                            <label for="tax" class="col-sm-4 col-form-label"><?php echo $taxss['tax_name']; ?> <i class="text-danger"></i></label>
                            <div class="col-sm-7">
                              <input type="text" name="tax<?php echo $i;?>" class="form-control" value="<?php echo number_format($taxss['default_value'], 2, '.', ',');?>">
                            </div>
                            <div class="col-sm-1"> <i class="text-success">%</i></div>
                        </div>
                    </div>

                       <?php $i++;}?> -->
                        </div>


                        <div class="table-responsive product-supplier">
                            <table class="table table-bordered table-hover"  id="product_table">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('supplier') ?> </th>
<!--                                    <th class="text-center">Currency </th>-->
                                    <th class="text-center"><?php echo display('supplier_price') ?> </th>

                                    <th class="text-center"><?php echo display('action') ?> <i class="text-danger"></i></th>
                                </tr>
                                </thead>
                                <tbody id="proudt_item">
                                <tr class="">

                                    <td width="300">
                                        <select name="supplier_id[]" class="form-control"  >
                                            <option value=""> select Supplier</option>
                                            <?php if ($supplier) { ?>
                                                {supplier}
                                                <option value="{supplier_id}">{supplier_name}</option>
                                                {/supplier}
                                            <?php } ?>
                                        </select>
                                    </td>
<!--                                    <td width="300">-->
<!--                                        <select name="currency[]" class="form-control"  >-->
<!--                                            <option value=""> Select Currency</option>-->
<!--                                            --><?php //if ($currency) { ?>
<!--                                                {currency}-->
<!--                                                <option value="{currency_name}">{currency_name}</option>-->
<!--                                                {/currency}-->
<!--                                            --><?php //} ?>
<!--                                        </select>-->
<!--                                    </td>-->
                                    <td width="300">
                                        <input type="text" tabindex="6" class="form-control text-right" name="supplier_price[]" placeholder="0.00"    min="0"/>
                                    </td>

                                    <td width="100" align="center"> <a  id="add_purchase_item" class="btn btn-info btn-sm" name="add-invoice-item" onClick="addpruduct('proudt_item');"  tabindex="9"/><i class="fa fa-plus-square" aria-hidden="true"></i></a> <a class="btn btn-danger btn-sm"  value="<?php echo display('delete') ?>" onclick="deleteRow(this)" tabindex="10"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <center><label for="description" class="col-form-label"><?php echo display('product_details') ?></label></center>
                                <textarea class="form-control" name="description" id="description" rows="2" placeholder="<?php echo display('product_details') ?>" tabindex="2"></textarea>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <div class="col-sm-6">

                                <input type="submit" id="add-product" class="btn btn-primary btn-large" name="add-product" value="<?php echo display('save') ?>" tabindex="10"/>
                                <input type="submit" value="<?php echo display('save_and_add_another') ?>" name="add-product-another" class="btn btn-large btn-success" id="add-product-another" tabindex="9">
                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
                <input type="hidden" id="supplier_list" value='<?php if ($supplier) { ?>{supplier}<option value="{supplier_id}">{supplier_name}</option>{/supplier}<?php }?>' name="">
                <input type="hidden" id="currency_list" value='<?php if ($currency) { ?>{currency}<option value="{currency_name}">{currency_name}</option>{/currency}<?php }?>' name="">
            </div>
        </div>
    </section>
</div>
<!-- Add Product End -->
<script type="text/javascript">


    function select_type() {
        var category_id = $("#category_id").val();
        var base_url = $('#base_url').val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        var sub_cat_selected = ""; //needed for sub_cat_by_category function in Cproduct


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
                $('#cat_id').val(obj.c_id);
                var cat_id = $("#cat_id").val();

                if(category_id == cat_id ){
                    $("#subCat_div").css("display", "block");
                }else{
                    $("#subCat_div").css("display", "none");
                }
                //console.log(cat_id);
            }
        });

    };


</script>
