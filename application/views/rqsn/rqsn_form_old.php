
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
            <h1>Requisition</h1>
            <small>Requisition Form</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Requisition</a></li>
                <li class="active">Requisition Form</li>
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
                            <h4>Requisition Form</h4>

                        </div>
                    </div>



                    <div class="rqsn_panel" style="margin-top: 10px;">
                        <?php echo form_open_multipart('Crqsn/insert_rqsn',array('class' => 'form-vertical', 'id' => 'insert_rqsn'))?>
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
                            <div class="col-sm-8" id="payment_from">

                                <div class="form-group row rqsn-form-input">
                                    <label for="date" class="col-sm-3 col-form-label text-right"><?php echo display('date') ?> : </label>
                                    <div class="col-sm-9">
                                        <?php

                                        $date = date('Y-m-d');
                                        ?>
                                        <input class="datepicker form-control" type="text" size="50" name="invoice_date" id="date" required value="<?php echo html_escape($date); ?>" tabindex="4" />
                                    </div>
                                </div>

                                <div class="form-group row rqsn-form-input">
                                    <label for="customer_name" class="col-sm-3 col-form-label text-right">Customer Name : </label>
                                    <div class="col-sm-9" >
                                        <input type="text" class="form-control" name="customer_name" id="customer_name" >
                                    </div>
                                </div>

                                <div class="form-group row  rqsn-form-input">
                                    <label for="rqsn_for" class="col-sm-3 col-form-label text-right">Requisition For : </label>
                                    <div class="col-sm-9">
                                        <select name="rqsn_for" id="rqsn_for" class="form-control">
                                            {outlet_list}
                                                <option value="{outlet_id}">{outlet_name}</option>
                                            {/outlet_list}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row rqsn-form-input">
                                    <label for="rqsn_no" class="col-sm-3 col-form-label text-right">Requisition No. : </label>
                                    <div class="col-sm-9" >
                                        <input type="text" class="form-control" value="<?php echo $rqsn_no?>" name="rqsn_no" id="rqsn_no" readonly>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <a href="<?= base_url()."Crqsn/add_rqsn_form" ?>">
                                    <div class="col-sm-9">
                                        <input type="button" id="catalogue_link" class="btn btn-success form-control" name="catalogue_link" value="Go to Add Requisition">
                                    </div>
                                    </a>
                                </div>

                            </div>

                        </div>

                        <br>


                            <div id="cart_details">
                                <h3 align="center">Requisition  is Empty</h3>
                            </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" value="Finalize" name="finalize" class="btn btn-large btn-success" id="" >
                                <input type="submit" value="Save as Draft" name="save_draft" class="btn btn-large btn-warning" id="" >
                            </div>
                        </div>


                        <?php echo form_close()?>
                    </div>

                </div>
            </div>







        </div>
    </section>
</div>
<!-- Invoice Report End -->

<script type="text/javascript">
    $(document).ready(function(){
        // setInterval(function(){
        //
        //$('#cart_details').load("<?php //echo base_url(); ?>//Cadd_rqsn/load");
        //
        // }, 1000);

        $('#cart_details').load("<?php echo base_url(); ?>Cadd_rqsn/load");

        $(document).on('click', '.remove_inventory', function(){
            var row_id = $(this).attr("id");
            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(confirm("Are you sure you want to remove this?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cadd_rqsn/remove",
                    method:"POST",
                    data:{csrf_test_name:csrf_test_name,row_id:row_id},
                    success:function(data)
                    {
                        toastr.success("Product removed from Cart!");
                        $('#cart_details').html(data);
                    }
                });
            }
            else
            {
                return false;
            }
        });

        $(document).on('click', '#clear_cart', function(){
            if(confirm("Are you sure you want to clear cart?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cadd_rqsn/clear",
                    success:function(data)
                    {
                        toastr.success("Your cart has been clear...");
                        $('#cart_details').html(data);
                    }
                });
            }
            else
            {
                return false;
            }
        });

    });


</script>
