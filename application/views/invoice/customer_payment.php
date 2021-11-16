
<!-- Invoice js -->
<script src="<?php echo base_url() ?>my-assets/js/admin_js/rqsn.js.php" type="text/javascript"></script>
<style type="text/css">
    .form-control{
        padding: 6px 5px;
    }
</style>
<!-- Customer type change by javascript end -->

<!-- Add New Invoice Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Payment</h1>
            <small>Customer Payment</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Payment</a></li>
                <li class="active">Customer Payment</li>
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
<!--        <div class="row">-->
<!--            <div class="col-sm-12">-->
<!---->
<!--                --><?php //if($this->permission1->method('manage_invoice','read')->access()){ ?>
<!--                    <a href="--><?php //echo base_url('Cinvoice/manage_invoice') ?><!--" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> --><?php //echo display('manage_invoice') ?><!-- </a>-->
<!--                --><?php //}?>
<!--                --><?php //if($this->permission1->method('pos_invoice','create')->access()){ ?>
<!--                    <a href="--><?php //echo base_url('Cinvoice/pos_invoice') ?><!--" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  --><?php //echo display('pos_invoice') ?><!-- </a>-->
<!--                --><?php //}?>
<!---->
<!---->
<!--            </div>-->
<!--        </div>-->


        <!--Add Invoice -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Customer Payment</h4>

                        </div>
                    </div>



                    <div class="rqsn_panel" style="margin-top: 10px; margin-bottom:10px;">
                      <?php echo form_open_multipart('Cinvoice/pay_customer',array('class' => 'form-vertical', 'id' => 'insert_rqsn'))?>
                        <div class="row">

                            <div class="col-sm-8" id="payment_from_2">
                                <div class="form-group row  rqsn-form-input">
                                    <label for="customer_name_others" class="col-sm-3 col-form-label text-right"><?php echo display('customer_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                        <input  autofill="off" type="text"  size="100" name="customer_name_others" placeholder='<?php echo display('customer_name') ?>' id="customer_name_others" class="form-control" />
                                        <input type ="hidden" name="csrf_test_name" id="csrf_test_name" value="<?php echo $this->security->get_csrf_hash();?>">
                                    </div>

                                    <div  class="col-sm-3">
                                        <input  onClick="active_customer('payment_from_2')" type="button" id="myRadioButton_2" class="checkbox_account btn btn-success" name="customer_confirm_others" value="<?php echo display('old_customer') ?>">
                                    </div>
                                </div>



                            </div>

                            <div class="row">

                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="date" class="col-sm-4 col-form-label text-right"><?php echo display('date') ?> : </label>
                                        <div class="col-sm-8">
                                            <?php

                                            $date = date('Y-m-d');
                                            ?>
                                            <input class="form-control" type="text" size="50" name="invoice_date" id="date" required value="<?php echo $rqsn_details[0]['date'] ?>" tabindex="4" readonly />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">DC No. : </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" name="dc_no" id="dc_no" value="<?= $rqsn_details[0]['dc_no'] ?>" readonly>
                                        </div>
                                    </div>
                                </div>



                            </div>
                            <div class="row">

                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="customer_name" class="col-sm-4 col-form-label text-right">Customer Name : </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" name="customer_name" id="customer_name" value="<?= $rqsn_details[0]['customer_name'] ?>" readonly >
                                            <input type="hidden" class="form-control" name="customer_id" id="customer_id" value="<?= $rqsn_details[0]['customer_id'] ?>" readonly >
                                            <input type="hidden" class="form-control" name="invoice_id" id="invoice_id" value="<?= $rqsn_details[0]['invoice_id'] ?>" readonly >
                                            <input type="hidden" class="form-control" name="pending_qty" id="pending_qty" value="<?= $rqsn_details[0]['qty'] -$rqsn_details[0]['dc_qty'] ?>" readonly >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_for" class="col-sm-4 col-form-label text-right">Vessel Name : </label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="" id="" value="<?= $rqsn_details[0]['vessel_name'] ?>" readonly >
                                            <input type="hidden" class="form-control" name="rqsn_for" id="rqsn_for" value="<?= $rqsn_details[0]['customer_id'] ?>" readonly >
                                        </div>
                                    </div>
                                </div>



                            </div>
                            <div class="row">

                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Total Amount: </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" name="total_amount" id="total_amount" value="<?= $rqsn_details[0]['total_amount'] ?>" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Due Amount: </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" name="due_amount" id="due_amount" value="<?= $rqsn_details[0]['due_amount'] ?>" readonly>
                                            <input type="hidden" class="form-control" name="" id="due_amt" value="<?= $rqsn_details[0]['due_amount'] ?>" readonly>
                                        </div>
                                    </div>
                                </div>



                            </div>
                            <div class="row">



                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Payment Type: </label>
                                        <div class="col-sm-8" >
                                            <select class="form-control" name="payment_type" id="payment_type">
                                                <option value="1">Cash</option>
                                                <option value="2">Credit</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <div class="row">
                                <?php if ($rqsn_details[0]['due_amount'] == 0){ ?>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Paid Amount: </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" name="paid_amount" id="paid_amount" value=""  placeholder="Paid" readonly>
                                            <input type="hidden" class="form-control" name="" id="" value="<?= $rqsn_details[0]['paid_amount'] ?>" readonly>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Pay Amount: </label>
                                        <div class="col-sm-8" >
                                            <input type="text" class="form-control" onkeyup="calculation()" name="pay_amount" id="pay_amount" value="0"  placeholder="0.00"  readonly>
                                        </div>
                                    </div>
                                </div>
                                <?php  }else { ?>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Paid Amount: </label>
                                            <div class="col-sm-8" >
                                                <input type="text" class="form-control" name="paid_amount" id="paid_amount" value="<?= $rqsn_details[0]['paid_amount'] ?>" readonly>
                                                <input type="hidden" class="form-control" name="" id="paid_amt" value="<?= $rqsn_details[0]['paid_amount'] ?>" readonly>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Pay Amount: </label>
                                            <div class="col-sm-8" >
                                                <input type="text" class="form-control" onkeyup="calculation()" name="pay_amount" id="pay_amount" value="0"  placeholder="0.00" >
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>



                            </div>






                        </div>

                        <br>



                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="hidden" class="form-control" name="total_pending_qty" id="pt_tot" value='0' readonly/>

                                <a href="<?= base_url().'Cinvoice/pending_dc'?>"><input type="button" value="Back" name="back_btn" class="btn btn-large btn-black" id="" ></a>
                                 <input type="submit" value="Submit" name="approve_btn" class="btn btn-large btn-success btn-sm" id="" ></a>
                            </div>
                        </div>


<!--                      --><?php //echo form_close()?>
                    </div>

                </div>
            </div>





        </div>
    </section>
</div>
<!-- Invoice Report End -->

<script type="text/javascript">








    function calculation() {
        // var total_amount = parseFloat($("#total_amt").val());
        var paid_amount = parseFloat($("#paid_amt").val());
        var due_amount = parseFloat($("#due_amt").val());
        var pay_amount = parseFloat($("#pay_amount").val());

      //    var t=total_amount-pay_amount;
          var d=due_amount-pay_amount;
          var p=paid_amount+pay_amount;

        // $("#total_amount").val(t);
        $("#due_amount").val(d.toFixed(2));
        $("#paid_amount").val(p.toFixed(2));




    }

</script>
