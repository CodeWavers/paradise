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
                    <?php echo form_open_multipart('Cpurchase/insert_purchase',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>


                        <div class="row">
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
                                    <div class="col-sm-2">
                                        <a class="btn btn-success" title="Add New Supplier" href="<?php echo base_url('Csupplier'); ?>"><i class="fa fa-user"></i></a>
                                    </div>
                                <?php }?>
                                </div>
                            </div>


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
                                    <label for="invoice_no" class="col-sm-4 col-form-label">Chalan No:
                                        <i class="text-danger"></i>
                                    </label>
                                    <div class="col-sm-6">
                                        <input type="text" tabindex="3" class="form-control" name="chalan_no" placeholder="Chalan No:" id="invoice_no" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="adress" class="col-sm-4 col-form-label"><?php echo display('details') ?>
                                    </label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" tabindex="4" id="adress" name="purchase_details" placeholder=" <?php echo display('details') ?>" rows="1"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                             <div class="row">
                              <div class="col-sm-6" id="payment_from_1">
                                <div class="form-group row">
                                    <label for="payment_type" class="col-sm-4 col-form-label"><?php
                                        echo display('payment_type');
                                        ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                        <select name="paytype" class="form-control" required="" onchange="bank_paymet(this.value)">
                                            <option value="1"><?php echo display('cash_payment');?></option>
                                            <option value="2"><?php echo display('bank_payment');?></option>

                                        </select>




                                    </div>

                                </div>
                            </div>
                                 <div class="col-sm-6" id="bank_div">
                                     <div class="form-group row">
                                         <label for="bank" class="col-sm-4 col-form-label"><?php
                                             echo display('bank');
                                             ?> <i class="text-danger">*</i></label>
                                         <div class="col-sm-8">
                                             <select name="bank_id" class="form-control bankpayment"  id="bank_id">
                                                 <option value="">Select Location</option>
                                                 <?php foreach($bank_list as $bank){?>
                                                     <option value="<?php echo $bank['bank_id']?>"><?php echo $bank['bank_name'];?></option>
                                                 <?php }?>
                                             </select>

                                         </div>

                                         <label for="bank" class="col-sm-4 col-form-label">Cheque NO:
                                             <i class="text-danger">*</i></label>
                                         <div class="col-sm-8">
                                             <input type="number"   name="cheque_no" class=" form-control" placeholder=""  />
                                         </div>
                                         <br>

                                         <label for="date" class="col-sm-4 col-form-label">Cheque Date <i class="text-danger">*</i></label>
                                         <div class="col-sm-8">
                                             <?php

                                             $date = date('Y-m-d');
                                             ?>
                                             <input class="datepicker form-control" type="text" size="50" name="cheque_date" id="" required value="<?php echo html_escape($date); ?>" tabindex="4" />
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
                                        <th class="text-center" width="9%">Product Name</th>
                                        <th class="text-center" width="8%">Category</th>
                                        <th class="text-center"  width="8%">Sub Category</th>
                                        <th class="text-center" width="8%">Parts No.</th>
                                        <th class="text-center">Stock</th>
                                        <th class="text-center">Proposed Quantity</th>
                                        <th class="text-center">Order Quantity</th>
                                        <!-- <th class="text-center">Supplier Name</th> -->
                                        <th class="text-center">Warranty</th>
                                        <th class="text-center">Origin</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Discount</th>
                                        <th class="text-center"><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody id="addPurchaseItem">
                                    <tr>

                                        <td class="wt"> <input type="text"  placeholder="SN" name="sn[]" id="sn_1" class="form-control text-right stock_ctn_1"  /></td>

                                        <td class="span3 supplier">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeypress="product_pur_or_list(1);" placeholder="Pr. Name" id="product_name_1" tabindex="3" >
                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>
                                            <input type="hidden" class="sl" value="1">
                                        </td>
                                        <td class="wt">
                                            <input type="text" placeholder="Category" id="category_name_1" class="form-control text-center"  readonly/>
                                        </td>
                                        <td class="wt">
                                            <input type="text" placeholder="Sub Category" id="subcat_name_1" class="form-control text-center"  readonly/>
                                        </td>

                                        <td class="wt"> <input type="text" placeholder="Parts No." name="parts_no[]" id="parts_number_1" class="form-control text-right stock_ctn_1"  readonly/></td>

                                        <td class="wt">
                                            <input type="text"  id="available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                                        </td>

                                        <td class="test">
                                            <input type="text" name="proposed_quantity[]" required="" id="prosposed_quantity" class="form-control product_rate_1 text-right" placeholder="1234" value="" min="0" tabindex="7"/>
                                        </td>

                                        <td class="test">
                                            <input type="text" name="order_quantity[]" required=""  id="ordered_quantity" class="form-control product_rate_1 text-right" placeholder="1234" value="" min="0" tabindex="7"/>
                                        </td>

                                        <!-- <td>
                                            <input type="text"  style="width: 110px" id="supplier_name_pur" name="supplier_name_pur[]"  />
                                        </td> -->

                                        <td>
                                           <input type="date"  style="width: 110px" id="warrenty_date" name="warrenty_date[]"  />
                                       </td>

                                       <td class="wt"> <input type="text" placeholder="Origin" name="origin[]" id="origin" class="form-control text-right stock_ctn_1"  /></td>


                                            <td class="text-right">
                                                <input type="text" name="price[]" id="product_rate_1" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value=""  tabindex="6"/>
                                            </td>


                                            <td class="text-right">
                                                <input class="form-control total_price text-right" type="text" name="discount[]" id="discount" value="00"/>
                                            </td>
                                            <td>
                                                <button  class="btn btn-danger text-right red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="8"><i class="fa fa-close"></i></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>

                                        <td class="text-right" colspan="10"><b><?php echo display('total') ?>:</b></td>
                                        <td class="text-right" colspan="2">
                                            <input type="text" id="Total" class="text-right form-control" name="total" value="0.00" readonly="readonly" />
                                        </td>

                                        <td> <button type="button" id="add_invoice_item" class="btn btn-info" name="add-invoice-item"  onClick="addPurchaseOrderField1('addPurchaseItem')"  tabindex="9"/><i class="fa fa-plus"></i></button>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/></td>
                                    </tr>

                                    <tr>
                                        <td class="text-right" colspan="10"><b><?php echo display('paid_amount') ?>:</b></td>
                                        <td class="text-right" colspan="2">
                                            <input type="text" id="paidAmount" class="text-right form-control" onKeyup="invoice_paidamount()" name="paid_amount" value="" />
                                        </td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" class="text-right">
                                             <input type="button" id="full_paid_tab" class="btn btn-warning" value="<?php echo display('full_paid') ?>" tabindex="16" onClick="full_paid()"/>
                                        </td>
                                        <td class="text-right" colspan="8"><b><?php echo display('due_amount') ?>:</b></td>
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
