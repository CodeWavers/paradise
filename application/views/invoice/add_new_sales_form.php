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
            <small>Add Sales</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Sales</a></li>
                <li class="active">Add Sales</li>
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
                            <h4>Add Sales</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                        <?php echo form_open_multipart('Cinvoice/add_sale', array('class' => 'form-vertical', 'id' => 'insert_sale', 'name' => 'insert_sale')) ?>
                        <div class="row">

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer" class="col-sm-4 col-form-label">Customer Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" id="customer" class="form-control" value="" readonly="readonly">
                                        <input type="hidden" name="customer" id="cus_id" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label">Date:
                                        <i class="text-danger">*</i>
                                    </label>
                                    <div class="col-sm-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type="text" required tabindex="2" class="form-control" name="invoice_date" value="<?php echo $date; ?>" id="date" readonly />
                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="rqsn_id" class="col-sm-4 col-form-label">Invoice/Voucher No:</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="invoice_no" id="invoice_no" onchange="get_so_details()">
                                            <option value="">Select One</option>
                                            {approved_list}
                                            <option value="{invoice_no}">{invoice_no}</option>
                                            {/approved_list}
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="payment_type" class="col-sm-4 col-form-label">Payment Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="payment_type" id="payment_type">
                                            <option value="1">Cash</option>
                                            <option value="2">Credit</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="invoice_no" class="col-sm-4 col-form-label">Vessel Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="vessel_name" class="form-control" value=''>
                                        <input type="hidden" name="invoice_id" id="invoice_id" class="form-control" value=''>
                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="delivery_type" class="col-sm-4 col-form-label">Contact No:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="contact_no" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>



                        <br>
                        <div id="cart_dt">
                            <h3 align="center">Select Requisition No. from dropdown to get order details.</h3>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="save" class="btn btn-success btn-large" name="save" value="Save &amp Submit" />
                            </div>
                        </div>
                        <?php echo form_close() ?>
                    </div>
                </div>
                <div class="modal fade" id="printconfirmodal" tabindex="-1" role="dialog" aria-labelledby="printconfirmodal" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                                <h4 class="modal-tit le" id="myModalLabel"><?php echo display('print') ?></h4>
                            </div>
                            <div class="modal-body">
                                <?php echo form_open('Cinvoice/invoice_inserted_data_manual', array('class' => 'form-vertical', 'id' => '', 'name' => '')) ?>
                                <div id="outputs" class="hide alert alert-danger"></div>
                                <h3> <?php echo display('successfully_inserted') ?></h3>
                                <h4><?php echo display('do_you_want_to_print') ?> ??</h4>



                                <input type="hidden" name="invoice_id" id="inv_id">
                            </div>
                            <div class="modal-footer">
                                <button type="button" onclick="cancelprint_new()" class="btn btn-default" data-dismiss="modal"><?php echo display('no') ?></button>
                                <button type="submit" class="btn btn-primary" id="yes"><?php echo display('yes') ?></button>
                                <?php echo form_close() ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Purchase Report End -->

<script type="text/javascript">
    function get_so_details() {
        var invoice_no = $("#invoice_no").val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();

        $.ajax({
            url: "<?php echo base_url(); ?>Cinvoice/get_so_details",
            method: 'POST',
            data: {
                invoice_no: invoice_no,
                csrf_test_name: csrf_test_name
            },
            success: function(data) {
                obj = jQuery.parseJSON(data);
                $('#cart_dt').html(obj.html);
                $('#customer').val(obj.cus_name);
                $("#cus_id").val(obj.cus_id);
                $("#invoice_id").val(obj.invoice_id);
                $("#inv_id").val(obj.invoice_id);
            }
        })

    }

    function add_pur_calc_store(sl) {

        var gr_tot = 0;
        var dis = 0;
        var real_gr_tot = 0;
        var item_ctn_qty = $("#qty_" + sl).val();
        var vendor_rate = $("#rate_" + sl).val();

        var discount = $("#discount").val()
        var other_charges = $("#other_charges").val();
        var advance = $("#advance").val();
        var due_amount = $("#due_amount").val();

        var total_price = (item_ctn_qty * vendor_rate);
        $("#row_total_" + sl).val(total_price.toFixed(2));


        //Total Price
        $(".row_total").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });
        // $(".discount").each(function() {
        //    isNaN(this.value) || 0 == this.value.length || (dis += parseFloat(this.value))
        //});

        $("#sub_total").val(gr_tot.toFixed(2, 2));

        var real_gr_tot = gr_tot - (discount ? parseFloat(discount) : 0) + (other_charges ? parseFloat(other_charges) : 0);

        $("#grand_total").val(real_gr_tot.toFixed(2, 2));

        $("#due_amount").val((real_gr_tot - advance).toFixed(2));

    }

    function full_paid() {
        var advance = $("#advance");
        var gr_tot = $('#grand_total').val();

        advance.val(gr_tot);
        add_pur_calc_store(1);
    }
</script>