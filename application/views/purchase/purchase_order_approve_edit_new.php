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
            <h1>Approve PO</h1>
            <small>Approve PO</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Purchase</a></li>
                <li class="active">Approve PO</li>
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
                            <h4>Approve PO</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                    <?php echo form_open_multipart('Cpurchase/update_po_new',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>




                        <div class="row" >
                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pur_date" class="col-sm-4 col-form-label"><?php echo display('purchase_date') ?>

                                    </label>
                                    <div class="col-sm-8">

                                        <input type="text" tabindex="2" class="form-control" name="purchase_date" value="<?php echo $all_purchase_list[0]['purchase_date']; ?>" id="pur_date"  readonly/>

                                    </div>
                                </div>
                            </div>


<!--                            <div class="col-sm-5">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="invoice_no" class="col-sm-4 col-form-label">Invoice/Chalan No.-->
<!--                                        <i class="text-danger">*</i>-->
<!--                                    </label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <input type="hidden" tabindex="2" class="form-control" name="purchase_id" value="--><?php //echo $all_purchase_list[0]['purchase_id']; ?><!--" id="pur_date"  readonly/>-->
<!--                                        <input type="text"  tabindex="1" class="form-control" name="invoice_no" value="" id="invoice_no"  />-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->

                        </div>
                        <div class="row">
<!--                            <div class="col-sm-5">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="pur_order_no" class="col-sm-4 col-form-label">Supplier Name</label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <input type="text" readonly class="form-control" id="pur_order_no" name="pur_order_no" value="--><?//= $all_purchase_list[0]['supplier_name'] ?><!--">-->
<!--                                        <input type="hidden" readonly class="form-control" id="supplier_id" name="supplier_id" value="--><?//= $all_purchase_list[0]['supplier_id'] ?><!--">-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pur_order_no" class="col-sm-4 col-form-label">PO No.</label>
                                    <div class="col-sm-8">
                                        <input type="text" readonly class="form-control" id="pur_order_no" name="pur_order_no" value="<?= $all_purchase_list[0]['purchase_order'] ?>">
                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="row">
<!--                            <div class="col-sm-5">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="pay_type" class="col-sm-4 col-form-label">Payment Type <i class="text-danger">*</i></label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <select name="pay_type" id="pay_type" class="form-control">-->
<!--                                            <option value="1">Cash</option>-->
<!--                                            <option value="2">Credit</option>-->
<!--                                            <option value="3">LC</option>-->
<!--                                            <option value="4">TT</option>-->
<!--                                        </select>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!---->
<!--                            <div class="col-sm-5">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="pay_date" class="col-sm-4 col-form-label">Payment Date<i class="text-danger">*</i></label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        --><?php //$date = date('Y-m-d'); ?>
<!--                                        <input type="text" class="form-control datepicker" id="pay_date" name="pay_date" value="--><?//= $date ?><!--" required >-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-sm-5">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="supp_file" class="col-sm-4 col-form-label">Suppliers Invoice</label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <input type="file" class="form-control" id="supp_file" name="image" readonly>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->

                            <!-- <div class="col-sm-1">
                                <button class="btn btn-success" onclick="add_payment_opt(1)"><i class="fa fa-plus"></i></button>
                            </div> -->

                        </div>

                        <div class="row" id="extra_pay">

                        </div>


<br>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="purchaseTable">
                                <thead>
                                     <tr>
                                        <th class="text-center" width="8%">SL</th>
                                        <th class="text-center" width="12%">Product Name</th>
                                        <th class="text-center" width="8%">Parts No.</th>
                                        <th class="text-center" width="8%">SKU</th>
                                        <th class="text-center" width="8%">Brand</th>
                                        <th class="text-center" width="8%">Model</th>
                                        <th class="text-center" width="12%">Order Quantity</th>
                                        <th class="text-center" width="12%">Est. Price</th>
                                        <th class="text-center" width="12%">Total Price</th>
                                        <th class="text-center" width="12%">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="addPurchaseItem">
                                    {all_purchase_list}
                                    <tr>

                                    <td class="wt"> {sl}</td>

                                    <td class="span3 supplier">
                                       <span>{product_name}</span>
                                        <input type="hidden" class="autocomplete_hidden_value product_id_1" value="{product_id}" name="product_id[]" id="SchoolHiddenId"/>
                                        <input type="hidden" class="" value="{purchase_detail_id}" name="purchase_detail_id[]" id="purchase_detail_id"/>
                                        <input type="hidden" class="sl" value="1">
                                    </td>

                                        <td class="wt"> {parts}</td>

                                        <td class="test">
                                            {sku}
                                        </td>

                                        <td class="wt"> {brand_name}</td>

                                        <td>
                                           {model_name}
                                        </td>

                                        <td align="center">
                                            <input type="number" class="form-control quantity_{product_id} text-center" value="{qty}" name="quantity[]" id="quantity" onchange="calculation({product_id})" onkeyup="calculation({product_id})" />
                                        </td>

                                        <td class="text-right">

                                            <input type="number" class="form-control rate_{product_id} text-center" value="{rate}" name="rate[]" id="rate" onchange="calculation({product_id})" onkeyup="calculation({product_id})"  />
                                                <input type="hidden" name="price[]" value="{rate}" id = "price_1" class="row_total">
                                            <input type="hidden" name="row_total[]" value="" id = "row_total_1" class="row_total">
                                        </td>



                                            <td class="text-center">

                                                <input type="number" class="form-control total_amount text-center" value="{total_amount}" name="total_amount[]" id="total_amount_{product_id}" onchange="calculation({product_id})" onkeyup="calculation({product_id})" />
<!--                                                <input type="text" name="total" value="{total_amount}" id = "" class="form-control" readonly>-->
                                            </td>



                                        <td  align="center">


                                            <?php $id=$all_purchase_list[0]['purchase_detail_id']?>

                                            <a class="btn btn-success btn-sm approve"  value="Approve" onclick="approveRow(this,'{purchase_detail_id}','{product_id}')"  tabindex="10"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="btn btn-danger btn-sm remove_inventory"  value="<?php echo display('delete') ?>" onclick="deleteRow(this,'{purchase_detail_id}')"  tabindex="10"><i class="fa fa-trash" aria-hidden="true"></i></a>

                                        </td>
                                    </tr>
                                    {/all_purchase_list}
                                </tbody>
                                <tfoot>
                                    <tr>

                                        <td class="text-right" colspan="8"><b>Grand Total:</b></td>
                                        <td class="text-right" >
                                            <input type="text" id="total" class="text-center form-control" name="total" value="<?= $total?>" readonly= />
                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                            <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
                                        </td>
                                    </tr>



                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <?php  $po_no=$all_purchase_list[0]['purchase_order']?>
                                <input type="submit" id="add_purchase" class="btn btn-primary btn-large" name="add-purchase" value="Approve" />
<!--                                <button  href="--><?php //echo base_url('Cproduct/approve_unit_cost') ?><!--" id="print" class="btn btn-warning btn-large" name="print" value="Print" <button/>-->
                                <a class="btn btn-warning" href="<?php echo base_url('Cpurchase/po_print/'.$po_no) ?>">Print</a>
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


function approveRow(e,row_id,sl){

    var a = e.parentNode.parentNode;

    var qty=$('.quantity_'+sl).val();
    var rate=$('.rate_'+sl).val();
    var total_amount=$('#total_amount_'+sl).val();
    //var row_id = $(this).attr("data-id");
   console.log(total_amount)
    var csrf_test_name = $('[name="csrf_test_name"]').val();
    if(confirm("Are you sure you want to approve this?"))
    {
        $.ajax({
            url:"<?php echo base_url(); ?>Cpurchase/purchase_approve",
            method:"POST",
            data:{csrf_test_name:csrf_test_name,row_id:row_id,qty:qty,rate:rate,total_amount:total_amount},
            success:function(data)
            {

                // console.log(data)
                toastr.success("Approved");
                a.parentNode.removeChild(a);
                //  $('#add_rqsn_table').load("<?php echo base_url();?>/Crqsn/approve_rqsn_final/"+row_id);
                // $('#add_rqsn_table').load();
            }
        });
    }
    else
    {
        return false;
    }
}



function deleteRow(e,row_id){

    var a = e.parentNode.parentNode;
    //var row_id = $(this).attr("data-id");
   // console.log(row_id)
    var csrf_test_name = $('[name="csrf_test_name"]').val();
    if(confirm("Are you sure you want to remove this?"))
    {
        $.ajax({
            url:"<?php echo base_url(); ?>Cpurchase/purchase_remove",
            method:"POST",
            data:{csrf_test_name:csrf_test_name,row_id:row_id},
            success:function(data)
            {

                // console.log(data)
                toastr.error("Product removed from PO!");
                a.parentNode.removeChild(a);
                //  $('#add_rqsn_table').load("<?php echo base_url();?>/Crqsn/approve_rqsn_final/"+row_id);
                // $('#add_rqsn_table').load();
            }
        });
    }
    else
    {
        return false;
    }
}


function calculation(sl) {
    var gr_tot = 0;

    var qty=$('.quantity_'+sl).val();
    var rate=$('.rate_'+sl).val();
    var total=$('#total_amount_'+sl).val();

    // console.log(qty)
    // console.log(rate)
    // console.log(total)

    var total_amount=qty*rate;
   // console.log(total_amount)
    $('#total_amount_'+sl).val(total_amount.toFixed(2,2));

    $(".total_amount").each(function() {
        isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
    });
    // $(".discount").each(function() {
    //    isNaN(this.value) || 0 == this.value.length || (dis += parseFloat(this.value))
    //});

    console.log(gr_tot)

    $("#total").val(gr_tot.toFixed(2,2));



}



</script>
