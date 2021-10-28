
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
            <h1>Purchase</h1>
            <small>Purchase Order</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('purchase') ?></a></li>
                <li class="active">Purchase Order</li>
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


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label">Purchase Order Date
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
                                        <input type="hidden" id="AI" name="" class="form-control" value="<?= $order_no ?>" readonly="readonly">
                                        <input type="text" class="form-control" id="pur_order_no" name="pur_order_no" value="" readonly>
                                    </div>
                                </div>
                            </div>

                        </div>



                        <br>
                        <div id="cart_details">
                            <h3 align="center">No Purchase Order</h3>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" onclick="return confirm('<?php echo display("are_you_sure") ?>')"  id="save_as_draft" class="btn btn-warning btn-large" name="save_as_draft" value="Save As Draft" />
                                <input type="submit" onclick="return confirm('<?php echo display("are_you_sure") ?>')"  value="Finalize" name="finalize" class="btn btn-large btn-success" id="finalize" >
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





    function add_row(sl) {
        var pr_id = $("#product_id_" + sl).val();
        var prop_qty = $("#proposed_quantity_" + sl).val();
        var product_name = $("#product_name_" + sl).val();
        var supplier_id = $("#supplier_drop_" + sl).val();
        var row_id = $("#sl_id_" + sl).val();

        var order_quantity = $("#order_quantity_" + sl).val();
        var warrenty_date = $("#warrenty_date_" + sl).val();
        var price = $("#product_rate_" + sl).val();
        var discount = $("#discount_" + sl).val();
        var row_total = $("#row_total_" + sl).val();
        var additional_cost = $("#additional_cost_" + sl).val();

        var sku = $("#item_sku_" + sl).val();
        var rqsn_id = $("#rqsn_detail_id_" + sl).val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        console.log(product_name);;
        $.ajax({
            url:"<?php echo base_url(); ?>Cpurchase/add_row",
            method:"POST",
            data:{
                csrf_test_name:csrf_test_name,
                pr_id:pr_id,
                prop_qty: prop_qty,
                product_name : product_name,
                supp_id:supplier_id,
                order_quantity : order_quantity,
                warrenty_date: warrenty_date,
                price: price,
                discount: discount,
                row_total: row_total,
                additional_cost: additional_cost,
                sku: sku,
                rqsn_id: rqsn_id,
                row_id: row_id
            },
            success:function(data)
            {
                $('#cart_details').html(data);
            }
        });
    }

    $( document ).ready(function() {
        // var gr_tot = 0;
        // $(".row_total").each(function() {
        //     isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        // });
        //
        //
        // $("#grand_total").val(gr_tot.toFixed(2,2));

        var AI=$('#AI').val();
        var vsn=$('#vessel_name').val();
        var date=$('#date').val();
        var arr1 = date.split('-');
        var fix1=arr1[0].slice(-2)

        var fix2=parseInt(fix1)+1;




        var generate_number='MEL-PO'+AI+'-'+fix1+'-'+fix2

        $('#pur_order_no').val(generate_number);



        $('#cart_details').load("<?php echo base_url(); ?>Cpurchase/load");

        $(document).on('click', '.remove_inventory', function(){
            var sl = $(this).attr("id");
            var pr_id = $("#product_id_" + sl).val();
            var row_id = $("#sl_id_" + sl).val();
            var rqsn_id = $("#rqsn_detail_id_" + sl).val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(confirm("Are you sure you want to remove this?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cpurchase/remove",
                    method:"POST",
                    data:{
                        csrf_test_name:csrf_test_name,
                        row_id:row_id,
                        pr_id : pr_id,
                        rqsn_id : rqsn_id
                    },
                    success:function(data)
                    {
                        toastr.warning("Product removed from Purchase Order!");
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

            var p_id = $("input[name='product_id[]']")
                .map(function(){return $(this).val();}).get().join(',');


            var csrf_test_name = $('[name="csrf_test_name"]').val();
            // console.log(pid_count);
            if(confirm("Are you sure you want to clear cart?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cpurchase/clear",
                    method:"POST",
                    data:{
                        csrf_test_name : csrf_test_name,
                        p_id : p_id
                    },
                    success:function(data)
                    {
                        console.log(p_id);
                        toastr.warning("Your purchase order has been cleared...");
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