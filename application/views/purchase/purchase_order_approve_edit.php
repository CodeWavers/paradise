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
            <h1>Supplier Payment</h1>
            <small>Supplier Payment</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Purchase</a></li>
                <li class="active">Supplier Payment</li>
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
                            <h4>Supplier Payment</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                    <?php echo form_open_multipart('Cpurchase/update_po',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>





                        <div class="row">
                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pur_order_no" class="col-sm-4 col-form-label">Supplier Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" readonly class="form-control" id="pur_order_no" name="pur_order_no" value="<?= $all_purchase_list[0]['supplier_name'] ?>">
                                        <input type="hidden" readonly class="form-control" id="supplier_id" name="supplier_id" value="<?= $all_purchase_list[0]['supplier_id'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pur_order_no" class="col-sm-4 col-form-label">Bill No.</label>
                                    <div class="col-sm-8">
                                        <?php if($bill_list){?>
                                            <select class="form-control" id="bill_no" name="bill_no" onchange="get_bill_details()">
                                                <option value="">Select Bill</option>
                                                {bill_list}
                                                <option value={chalan_id}>{chalan_id}</option>
                                                {/bill_list}
                                            </select>
                                        <?php }else{ ?>
                                            <input class="form-control" type="text" value="No Bill to show" readonly>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="row">
                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pay_type" class="col-sm-4 col-form-label">Payment Type <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                        <select name="pay_type" id="pay_type" class="form-control" onchange="bank_paymet(this.value)">
                                            <option value="1">Cash</option>
                                            <option value="2">Bank</option>
                                            <option value="3">Credit</option>
                                            <option value="4">LC</option>
                                            <option value="5">TT</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-5">
                                <div class="form-group row">
                                    <label for="pay_date" class="col-sm-4 col-form-label">Payment Date<i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type ="hidden" name="csrf_test_name" id="csrf_test_name" value="<?php echo $this->security->get_csrf_hash();?>">
                                        <input type="text" class="form-control datepicker" id="pay_date" name="pay_date" value="<?= $date ?>" required >
                                    </div>
                                </div>
                            </div>


                            <!-- <div class="col-sm-1">
                                <button class="btn btn-success" onclick="add_payment_opt(1)"><i class="fa fa-plus"></i></button>
                            </div> -->
                            <div class="col-sm-5" id="bank_div">
                                <div class="form-group row">
                                    <label for="bank" class="col-sm-4 col-form-label"><?php
                                        echo display('bank');
                                        ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                        <select name="bank_id" class="form-control bankpayment"  id="bank_id">
                                            <option value="">Select Location</option>
                                            <?php foreach($bank_list as $bank){?>
                                                <option value="<?php echo $bank['bank_id']?>"><?php echo $bank['bank_name'];?>(<?php echo $bank['ac_number'];?>)</option>
                                            <?php }?>
                                        </select>

                                    </div>

<!--                                    <label for="bank" class="col-sm-4 col-form-label">Cheque NO:-->
<!--                                        <i class="text-danger">*</i></label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <input type="number"   name="cheque_no" class=" form-control" placeholder=""  />-->
<!--                                    </div>-->
<!--                                    <br>-->
<!---->
<!--                                    <label for="date" class="col-sm-4 col-form-label">Cheque Date <i class="text-danger">*</i></label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        --><?php
//
//                                        $date = date('Y-m-d');
//                                        ?>
<!--                                        <input class="datepicker form-control" type="text" size="50" name="cheque_date" id="" required value="--><?php //echo html_escape($date); ?><!--" tabindex="4" />-->
<!--                                    </div>-->



                                </div>
                            </div>
                        </div>


                        <br>
                        <div id="bill_dt">
                            <h3 align="center">Select Bill No from dropdown to supplier payment.</h3>

                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">

                                <input type="submit" id="add_purchase" class="btn btn-primary btn-large" name="add-purchase" value="<?php echo display('submit') ?>" />
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

function get_bill_details() {
    var bill_no = $("#bill_no").val();
    var csrf_test_name = $('[name="csrf_test_name"]').val();

    $.ajax({
        url : "<?php echo base_url(); ?>Cpurchase/get_bill_details",
        method : 'POST',
        data : {
            bill_no : bill_no,
            csrf_test_name : csrf_test_name
        },
        success:function(data){
            $('#bill_dt').html(data);
        }
    })

}



</script>
