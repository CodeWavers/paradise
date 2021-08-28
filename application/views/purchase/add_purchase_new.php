
<!-- Product Purchase js -->
<!-- <script src="<?php echo base_url()?>my-assets/js/admin_js/json/product_purchase.js.php" ></script> -->
<!-- Supplier Js -->
<!-- <script src="<?php echo base_url(); ?>my-assets/js/admin_js/json/supplier.js.php" ></script> -->

<script src="<?php echo base_url()?>my-assets/js/admin_js/purchase.js.php" type="text/javascript"></script>
<style type="text/css">
    .form-control{
        padding: 6px 5px;
    }
</style>

<!-- Add New Purchase Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Purchase</h1>
            <small>Add Purchase</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('purchase') ?></a></li>
                <li class="active">Add Purchase</li>
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
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
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
                            <h4><?php echo display('add_purchase') ?></h4>
                        </div>
                    </div>

                    <div class="panel-body">
                        <?php echo form_open_multipart('Cpurchase/save_purchase',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>


                        <!-- <div class="row">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="supplier_sss" class="col-sm-4 col-form-label"><?php echo display('supplier') ?>
                                        <i class="text-danger">*</i>
                                    </label>
                                    <div class="col-sm-6">
                                        <select name="supplier_id" id="supplier_id" class="form-control " required="" tabindex="1">
                                            <option value=" "><?php echo display('select_one') ?></option>
                                            {all_supplier}
                                            <option value="{supplier_id}">{supplier_name}</option>
                                            {/all_supplier}
                                        </select>
                                    </div>
                                  <?php if($this->permission1->method('add_supplier','create')->access()){ ?>
                                    <div class="col-sm-2" style="padding: 0px;">
                                        <a class="btn btn-success" style="margin: 0;" title="Add New Supplier" href="<?php echo base_url('Csupplier'); ?>"><i class="fa fa-user"></i></a>
                                    </div>
                                <?php }?>
                                </div>
                            </div>
                        </div> -->

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label"><?php echo display('purchase_date') ?>
                                        <i class="text-danger">*</i>
                                    </label>
                                    <div class="col-sm-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type="text" required tabindex="2" class="form-control datepicker" name="purchase_date" value="<?php echo $date; ?>" id="date"  />
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label">Purchase Order No.</label>
                                    <div class="col-sm-8">
                                        <?php if($po_list){?>
                                        <select class="form-control" id="pur_order_no" name="pur_order_no" onchange="get_purchase_details()">
                                            <option value="">Select PO</option>
                                            {po_list}
                                            <option value={purchase_id}>{purchase_order}</option>
                                            {/po_list}
                                        </select>
                                        <?php }else{ ?>
                                            <input class="form-control" type="text" value="No purchase to show" readonly>
                                            <?php } ?>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="extra_pr" class="col-sm-4 col-form-label">Add Additional Product</label>
                                    <div class="col-sm-8">
                                    <input type="text" autocomplete="off" name="product_name" onkeypress="productList_with_cat_subcat(1)" id="product_name_1" class="form-control productSelection" placeholder="<?php echo display('product_name') ?>" tabindex="5">

                                    <input type="hidden" class="autocomplete_hidden_value product_id_1" id="SchoolHiddenId" />
                                    <input type="hidden" value="<?php echo base_url() ?>" class="baseUrl" name="" id="baseUrl" />
                                    </div>
                                </div>
                            </div>
                        </div>



                        <br>
                        <div id="cart_details">
                            <h3 align="center">Select PO No. from dropdown to get order details.</h3>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="save" class="btn btn-success btn-large" name="save" value="Save" />
                            </div>
                        </div>
                        <?php echo form_close()?>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
<!-- Purchase Report End -->

<script type="text/javascript">


function get_purchase_details() {
    var po_id = $("#pur_order_no").val();
    var csrf_test_name = $('[name="csrf_test_name"]').val();

    $.ajax({
        url : "<?php echo base_url(); ?>Cpurchase/get_purchase_details",
        method : 'POST',
        data : {
            po_id : po_id,
            csrf_test_name : csrf_test_name
        },
        success:function(data){
            $('#cart_details').html(data);
            add_pur_calc_store();
        }
    })

}

$(document).on('click', '.remove_inventory', function(){
            var sl = $(this).attr("id");
            var row_id = $("#sl_id_" + sl).val();

            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(confirm("Are you sure you want to remove this?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cpurchase/remove_from_list",
                    method:"POST",
                    data:{
                        csrf_test_name:csrf_test_name,
                        row_id:row_id,
                    },
                    success:function(data)
                    {
                        toastr.warning("Product removed from Purchase!");
                        get_purchase_details();
                    }
                });
            }
            else
            {
                return false;
            }
        });

</script>