
<!-- Product Purchase js -->
<!-- <script src="<?php echo base_url()?>my-assets/js/admin_js/json/product_purchase.js.php" ></script> -->
<!-- Supplier Js -->
<!-- <script src="<?php echo base_url(); ?>my-assets/js/admin_js/json/supplier.js.php" ></script> -->

<!-- <script src="<?php echo base_url()?>my-assets/js/admin_js/purchase.js.php" type="text/javascript"></script> -->
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
            <small>ERP Entry</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('purchase') ?></a></li>
                <li class="active">ERP Entry</li>
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
                        <div class="panel-title" >
                            <h4>Product Receive</h4>
                        </div>
                    </div>

                    <div class="panel-body" id="printableArea">
                        <?php echo form_open_multipart('Cpurchase/erp_entry',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>


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
                            <div class="col-xs-6">
                                <div class="form-group row">
                                    <label for="date" class="col-xs-4 col-form-label">Receiving Date

                                    </label>
                                    <div class="col-xs-8">
                                        <?php $date = date('Y-m-d'); ?>
                                        <input type="text"  tabindex="2" class="form-control datepicker" name="purchase_date" value="<?php echo $date; ?>" id="date"  />
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group row">
                                    <label for="date" class="col-xs-4 col-form-label">Purchase Order No.</label>
                                    <div class="col-xs-8">
                                        <?php if($po_list){?>
                                        <select class="form-control" id="pur_order_no" name="pur_order_no" onchange="get_receive_details()">
                                            <option value="">Select PO</option>
                                            {po_list}
                                            <option value={purchase_id}>{purchase_order}</option>
                                            {/po_list}
                                        </select>
                                        <?php }else{ ?>
                                            <input class="form-control" type="text" value="No purchase to show" readonly>
                                            <?php } ?>
                                    </div>
                                </div>
                            </div>

                        </div>





                        <br>
                        <div id="cart_dt">
                            <h3 align="center">Select PO No. from dropdown to product receive details.</h3>
                        </div>

                        <div class="row " >
                            <div class="col-xs-6">
                                <div class="form-group row">
                                    <label for="date" class="col-xs-4 col-form-label">Receiving By

                                    </label>
                                    <div class="col-xs-8">

                                        <input type="text"  tabindex="2" class="form-control " name="" value="" id=""  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group row">
                                    <label for="date" class="col-xs-4 col-form-label">Checked By

                                    </label>
                                    <div class="col-xs-8">

                                        <input type="text"  tabindex="2" class="form-control " name="purchase_date" value="" id="date"  />
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>

            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-6">
<!--                <input type="submit" id="save" class="btn btn-success btn-large" name="save" value="Save" />-->
                <input type="submit"  class="btn btn-info" >
            </div>
        </div>

        <?php echo form_close()?>
    </section>
</div>
<!-- Purchase Report End -->

<script type="text/javascript">


function get_receive_details() {
    var po_id = $("#pur_order_no").val();
    var csrf_test_name = $('[name="csrf_test_name"]').val();

    $.ajax({
        url : "<?php echo base_url(); ?>Cpurchase/get_receive_details_three",
        method : 'POST',
        data : {
            po_id : po_id,
            csrf_test_name : csrf_test_name
        },
        success:function(data){
            $('#cart_dt').html(data);
        }
    })

}

function add_pur_calc_store(sl) {

var gr_tot = 0;
var dis = 0;
var discount = $("#discount_" + sl).val()
var item_ctn_qty = $("#order_quantity_" + sl).val();
var vendor_rate = $("#product_rate_" + sl).val();
var currency_value = $("#currency_value_" + sl).val();

var additional_cost = parseFloat($("#additional_cost_" + sl).val());

if (!additional_cost) {
    additional_cost = 0;
}

if (!discount) {
    discount = 0;
}

// var bdt_price=currency_value*vendor_rate;
//   $("#bdt_price_" + sl).val(bdt_price.toFixed(2));

//console.log(currency_value);
//console.log(bdt_price);

var total_price = ((item_ctn_qty * vendor_rate) - ((item_ctn_qty * vendor_rate) * (discount / 100))) + additional_cost;
$("#row_total_" + sl).val(total_price.toFixed(2));


//Total Price
$(".row_total").each(function () {
    isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
});
// $(".discount").each(function() {
//    isNaN(this.value) || 0 == this.value.length || (dis += parseFloat(this.value))
//});

$("#grand_total").val(gr_tot.toFixed(2, 2));
//var grandtotal = gr_tot;
//$("#Total").val(grandtotal.toFixed(2,2));
//invoice_paidamount();

var supp_id = $("#supplier_drop_" + sl).val();
var warr_date = $("#warrenty_date_" + sl).val();
// var add_cost = $("#additional_cost_" + sl).val();
var cb_no = $("#c_b_no" + sl).val();
var id = $("#sl_id_" + sl).val();
var csrf_test_name = $('[name="csrf_test_name"]').val();
// var data = {
//     'id': id,
//     'order_qty': item_ctn_qty,
//     'rate': vendor_rate,
//     'discount': discount,
//     'add_cost': additional_cost,
//     'supp_id': supp_id,
//     'warr_date': warr_date,
//     'cb_no': cb_no,
//     'total' : total,
//     'csrf_test_name':csrf_test_name
// }

// console.log(data);


$.ajax({
    url: '<?= base_url() ?>' + "Cpurchase/update_changed",
    method: 'post',
    data: {
        id: id,
        order_qty: item_ctn_qty,
        rate: vendor_rate,
        discount: discount,
        add_cost: additional_cost,
        supp_id: supp_id,
        warr_date: warr_date,
        cb_no: cb_no,
        total: total_price,
        csrf_test_name: csrf_test_name
    }

});

}

$(document).on('click', '.remove_inventory', function(){
            var sl = $(this).attr("id");
            var row_id = $("#sl_id_" + sl).val();

            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(confirm("Are you sure you want to remove this?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cpurchase/remove_from_list",
                    method:"POST",
                    data:{
                        csrf_test_name:csrf_test_name,
                        row_id:row_id,
                    },
                    success:function(data)
                    {
                        toastr.warning("Product removed from Purchase!");
                        get_purchase_details();
                    }
                });
            }
            else
            {
                return false;
            }
        });
        function productList_with_cat_subcat(sl) {

var csrf_test_name = $('[name="csrf_test_name"]').val();
var base_url = $("#base_url").val();


var po_id = $("#pur_order_no").val();

// Auto complete
var options = {
    minLength: 0,
    source: function (request, response) {
        var product_name = $('#product_name_' + sl).val();
        $.ajax({
            url: base_url + "Crqsn/autosearch",
            method: 'post',
            dataType: "json",
            data: {
                term: request.term,
                product_name: product_name,
                // cat_id: cat_id,
                // subcat_id: subcat_id,
                // brand_id: brand_id,
                // mdoel_id: model_id,
                csrf_test_name: csrf_test_name,

            },
            success: function (data) {
                response(data);

            }
        });
    },
    focus: function (event, ui) {
        $(this).val(ui.item.label);
        return false;
    },
    select: function (event, ui) {
        $(this).parent().parent().find(".autocomplete_hidden_value").val(ui.item.value);
        $(this).val(ui.item.label);
        var id = ui.item.value;
        var base_url = $('.baseUrl').val();

        $.ajax({
            type: "POST",
            url: base_url + "Cpurchase/add_product",
            data: {
                product_id: id,
                po_id: po_id,
                csrf_test_name: csrf_test_name
            },
            cache: false,
            success: function () {
                toastr.success('Product Added.');
                get_purchase_details();
                $("#product_name_1").val('');
            }
        });

        $(this).unbind("change");
        return false;
    }
}

$('body').on('keypress.autocomplete', '.productSelection', function () {
    $(this).autocomplete(options);
});
}
</script>