<!-- Product Purchase js -->
<script src="<?php echo base_url()?>my-assets/js/admin_js/json/product_purchase.js.php" ></script>
<!-- Supplier Js -->
<script src="<?php echo base_url(); ?>my-assets/js/admin_js/json/supplier.js.php" ></script>

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
            <h1><?php echo display('add_purchase') ?></h1>
            <small><?php echo display('add_new_purchase') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('purchase') ?></a></li>
                <li class="active"><?php echo display('add_purchase') ?></li>
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
                    <?php echo form_open_multipart('Cpurchase/insert_purchase_new',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>


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
                                        <input type="text" class="form-control" id="pur_order_no" name="pur_order_no" value="<?= $order_no ?>" readonly>
                                    </div>
                                </div>
                            </div>

                        </div>


<br>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="purchaseTable">
                                <thead>
                                     <tr>
                                        <th class="text-center" width="8%">SN</th>
                                        <th class="text-center" width="8%">Category</th>
                                        <th class="text-center" width="8%">Sub Category</th>
                                        <th class="text-center" width="9%">Product Name</th>
                                        <th class="text-center" width="8%">Parts No.</th>
                                        <th class="text-center">Stock</th>
                                        <th class="text-center">Proposed Quantity</th>
                                        <th class="text-center">Order Quantity</th>
                                        <th class="text-center">Supplier Name</th>
                                        <th class="text-center">Warranty</th>
                                        <th class="text-center">Origin</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Discount Per Item</th>
                                        <th class="text-center"><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody id="addPurchaseItem">
                                    <tr>

                                    <td class="wt"> <input type="text" value="1" name="sn[]" id="sn" class="form-control text-right stock_ctn_1"  readonly/></td>

                                    <td class="wt">
                                        <select name="category_name" id="category_name_1" class="form-control text-center" onchange="change_cat(1)">
                                            {category_list}
                                            <option value="{category_id}">{category_name}</option>
                                            {/category_list}
                                        </select>
                                        <input type="hidden" id="cat_list" value='{category_list}<option value="{category_id}">{category_name}</option>{/category_list}' name="">
                                    </td>

                                    <td class="wt">
                                        <select name="subcat_name" id="subcat_name_1" class="form-control text-center">
                                            <option value=""></option>
                                        </select>
                                    </td>

                                    <td class="span3 supplier">
                                       <input type="text" name="product_name" required class="form-control product_name productSelection" onkeypress="product_pur_or_list(1);" placeholder="Pr. Name" id="product_name_1" tabindex="3" >
                                        <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>
                                        <input type="hidden" class="sl" value="1">
                                    </td>

                                        <td class="wt"> <input type="text" placeholder="Parts No." name="parts_no[]" id="parts_number_1" class="form-control text-right stock_ctn_1"  readonly/></td>

                                        <td class="wt">
                                            <input type="text"  id="available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                                        </td>

                                        <td class="test">
                                            <input type="text" name="proposed_quantity[]" required="" id="prosposed_quantity_1" class="form-control product_rate_1 text-right" placeholder="1234" value="" min="0" tabindex="7"/>
                                        </td>

                                        <td class="test">
                                            <input type="text" name="order_quantity[]" required=""  id="order_quantity_1" class="form-control product_rate_1 text-right" onkeyup="calculate_store(1);" onchange="calculate_store(1);" placeholder="1234" value="" min="0" tabindex="7"/>
                                        </td>

                                        <td>
                                            <select name="supplier_name[]" id="supplier_drop_1" class="form-control text-center" onchange="get_price(1)">

                                            </select>
                                        </td>

                                        <td>
                                           <input type="date"  style="width: 110px" id="warrenty_date" name="warrenty_date[]"  />
                                       </td>

                                       <td class="wt"> <input type="text" placeholder="Origin" name="origin[]" id="origin_1" class="form-control text-right stock_ctn_1"  readonly/></td>


                                            <td class="text-right">
                                                <input type="text" name="price[]" id="product_rate_1" onkeyup="calculate_store(1);" onchange="calculate_store(1);" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value=""  tabindex="6"/>
                                            </td>


                                            <td class="text-right">
                                                <input class="form-control discount text-right" onkeyup="calculate_store(1);" onchange="calculate_store(1);" type="text" name="discount[]" id="discount_1" value="00"/>
                                                <input type="hidden" name="row_total[]" value="" id = "row_total_1" class="row_total">
                                            </td>
                                            <td>
                                                <button  class="btn btn-danger text-right red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="8"><i class="fa fa-close"></i></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>

                                        <td class="text-right" colspan="11"><b><?php echo display('total') ?>:</b></td>
                                        <td class="text-right" colspan="2">
                                            <input type="text" id="Total" class="text-right form-control" name="total" value="0.00" readonly="readonly" />
                                        </td>

                                        <td> <button type="button" id="add_invoice_item" class="btn btn-info" name="add-invoice-item"  onClick="addPurchaseOrderField1('addPurchaseItem')"  tabindex="9"/><i class="fa fa-plus"></i></button>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/></td>
                                    </tr>

                                    <tr>
                                        <td class="text-right" colspan="11"><b><?php echo display('paid_amount') ?>:</b></td>
                                        <td class="text-right" colspan="2">
                                            <input type="text" id="paidAmount" class="text-right form-control" onKeyup="invoice_paidamount()" name="paid_amount" value="" />
                                        </td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" class="text-right">
                                             <input type="button" id="full_paid_tab" class="btn btn-warning" value="<?php echo display('full_paid') ?>" tabindex="16" onClick="full_paid()"/>
                                        </td>
                                        <td class="text-right" colspan="9"><b><?php echo display('due_amount') ?>:</b></td>
                                        <td class="text-right" colspan="2">
                                            <input type="text" id="dueAmmount" class="text-right form-control" name="due_amount" value="0.00" readonly="readonly" />
                                        </td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="add_purchase" class="btn btn-primary btn-large" name="add-purchase" value="<?php echo display('submit') ?>" />
                                <input type="submit" value="<?php echo display('submit_and_add_another') ?>" name="add-purchase-another" class="btn btn-large btn-success" id="add_purchase_another" >
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

$( document ).ready(function() {
    change_cat(1);
});

</script>
