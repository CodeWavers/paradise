
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
            <h1>Delivery Chalan</h1>
            <small>Details</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Delivery Chalan</a></li>
                <li class="active">Details</li>
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
                            <h4>Delivery Chalan</h4>

                        </div>
                    </div>



                    <div class="rqsn_panel" style="margin-top: 10px; margin-bottom:10px;">
                      <?php echo form_open_multipart('Cinvoice/update_pending_dc',array('class' => 'form-vertical', 'id' => 'insert_rqsn'))?>
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
                                        <input class="form-control" type="text" size="50" name="invoice_date" id="date" required value="<?php echo $rqsn_details[0]['date'] ?>" tabindex="4" readonly />
                                    </div>
                                </div>

                                <div class="form-group row rqsn-form-input">
                                    <label for="customer_name" class="col-sm-3 col-form-label text-right">Customer Name : </label>
                                    <div class="col-sm-9" >
                                        <input type="text" class="form-control" name="customer_name" id="customer_name" value="<?= $rqsn_details[0]['customer_name'] ?>" readonly >
                                    </div>
                                </div>

                                <div class="form-group row  rqsn-form-input">
                                    <label for="rqsn_for" class="col-sm-3 col-form-label text-right">Vessel Name : </label>
                                    <div class="col-sm-9">
                                    <input type="text" class="form-control" name="" id="" value="<?= $rqsn_details[0]['vessel_name'] ?>" readonly >
                                    <input type="hidden" class="form-control" name="rqsn_for" id="rqsn_for" value="<?= $rqsn_details[0]['customer_id'] ?>" readonly >
                                        <input type="hidden" value="<?= $rqsn_details[0]['due'] ?>" name="due_amount" class="form-control due_amount" id="due_amount"  readonly>

                                    </div>
                                </div>

                                <div class="form-group row rqsn-form-input">
                                    <label for="rqsn_no" class="col-sm-3 col-form-label text-right">DC No. : </label>
                                    <div class="col-sm-9" >
                                        <input type="text" class="form-control" name="dc_no" id="dc_no" value="<?= $rqsn_details[0]['dc_no'] ?>" readonly>
                                    </div>
                                </div>


                            </div>

                        </div>

                        <br>


                        <div class="table-responsive">
                            <table class="table table-striped table-bordered " cellspacing="0" width="100%" id="add_rqsn_table">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th>Category</th>
                                        <th>Sub Category</th>
                                        <th class="col-md-2"><?php echo display('product_name') ?></th>
                                        <th>SKU</th>
                                        <th>Current Stock</th>
                                        <th>Order Quantity</th>
                                        <th>Adjusted Quantity</th>
                                        <th>Delivered Quantity</th>
                                        <th>Pending Quantity</th>
                                        <th>Quantity</th>

                                    </tr>
                                </thead>
                                <tbody>

                                <?php foreach ($rqsn_details as $rqsn_detail) { ?>


                                    <?php

                                    $CI = & get_instance();
                                    $CI->load->model('Reports');

                                    $current_stock=$CI->Reports->current_stock($rqsn_detail['product_id'])
                                    ?>
                                    <?php if ( $rqsn_detail['quantity'] - $rqsn_detail['dc_qty'] > 0) {?>
                                    <tr class="text-center">
                                        <td><?php echo  $sl=$rqsn_detail['sl']?>
                                    </td>
                                        <td><?php echo $rqsn_detail['category_name']?></td>
                                        <td><?php echo $rqsn_detail['subcat_name']?></td>
                                        <td>
                                            <?php echo $rqsn_detail['product_name']?>
                                            <input type="hidden" value="<?php echo $rqsn_detail['product_id']?>" name="product_id[]" class="form-control" id="product_id_'<?php $rqsn_detail['sl'] ?> . '"  >
                                            <input type="hidden" value="<?php echo $rqsn_detail['invoice_details_id']?>" name="invoice_details_id[]" class="form-control" id="" >
                                        </td>

                                        <td><?php echo $rqsn_detail['sku']?></td>
                                        <td><?php echo $current_stock?></td>

                                        <td style="width: 5%;" >
                                            <input type="text" value="<?php echo $rqsn_detail['order_qty']?>" name="order_qty[]" class="form-control order_quantity" id="order_quantity"  readonly>
                                            <input type="hidden" value="<?php echo $current_stock?>" name="current_stock[]" class="form-control current_stock" id="current_stock"  readonly>

                                        </td>
                                        <td style="width: 5%;" >
                                            <input type="text" value="<?php echo $rqsn_detail['quantity']?>" name="quantity[]" class="form-control quantity" id="quantity"  readonly>
                                        </td>
                                        <td style="width: 5%;" >

                                            <input type="text" value="<?php echo $rqsn_detail['dc_qty']?>" name="dc_qty[]" class="form-control dc_qty_<?php echo $sl?>" id="dc_qty" onkeyup="row_total(<?php echo $sl?>)" readonly>
                                            <input type="hidden" value="<?php echo $rqsn_detail['dc_qty']?>" name="d_qty[]" class="form-control d_qty_<?php echo $sl?>" id="d_qty" onkeyup="row_total(<?php echo $sl?>)" readonly>

                                        </td>
                                        <td style="width: 5%;" >

                                            <input type="text" value="<?php echo $rqsn_detail['quantity']-$rqsn_detail['dc_qty']?>" name="pending_qty[]" class="form-control pending_qty" id="pending_qty_<?php echo $sl?>" onchange="row_total(<?php echo $sl?>)" onkeyup="row_total(<?php echo $sl?>)" readonly>
                                            <input type="hidden" value="<?php echo $rqsn_detail['quantity']-$rqsn_detail['dc_qty']?>" name="p_qty[]" class="form-control p_qty_<?php echo $sl?>" id="p_qty"  onkeyup="row_total(<?php echo $sl?>)" readonly>

                                        </td>
                                        <td style="width: 5%;" >

                                            <input autocomplete="off" type="text" value="" name="re_qty[]" class="form-control re_qty_<?php echo $sl?>" id="re_qty"  onkeyup="calculation(<?php echo $sl?>)" placeholder="0.00">

                                        </td>

                                    <?php } ?>
                                    </tr>
                                    <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
                                <?php } ?>
                                </tbody>

<!--                                <tfoot>-->
<!--                                <tr>-->
<!--                                    <td colspan="9" class="text-right"><b>Grand Total:</b></td>-->
<!--                                    <td style="width: 10%">-->
<!--                                        <input  class="form-control" name="total" id="grand_total" value='--><?php //echo number_format($grand_total,2)?><!--' readonly/>-->
<!--                                    </td>-->
<!--                                </tr>-->
<!--                                </tfoot>-->
                            </table>

                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="hidden" class="form-control" name="total_pending_qty" id="pt_tot" value='0' readonly/>
                                 <input type="hidden" value="<?php echo $rqsn_detail['invoice_id']?>" name="invoice_id" class="form-control" id="" >
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


    function row_total(sl){

        var quantity = $(".quantity_" + sl).val();
        var rate = $(".rate_" + sl).val();

       // alert(rate)


        var row_total=quantity*rate

        $(".total_price_" + sl).val(row_total.toFixed(2));

       //  alert(quantity)



    }





    function calculation(sl) {
        var re_quantity = parseFloat($(".re_qty_" + sl).val());

        var p_qty = $(".p_qty_" + sl).val();
        var d_qty = parseFloat($(".d_qty_" + sl).val());



        var new_qty=re_quantity+d_qty
        var pending_qty=p_qty-re_quantity

        if (re_quantity > p_qty){
            toastr.error('Yon cannot delivered greater than pending quantity')
           parseFloat($(".re_qty_" + sl).val(''));
            $(".dc_qty_" + sl).val(d_qty);
            $("#pending_qty_" + sl).val(p_qty);

        }else{
            $(".dc_qty_" + sl).val(new_qty);
            $("#pending_qty_" + sl).val(pending_qty);
        }

    //    console.log(new_qty)

        var pt_tot=0;

//Total Price
        $(".pending_qty").each(function() {
            isNaN(this.value) || 0 == this.value.length || (pt_tot += parseFloat(this.value))
        })
        $("#pt_tot" ).val(pt_tot);


    }

    function deleteRow(e,row_id){

        var a = e.parentNode.parentNode;
        //var row_id = $(this).attr("data-id");
        console.log(row_id)
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        if(confirm("Are you sure you want to remove this?"))
        {
            $.ajax({
                url:"<?php echo base_url(); ?>Crqsn/remove",
                method:"POST",
                data:{csrf_test_name:csrf_test_name,row_id:row_id},
                success:function(data)
                {

                    // console.log(data)
                    toastr.error("Product removed from Requisition!");
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

    //$(document).on('click', '.remove_inventory', function(e){
    //    var a = e.parentNode.parentNode;
    //    var row_id = $(this).attr("data-id");
    //    console.log(row_id)
    //    var csrf_test_name = $('[name="csrf_test_name"]').val();
    //    if(confirm("Are you sure you want to remove this?"))
    //    {
    //        $.ajax({
    //            url:"<?php //echo base_url(); ?>//Crqsn/remove",
    //            method:"POST",
    //            data:{csrf_test_name:csrf_test_name,row_id:row_id},
    //            success:function(data)
    //            {
    //
    //               // console.log(data)
    //                toastr.error("Product removed from Requisition!");
    //                a.parentNode.removeChild(a);
    //              //  $('#add_rqsn_table').load("<?php //echo base_url();?>///Crqsn/approve_rqsn_final/"+row_id);
    //               // $('#add_rqsn_table').load();
    //            }
    //        });
    //    }
    //    else
    //    {
    //        return false;
    //    }
    //});
</script>
