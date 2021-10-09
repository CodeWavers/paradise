<!-- Invoice js -->
<script src="<?php echo base_url() ?>my-assets/js/admin_js/rqsn.js.php" type="text/javascript"></script>
<style type="text/css">
    .form-control {
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
        <!--                --><?php //if($this->permission1->method('manage_invoice','read')->access()){
                                ?>
        <!--                    <a href="--><?php //echo base_url('Cinvoice/manage_invoice')
                                            ?>
        <!--" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> --><?php //echo display('manage_invoice')
                                                                                    ?>
        <!-- </a>-->
        <!--                --><?php //}
                                ?>
        <!--                --><?php //if($this->permission1->method('pos_invoice','create')->access()){
                                ?>
        <!--                    <a href="--><?php //echo base_url('Cinvoice/pos_invoice')
                                            ?>
        <!--" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  --><?php //echo display('pos_invoice')
                                                                                        ?>
        <!-- </a>-->
        <!--                --><?php //}
                                ?>
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
                        <?php echo form_open_multipart('Crqsn/insert_rqsn', array('class' => 'form-vertical', 'id' => 'insert_rqsn')) ?>
                        <div class="row">

                            <div class="col-sm-" id="payment_from_2">
                                <div class="form-group row  rqsn-form-input">
                                    <label for="customer_name_others" class="col-sm-3 col-form-label text-right"><?php echo display('customer_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                        <input autofill="off" type="text" size="100" name="customer_name_others" placeholder='<?php echo display('customer_name') ?>' id="customer_name_others" class="form-control" />
                                        <input type="hidden" name="csrf_test_name" id="csrf_test_name" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                    </div>

                                    <div class="col-sm-3">
                                        <input onClick="active_customer('payment_from_2')" type="button" id="myRadioButton_2" class="checkbox_account btn btn-success" name="customer_confirm_others" value="<?php echo display('old_customer') ?>">
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
                                            <input class="datepicker form-control" type="text" size="50" name="invoice_date" id="date" required value="<?php echo html_escape($date); ?>" tabindex="4" onchange="generate_number()"  onkeyup="generate_number()" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="select_cat" class="col-sm-4 col-form-label text-right">Category : </label>
                                        <div class="col-sm-6">
                                            <select name="select_cat" id="select_cat" class="form-control"">
                                            <option value="">Select One</option>
                                            {cat_list}
                                            <option value=" {category_id}">{category_name}</option>
                                                {/cat_list}
                                            </select>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <div class="row">

                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="customer_name" class="col-sm-4 col-form-label text-right">Customer Name : </label>
                                        <div class="col-sm-8">
                                            <select name="customer_name" id="customer_id" class="form-control" onchange="select_vessel()">
                                                <option value="">Select Customer</option>
                                                {customers}
                                                <option value="{customer_id}">{customer_name}</option>
                                                {/customers}
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row " id="subCat_div">
                                        <label for="select_subcat" class="col-sm-4 col-form-label text-right">Sub Category : </label>
                                        <div class="col-sm-6">
                                            <select name="selct_subcat" id="select_subcat" class="form-control">
                                                <option value="">Select One</option>
                                                {subcat_list}
                                                <option value="{sub_cat_id}">{subcat_name}</option>
                                                {/subcat_list}
                                            </select>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <div class="row">

                                <div class="col-sm-6" id="vessel_div">
                                    <div class="form-group row ">
                                        <label for="rqsn_for" class="col-sm-4 col-form-label text-right">Vessel Name : </label>
                                        <div class="col-sm-8">
                                            <select name="rqsn_for" id="rqsn_for" class="form-control" onchange="generate_number()">
                                                <option value="">Vessele</option>
<!--                                                {outlet_list}-->
<!--                                                <option value="{outlet_id}">{outlet_name}</option>-->
<!--                                                {/outlet_list}-->
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row">
                                        <label for="select_brand" class="col-sm-4 col-form-label text-right">Brand : </label>
                                        <div class="col-sm-6">
                                            <select name="selct_brand" id="select_brand" class="form-control">
                                                <option value="">Select One</option>
                                                {brand_list}
                                                <option value="{brand_id}">{brand_name}</option>
                                                {/brand_list}
                                            </select>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <div class="row">

                                <div class="col-sm-6">

                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Voyage No. : </label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" value="" name="voyage_no" id="voyage_no" onchange="generate_number()"  onkeyup="generate_number()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group row ">
                                        <label for="select_model" class="col-sm-4 col-form-label text-right">Model : </label>
                                        <div class="col-sm-6">
                                            <select name="selct_model" id="select_model" class="form-control">
                                                <option value="">Select One</option>
                                                {model_list}
                                                <option value="{model_id}">{model_name}</option>
                                                {/model_list}
                                            </select>
                                        </div>
                                    </div>
                                </div>






                            </div>
                            <div class="row">

                                <div class="col-sm-6">

                                    <div class="form-group row">
                                        <label for="rqsn_no" class="col-sm-4 col-form-label text-right">Requisition No. : </label>
                                        <div class="col-sm-8">
                                            <input type="hidden" id="AI" name="" class="form-control" value={rqsn_no} readonly>
                                            <input type="text" class="form-control" value="" name="rqsn_no" id="rqsn_no" readonly>
                                        </div>
                                    </div>
                                </div>







                            </div>
                            <div class="row">


                                <div class="col-sm-6">

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label text-right">Product Name : </label>
                                        <div class="col-sm-8">
                                            <input type="text" autocomplete="off" name="product_name" onkeypress="productList_with_cat_subcat(1)" id="product_name_1" class="form-control productSelection" placeholder="<?php echo display('product_name') ?>" tabindex="5">

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" id="SchoolHiddenId" />
                                            <input type="hidden" value="<?php echo base_url() ?>" class="baseUrl" name="" id="baseUrl" />
                                        </div>
                                    </div>
                                </div>




                            </div>



                        </div>

                        <br>


                        <div id="cart_details">
                            <h3 align="center">Requisition is Empty</h3>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" value="Finalize" name="finalize" class="btn btn-large btn-success" id="">
                                <input type="submit" value="Save as Draft" name="save_draft" class="btn btn-large btn-warning" id="">
                            </div>
                        </div>


                        <?php echo form_close() ?>
                    </div>

                </div>
            </div>







        </div>
    </section>
</div>
<!-- Invoice Report End -->

<script type="text/javascript">
    function select_vessel() {

        var customer_id=$('#customer_id').val();
      //      alert(customer_id)


        var base_url = "<?= base_url() ?>";
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        //var sub_cat_selected = "";


        $.ajax( {
            url: base_url + "Crqsn/vessel_by_customer",
            method: 'post',
            data: {
                customer_id:customer_id,
                csrf_test_name:csrf_test_name
            },
            cache: false,
            success: function( data ) {
                var obj = jQuery.parseJSON(data);

              //  console.log(obj)
                $('#rqsn_for').html(obj.vessel_list);

            }
        })

    }


    function generate_number(){

       // alert('Hello')

        var AI=$('#AI').val();
        var vsn=$('#rqsn_for option:selected').text();
        var vygn=$('#voyage_no').val();
        var date=$('#date').val();
        var arr1 = date.split('-');
       // alert(arr1[0])
        var fix1=arr1[0].slice(-2)

        var fix2=parseInt(fix1)+1;

        //alert(fix2)


        var generate_number='MEL-'+vsn+'-RQ'+AI+'-'+vygn+'-'+fix1+'-'+fix2

        $('#rqsn_no').val(generate_number);

      // console.log(arr2);

    }



    $(document).ready(function() {
        // setInterval(function(){
        //
        //$('#cart_details').load("<?php //echo base_url();
                                    ?>//Cadd_rqsn/load");
        //
        // }, 1000);



        $('#cart_details').load("<?php echo base_url(); ?>Cadd_rqsn/load");

        $(document).on('click', '.remove_inventory', function() {
            var row_id = $(this).attr("id");
            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if (confirm("Are you sure you want to remove this?")) {
                $.ajax({
                    url: "<?php echo base_url(); ?>Cadd_rqsn/remove",
                    method: "POST",
                    data: {
                        csrf_test_name: csrf_test_name,
                        row_id: row_id
                    },
                    success: function(data) {
                        toastr.success("Product removed from Cart!");
                        $('#cart_details').html(data);
                    }
                });
            } else {
                return false;
            }
        });

        $(document).on('click', '#clear_cart', function() {
            if (confirm("Are you sure you want to clear cart?")) {
                $.ajax({
                    url: "<?php echo base_url(); ?>Cadd_rqsn/clear",
                    success: function(data) {
                        toastr.success("Your cart has been clear...");
                        $('#cart_details').html(data);
                    }
                });
            } else {
                return false;
            }
        });

    });

    // function get_subcat() {
    //     var category_id = $("#select_cat").val();
    //
    //     var base_url = "<?//= base_url() ?>//";
    //     var csrf_test_name = $('[name="csrf_test_name"]').val();
    //     var sub_cat_selected = "";
    //
    //
    //     $.ajax( {
    //         url: base_url + "Cproduct/sub_cat_by_category",
    //         method: 'post',
    //         data: {
    //             category_id:category_id,
    //             sub_cat_selected: sub_cat_selected,
    //             csrf_test_name:csrf_test_name
    //         },
    //         cache: false,
    //         success: function( data ) {
    //             var obj = jQuery.parseJSON(data);
    //             $('#select_subcat').html(obj.sub_cat);
    //             // $('#cat_id').val(obj.c_id);
    //             // var cat_id = $("#cat_id").val();
    //
    //             if(category_id == obj.c_id ){
    //                 $("#subCat_div").css("display", "block");
    //             }else{
    //                 $("#subCat_div").css("display", "none");
    //             }
    //         }
    //     })

    // }

    function productList_with_cat_subcat(sl) {
        var priceClass = 'price_item' + sl;
        var available_quantity = 'available_quantity_' + sl;
        var unit = 'unit_' + sl;
        var tax = 'total_tax_' + sl;
        var serial_no = 'serial_no_' + sl;
        var warehouse = 'warehouse_' + sl;
        var warrenty_date = 'warrenty_date_' + sl;
        var expiry_date = 'expiry_date_' + sl;
        var discount_type = 'discount_type_' + sl;
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        var base_url = $("#base_url").val();
        var cat_id = $("#select_cat").val();
        var subcat_id = $("#select_subcat").val();
        var brand_id = $("#select_brand").val();
        var model_id = $("#select_model").val();


        // Auto complete
        var options = {
            minLength: 0,
            source: function(request, response) {
                var product_name = $('#product_name_' + sl).val();
                $.ajax({
                    url: base_url + "Crqsn/autosearch",
                    method: 'post',
                    dataType: "json",
                    data: {
                        term: request.term,
                        product_name: product_name,
                        cat_id: cat_id,
                        subcat_id: subcat_id,
                        brand_id: brand_id,
                        mdoel_id: model_id,
                        csrf_test_name: csrf_test_name,

                    },
                    success: function(data) {
                        response(data);

                    }
                });
            },
            focus: function(event, ui) {
                $(this).val(ui.item.label);
                return false;
            },
            select: function(event, ui) {
                $(this).parent().parent().find(".autocomplete_hidden_value").val(ui.item.value);
                $(this).val(ui.item.label);
                var id = ui.item.value;
                var dataString = 'product_id=' + id;
                var base_url = $('.baseUrl').val();
                var p_id = $("input[name='product_id[]']")
                    .map(function() {
                        return $(this).val();
                    }).get().join(',');

                var qty = $("input[name='product_quantity[]']")
                    .map(function() {
                        return $(this).val();
                    }).get().join(',');

                $.ajax({
                    type: "POST",
                    url: base_url + "Cadd_rqsn/add",
                    data: {
                        product_id: id,
                        all_pid: p_id,
                        qty : qty,
                        csrf_test_name: csrf_test_name
                    },
                    cache: false,
                    success: function(data) {

                        toastr.success("Requisition Added");
                        $('#cart_details').load(base_url + "Cadd_rqsn/load");
                        $('#' + id).val('');
                        $("#product_name_1").val('');
                        // $('#cart_details').html(data);
                        //   var obj = jQuery.parseJSON(data);

                        //  console.log(obj)


                    }
                });

                $(this).unbind("change");
                return false;
            }
        }

        $('body').on('keypress.autocomplete', '.productSelection', function() {
            $(this).autocomplete(options);
        });
    }
</script>