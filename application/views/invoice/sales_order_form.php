<!-- Product Purchase js -->
<!-- <script src="<?php echo base_url() ?>my-assets/js/admin_js/json/product_purchase.js.php" ></script> -->
<!-- Supplier Js -->
<!-- <script src="<?php echo base_url(); ?>my-assets/js/admin_js/json/supplier.js.php" ></script> -->

<!-- <script src="<?php echo base_url() ?>my-assets/js/admin_js/purchase.js.php" type="text/javascript"></script> -->
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
            <small>Add Sales Order</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Sales</a></li>
                <li class="active">Sales Order</li>
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
                            <h4>Add Sales Order</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                        <?php echo form_open_multipart('Cinvoice/save_sales_order', array('class' => 'form-vertical', 'id' => 'insert_purchase', 'name' => 'insert_purchase')) ?>


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
                                  <?php if ($this->permission1->method('add_supplier', 'create')->access()) { ?>
                                    <div class="col-sm-2" style="padding: 0px;">
                                        <a class="btn btn-success" style="margin: 0;" title="Add New Supplier" href="<?php echo base_url('Csupplier'); ?>"><i class="fa fa-user"></i></a>
                                    </div>
                                <?php } ?>
                                </div>
                            </div>
                        </div> -->

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label">Date
                                        <i class="text-danger">*</i>
                                    </label>
                                    <div class="col-sm-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type="text" required tabindex="2" class="form-control datepicker" name="invoice_date" value="<?php echo $date; ?>" id="date" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="invoice_no" class="col-sm-4 col-form-label">Sales Order No.</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="invoice_no" id="so_no" class="form-control" value="" readonly>
                                        <input type="hidden" id="AI" name="" class="form-control" value={sales_order_no} readonly>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="rqsn_id" class="col-sm-4 col-form-label">Requisition No.</label>
                                    <div class="col-sm-8">

                                        <?php if($approved_list){?>
                                        <select class="form-control" name="rqsn_id" id="rqsn_id" onchange="get_rqsn_details()">
                                            <option value="">Select One</option>
                                            {approved_list}
                                            <option value="{rqsn_id}">{rqsn_no}</option>
                                            {/approved_list}
                                        </select>
                                        <?php }else{ ?>
                                            <input class="form-control" type="text" value="No Requisition to show" readonly>
                                        <?php } ?>
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
                                    <label for="customer" class="col-sm-4 col-form-label">Customer Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" id="customer" class="form-control" value="" readonly="readonly">
                                        <input type="hidden" name="customer" id="cus_id" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="delivery_type" class="col-sm-4 col-form-label">Delivery Type</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="delivery_type" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer" class="col-sm-4 col-form-label">Vessel Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" id="vessel" name="vessel_name" class="form-control" value="" readonly="readonly">
                                        <input type="hidden" id="voyage_no" name="voyage_no" class="form-control" value="" readonly="readonly">

                                    </div>
                                </div>
                            </div>

                        </div>



                        <br>
                        <div id="cart_dt">
                            <h3 align="center">Select Invoice No. from dropdown to get order details.</h3>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="save" class="btn btn-success btn-large" name="save" value="Save &amp Submit" />
                            </div>
                        </div>
                        <?php echo form_close() ?>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
<!-- Purchase Report End -->

<script type="text/javascript">

    // function generate_number(){
    //
    //     // alert('Hello')
    //     var AI=$('#AI').val();
    //     var vsn=$('#customer').val();
    //     var date=$('#date').val();
    //     var arr1 = date.split('-');
    //     // alert(arr1[0])
    //     var fix1=arr1[0].slice(-2)
    //
    //     var fix2=parseInt(fix1)+1;
    //
    //     //alert(fix2)
    //
    //
    //     var generate_number='MEL-'+vsn+'-'+SO+AI+'-'+fix1+'-'+fix2
    //
    //     $('#rqsn_no').val(generate_number);
    //
    //     // console.log(arr2);
    //
    // }
    function get_rqsn_details() {
        var rqsn_id = $("#rqsn_id").val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();

        $.ajax({
            url: "<?php echo base_url(); ?>Crqsn/get_rqsn_details",
            method: 'POST',
            data: {
                rqsn_id: rqsn_id,
                csrf_test_name: csrf_test_name
            },
            success: function(data) {
                obj = jQuery.parseJSON(data);
                $('#cart_dt').html(obj.html);
                $('#customer').val(obj.cus_name);
                $("#cus_id").val(obj.cus_id);
                $("#vessel").val(obj.vessel_name);
                $("#voyage_no").val(obj.voyage_no);

                var customer_name=$('#customer').val().match(/\b(\w)/g).join('').toUpperCase() ;
                var AI=$('#AI').val();
                var vsn=$('#vessel').val();
                var vygn=$('#voyage_no').val();
                var date=$('#date').val();
                var arr1 = date.split('-');
                //alert(vsn)
                var fix1=arr1[0].slice(-2)

                var fix2=parseInt(fix1)+1;

                //alert(fix2)


              //  var generate_number=customer_name+'-'+vsn+'-SO'+AI+'-'+fix1+'-'+fix2
              //   var generate_number=vsn+vygn+'-SO'+AI;
                 var generate_number=vsn+'SO-'+vygn;

                $('#so_no').val(generate_number.toUpperCase());
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