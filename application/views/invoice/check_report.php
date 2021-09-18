<!-- Product Purchase js -->
<!-- <script src="<?php echo base_url() ?>my-assets/js/admin_js/json/product_purchase.js.php" ></script> -->
<!-- Supplier Js -->
<!-- <script src="<?php echo base_url(); ?>my-assets/js/admin_js/json/supplier.js.php" ></script> -->

<!-- <script src="<?php echo base_url() ?>my-assets/js/admin_js/purchase.js.php" type="text/javascript"></script> -->
<script src="<?php echo base_url() ?>my-assets/js/admin_js/invoice.js.php" type="text/javascript"></script>
<style type="text/css">
    .form-control {
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
            <h1>Sales</h1>
            <small>Order Check Report</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Sales</a></li>
                <li class="active">Order Check Report</li>
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
                            <h4>Order Check Report</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                        <?php echo form_open_multipart('Cinvoice/check_chalan_inserted_data_manual', array('class' => 'form-vertical', )) ?>

                        <div class="row">



                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="rqsn_id" class="col-sm-4 col-form-label">Delivery Chalan No:</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="dc_no" id="dc_no" onchange="get_check_details()">
                                            <option value="">Select One</option>
                                            {approved_list}
                                            <option value="{dc_no}">{dc_no}</option>
                                            {/approved_list}
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">


                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label">Date:

                                    </label>
                                    <div class="col-sm-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type="text"  tabindex="2" class="form-control" name="date" value="<?php echo $date; ?>" id="date" readonly />
                                    </div>
                                </div>
                            </div>



                        </div>



                        <div class="row">

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="delivery_type" class="col-sm-4 col-form-label">Requisition No:</label>
                                    <div class="col-sm-8">
                                        <input type="text" id="rqsn_no" name="rqsn_no" class="form-control" readonly>
                                        <input type="hidden" id="invoice_id" name="invoice_id" class="form-control" readonly>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <br>
                        <div id="cart_dt">
                            <h3 align="center">Select Delivery Chalan No. from dropdown to get delivery details.</h3>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="save" class="btn btn-warning btn-large" name="save" value="Print" />
                            </div>
                        </div>
                        <?php echo form_close() ?>
                    </div>
                </div>
<!--                <div class="modal fade" id="printconfirmodal" tabindex="-1" role="dialog" aria-labelledby="printconfirmodal" aria-hidden="true">-->
<!--                    <div class="modal-dialog modal-sm">-->
<!--                        <div class="modal-content">-->
<!--                            <div class="modal-header">-->
<!---->
<!--                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
<!---->
<!--                                <h4 class="modal-tit le" id="myModalLabel">--><?php //echo display('print') ?><!--</h4>-->
<!--                            </div>-->
<!--                            <div class="modal-body">-->
<!--                                --><?php //echo form_open('Cinvoice/chalan_inserted_data_manual', array('class' => 'form-vertical', 'id' => '', 'name' => '')) ?>
<!--                                <div id="outputs" class="hide alert alert-danger"></div>-->
<!--                                <h3> --><?php //echo display('successfully_inserted') ?><!--</h3>-->
<!--                                <h4>--><?php //echo display('do_you_want_to_print') ?><!-- ??</h4>-->
<!---->
<!---->
<!---->
<!--                                <input type="hidden" name="invoice_id" id="inv_id">-->
<!--                            </div>-->
<!--                            <div class="modal-footer">-->
<!--                                <button type="button" onclick="cancelprint()" class="btn btn-default" data-dismiss="modal">--><?php //echo display('no') ?><!--</button>-->
<!--                                <button type="submit" class="btn btn-primary" id="yes">--><?php //echo display('yes') ?><!--</button>-->
<!--                                --><?php //echo form_close() ?>
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
            </div>
        </div>
    </section>
</div>
<!-- Purchase Report End -->

<script type="text/javascript">
    function get_check_details() {
        var dc_no = $("#dc_no").val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();

        $.ajax({
            url: "<?php echo base_url(); ?>Cinvoice/get_check_details",
            method: 'POST',
            data: {
                dc_no: dc_no,
                csrf_test_name: csrf_test_name
            },
            success: function(data) {
                obj = jQuery.parseJSON(data);
                $('#cart_dt').html(obj.html);
                $("#invoice_id").val(obj.invoice_id);
                $("#inv_id").val(obj.invoice_id);
                $("#rqsn_no").val(obj.rqsn_no);

            }
        })

    }

    function add_pur_calc_store(sl) {

        var order_qty = $("#or_qty_" + sl).val();
        var deliver_qty = $("#dc_qty_" + sl).val();

        var bal_qty=order_qty-deliver_qty;
         $("#bl_qty_" + sl).val(bal_qty);




    }

    function full_paid() {
        var advance = $("#advance");
        var gr_tot = $('#grand_total').val();

        advance.val(gr_tot);
        add_pur_calc_store(1);
    }
</script>