
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
                                        <input type="text" class="form-control" name="customer_name" id="customer_name" required>
                                    </div>
                                </div>

                                <div class="form-group row  rqsn-form-input">
                                    <label for="rqsn_for" class="col-sm-3 col-form-label text-right">Requisition For : </label>
                                    <div class="col-sm-9">
                                        <select name="rqsn_for" id="rqsn_for" class="form-control">
                                            {customers}
                                                <option value="{customer_id}">{customer_name}</option>
                                            {/customers}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row rqsn-form-input">
                                    <label for="rqsn_no" class="col-sm-3 col-form-label text-right">Requisition No. : </label>
                                    <div class="col-sm-9" >
                                        <input type="text" class="form-control" name="rqsn_no" id="rqsn_no">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <a href="<?= base_url()."Cproduct/catalogue" ?>">
                                    <div class="col-sm-9">
                                        <input type="button" id="catalogue_link" class="btn btn-success form-control" name="catalogue_link" value="Goto Catalogue">
                                    </div>
                                    </a>
                                </div>

                            </div>

                        </div>

                        <br>
                        <div class="table-responsive center">
                            <table class="table table-bordered table-hover" id="rqsn_table">
                                <thead>
                                <tr>
                                    <th class="text-center">Sl No.</th>
                                    <th class="text-center">Category</th>
                                    <th class="text-center">Sub-category</th>
                                    <th class="text-center">Product Name</th>
                                    <th class="text-center">Parts No.</th>
                                    <th class="text-center">SKU</th>
                                    <th class="text-center">Brand</th>
                                    <th class="text-center">Model</th>
                                    <th class="text-center">Required Quantity</th>
                                </tr>
                                </thead>
                                </tbody>
                            </table>
                        </div>
                        <?php echo form_close()?>
                    </div>

                </div>
            </div>
<!--            <div class="modal fade" id="printconfirmodal" tabindex="-1" role="dialog" aria-labelledby="printconfirmodal" aria-hidden="true">-->
<!--                <div class="modal-dialog modal-sm">-->
<!--                    <div class="modal-content">-->
<!--                        <div class="modal-header">-->
<!---->
<!--                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
<!---->
<!--                            <h4 class="modal-tit le" id="myModalLabel">--><?php //echo display('print') ?><!--</h4>-->
<!--                        </div>-->
<!--                        <div class="modal-body">-->
<!--                            --><?php //echo form_open('Cinvoice/invoice_inserted_data_manual', array('class' => 'form-vertical', 'id' => '', 'name' => '')) ?>
<!--                            <div id="outputs" class="hide alert alert-danger"></div>-->
<!--                            <h3> --><?php //echo display('successfully_inserted') ?><!--</h3>-->
<!--                            <h4>--><?php //echo display('do_you_want_to_print') ?><!-- ??</h4>-->
<!--                            <label class="ab">With Chalan </label>-->
<!--                            <input type="checkbox"  name="chalan_value" value=''>-->
<!---->
<!---->
<!--                            <input type="hidden" name="invoice_id" id="inv_id">-->
<!--                        </div>-->
<!--                        <div class="modal-footer">-->
<!--                            <button type="button" onclick="cancelprint()" class="btn btn-default" data-dismiss="modal">--><?php //echo display('no') ?><!--</button>-->
<!--                            <button type="submit" class="btn btn-primary" id="yes">--><?php //echo display('yes') ?><!--</button>-->
<!--                            --><?php //echo form_close() ?>
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->


            <div class="modal fade modal-success" id="cust_info" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">

                            <a href="#" class="close" data-dismiss="modal">&times;</a>
                            <h3 class="modal-title"><?php echo display('add_new_customer') ?></h3>
                        </div>

                        <div class="modal-body">
                            <div id="customeMessage" class="alert hide"></div>
                            <?php echo form_open('Cinvoice/instant_customer', array('class' => 'form-vertical', 'id' => 'newcustomer')) ?>
                            <div class="panel-body">
                                <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
                                <div class="form-group row">
                                    <label for="customer_id_two" class="col-sm-3 col-form-label">Customer ID <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="customer_id_two" id="" type="text" placeholder="Customer ID"  required="" tabindex="1">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="customer_name" id="" type="text" placeholder="<?php echo display('customer_name') ?>"  required="" tabindex="1">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-sm-3 col-form-label"><?php echo display('customer_email') ?></label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="email" id="email" type="email" placeholder="<?php echo display('customer_email') ?>" tabindex="2">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="mobile" class="col-sm-3 col-form-label"><?php echo display('customer_mobile') ?></label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="mobile" id="mobile" type="number" placeholder="<?php echo display('customer_mobile') ?>" min="0" tabindex="3">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="customer_id_two" class="col-sm-3 col-form-label">Contact Person</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="contact_person" id="" type="text" placeholder="Contact Person"  required="" tabindex="1">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="customer_id_two" class="col-sm-3 col-form-label">Contact Mobile</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name ="contact" id="" type="number" placeholder="Contact Mobile"  required="" tabindex="1">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="address " class="col-sm-3 col-form-label"><?php echo display('customer_address') ?></label>
                                    <div class="col-sm-6">
                                        <textarea class="form-control" name="address" id="address " rows="3" placeholder="<?php echo display('customer_address') ?>" tabindex="4"></textarea>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="modal-footer">

                            <a href="#" class="btn btn-danger" data-dismiss="modal">Close</a>

                            <input type="submit" class="btn btn-success" value="Submit">
                        </div>
                        <?php echo form_close() ?>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->

        </div>
    </section>
</div>
<!-- Invoice Report End -->

<script type="text/javascript">
    $(document).ready(function(){

        $(".add_cheque").click(function(){
            $(".addCheque").append(" <div id=\"cheque\" class=\"cheque\">\n" +
                "                                            <input type =\"hidden\" name=\"csrf_test_name\" id=\"\" value=\"<?php echo $this->security->get_csrf_hash();?>\">\n" +
                "                                            <label for=\"bank\" class=\"col-sm-4 col-form-label\">Cheque type:\n" +
                "                                                <i class=\"text-danger\">*</i></label>\n" +
                "                                            <div class=\"col-sm-6\">\n" +
                "                                                <input type=\"text\"   name=\"cheque_type[]\" class=\" form-control\" placeholder=\"\"   autocomplete=\"off\"/>\n" +
                //"                                                <input type=\"number\"   name=\"cheque_id[]\" class=\" form-control\" placeholder=\"\"  value=\"<?php //echo rand();?>//\" autocomplete=\"off\"/>\n" +
                "                                            </div>\n" +
                "                                            <label for=\"bank\" class=\"col-sm-4 col-form-label\">Cheque NO:\n" +
                "                                                <i class=\"text-danger\">*</i></label>\n" +
                "                                            <div class=\"col-sm-6\">\n" +
                "                                                <input type=\"number\"   name=\"cheque_no[]\" class=\" form-control\" placeholder=\"\"   autocomplete=\"off\"/>\n" +
                //"                                                <input type=\"number\"   name=\"cheque_id[]\" class=\" form-control\" placeholder=\"\"  value=\"<?php //echo rand();?>//\" autocomplete=\"off\"/>\n" +
                "                                            </div>\n" +

                "\n" +
                "\n" +
                "                                            <label for=\"date\" class=\"col-sm-4 col-form-label\">Due Date <i class=\"text-danger\">*</i></label>\n" +
                "                                            <div class=\"col-sm-6\">\n" +
                "\n" +
                "                                                <input class=\"datepicker form-control\" type=\"date\" size=\"50\" name=\"cheque_date[]\" id=\"\"  value=\"\" tabindex=\"4\" autocomplete=\"off\" />\n" +
                "                                            </div>\n" +
                "\n" +
                "                                            <label for=\"bank\" class=\"col-sm-4 col-form-label\">Amount:\n" +
                "                                                <i class=\"text-danger\">*</i></label>\n" +
                "                                            <div class=\"col-sm-6\" style=\"padding-bottom:10px \" >\n" +
                "                                                <input type=\"number\"   name=\"amount[]\" class=\" form-control\" placeholder=\"\"   autocomplete=\"off\"/>\n" +
                //"                                                <input type=\"number\"   name=\"cheque_id[]\" class=\" form-control\" placeholder=\"\"  value=\"<?php //echo rand();?>//\" autocomplete=\"off\"/>\n" +
                "                                            </div>\n" +
                "\n" +
                "\n" +
                "                                            <div  class=\" col-sm-1\">\n" +
                "                                                <a href=\"#\" id=\"Remove_Cheque\"  class=\"client-add-btn btn btn-danger remove_cheque\" ><i class=\"fa fa-minus-circle m-r-2\"></i></a>\n" +
                "                                            </div>\n" +
                "                                            </div>");
        });


    });



    $("body").on("click",".remove_cheque",function(e){
        $(this).parents('.cheque').remove();
        //the above method will remove the user_data div
    });
</script>




</script>
