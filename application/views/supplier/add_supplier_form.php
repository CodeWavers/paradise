<!-- Add new supplier start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('add_supplier') ?></h1>
            <small><?php echo display('add_new_supplier') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('supplier') ?></a></li>
                <li class="active"><?php echo display('add_supplier') ?></li>
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

        <div class="row">
            <div class="col-sm-12">

                <a href="<?php echo base_url('Csupplier/manage_supplier') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('manage_supplier') ?> </a>

                <a href="<?php echo base_url('Csupplier/supplier_ledger_report') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('supplier_ledger') ?> </a>

                <a href="<?php echo base_url('Csupplier/supplier_sales_details_all') ?>" class="btn btn-success m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('supplier_sales_details') ?> </a>
                <button type="button" class="btn btn-info m-b-5 m-r-2" data-toggle="modal" data-target="#supplier_modal"><?php echo display('csv_upload_supplier')?></button>


            </div>
        </div>

        <!-- New supplier -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_supplier') ?> </h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Csupplier/insert_supplier', array('id' => 'insert_supplier')) ?>
                    <div class="panel-body">
                        <div class="col-sm-6">

                            <div class="form-group row">
                                <label for="supplier_name" class="col-sm-4 col-form-label">Supplier Company<i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name ="supplier_name" id="supplier_name" type="text" placeholder="Supplier Company"  required="" tabindex="1">
                                </div>
                            </div>
                            <div class="form-group row" id="multi_contact">
                                <div class="r_contact" >
                                <label for="contact" class="col-sm-4 col-form-label"><?php echo display('contact'); ?> Person<i class="text-danger">*</i></label>
                                <div class="col-sm-6" style="padding-bottom:10px ">
                                    <input class="form-control" name="contact[]" id="contact" type="text" placeholder="Contact Person"   tabindex="2">

                                </div>

                                <div class="col-sm-1">
                                    <button   class='btn btn-primary text-right add_contact' type='button'><i class='fa fa-plus-circle'></i></button>
                                </div>
                                </div>
                            </div>



                            <div class="form-group row" id="multi_mobile">
                                <div class="r_mobile" >
                                    <label for="mobile" class="col-sm-4 col-form-label">Phone/Mobile No.<i class="text-danger">*</i></label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <input class="form-control" name="mobile[]" id="mobile" type="number" placeholder="Phone/Mobile No."  tabindex="2">

                                    </div>

                                    <div class="col-sm-1">
                                        <button   class='btn btn-primary text-right add_mobile' type='button'><i class='fa fa-plus-circle'></i></button>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group row" id="multi_phone">
                                <div class="r_phone" >
                                    <label for="phone" class="col-sm-4 col-form-label">Office Tel No. <i class="text-danger"></i></label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <input class="form-control" name="phone[]" id="phone" type="number" placeholder="Office Tel No. 1"  tabindex="2">

                                    </div>

                                    <div class="col-sm-1">
                                        <button   class='btn btn-primary text-right add_phone' type='button'><i class='fa fa-plus-circle'></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row " id="multi_email">
                                <div class="r_email" >
                                    <label for="email" class="col-sm-4 col-form-label">Email Address <i class="text-danger"></i></label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <input class="form-control" name="email[]" id="email" type="email" placeholder="<?php echo display('email') ?>"   tabindex="2">

                                    </div>

                                    <div class="col-sm-1">
                                        <button   class='btn btn-primary text-right add_email' type='button'><i class='fa fa-plus-circle'></i></button>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="supplier_name" class="col-sm-4 col-form-label">Supplier  Type<i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <select name="supplier_type" class="form-control" required="" tabindex="3">
                                        <option value="1">Cash Supplier</option>
                                        <option value="2">Credit Supplier</option>
                                        <option value="3">Both</option>
                                    </select>

                                </div>
                            </div>




                        </div>
                        <div class="col-sm-6">
                            <div class="form-group row">
                                <label for="details" class="col-sm-4 col-form-label"><?php echo display('supplier_details') ?></label>
                                <div class="col-sm-8">
                                    <textarea class="form-control" name="details" id="details" rows="2" placeholder="<?php echo display('supplier_details') ?>" tabindex="4"></textarea>
                                </div>
                            </div>



                            <div class="form-group row" id="multi_address">
                                <div class="r_address" >
                                    <label for="address " class="col-sm-4 col-form-label">Address</label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <textarea class="form-control" name="address[]" id="address " rows="2" placeholder="Address" ></textarea>

                                    </div>

                                    <div class="col-sm-1">
                                        <button   class='btn btn-primary text-right add_address' type='button'><i class='fa fa-plus-circle'></i></button>
                                    </div>
                                </div>
                            </div>
<!--                            <div class="form-group row">-->
<!--                                <label for="address2 " class="col-sm-4 col-form-label">--><?php //echo display('address') ?><!--2</label>-->
<!--                                <div class="col-sm-8">-->
<!--                                    <textarea class="form-control" name="address2" id="address2" rows="2" placeholder="--><?php //echo display('supplier_address') ?><!--2" ></textarea>-->
<!--                                </div>-->
<!--                            </div>-->
                            <div class="form-group row">
                                <label for="zip" class="col-sm-4 col-form-label">Postal Code<i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="zip" id="zip" type="text" placeholder="Postal Code"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="state" class="col-sm-4 col-form-label">City/State <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="state" id="state" type="text" placeholder="<?php echo display('state') ?>"  >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="country" class="col-sm-4 col-form-label"><?php echo display('country') ?> <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="country" id="country" type="text" placeholder="<?php echo display('country') ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="address2 " class="col-sm-4 col-form-label">Bank Details (If Any)</label>
                                <div class="col-sm-8">
                                    <textarea class="form-control" name="bank_details" id="bank_details" rows="2" placeholder="<?php echo display('supplier_address') ?>2" ></textarea>
                                </div>
                            </div>



                            <div class="form-group row">
                                <label for="previous_balance" class="col-sm-4 col-form-label">Previous Credit Balance</label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="previous_balance" id="previous_balance" type="text" min="0" placeholder="Supplier Debit Balance" tabindex="5">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="example-text-input" class="col-sm-4 col-form-label"></label>
                            <div class="col-sm-6">
                                <input type="submit" id="add-supplier" class="btn btn-primary btn-large" name="add-supplier" value="<?php echo display('save') ?>" tabindex="6"/>
                                <input type="submit" value="<?php echo display('save_and_add_another') ?>" name="add-supplier-another" class="btn btn-large btn-success" id="add-supplier-another" tabindex="5">
                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
            </div>
        </div>
        <div id="supplier_modal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><?php echo display('csv_supplier'); ?></h4>
                    </div>
                    <div class="modal-body">

                        <div class="panel panel-bd">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <h4><?php echo display('csv_supplier'); ?></h4>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-sm-12"><a href="<?php echo base_url('assets/data/csv/supplier_csv_sample.csv') ?>" class="btn btn-primary pull-right"><i class="fa fa-download"></i> <?php echo display('download_sample_file')?></a></div>
                                <?php echo form_open_multipart('Csupplier/uploadCsv_Supplier',array('class' => 'form-vertical', 'id' => 'validate','name' => 'insert_supplier'))?>
                                <div class="col-sm-12">
                                    <div class="form-group row">
                                        <label for="upload_csv_file" class="col-sm-4 col-form-label"><?php echo display('upload_csv_file') ?> <i class="text-danger">*</i></label>
                                        <div class="col-sm-8">
                                            <input class="form-control" name="upload_csv_file" type="file" id="upload_csv_file" placeholder="<?php echo display('upload_csv_file') ?>" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="form-group row">
                                        <div class="col-sm-12 text-right">
                                            <input type="submit" id="add-product" class="btn btn-primary btn-large" name="add-product" value="<?php echo display('submit') ?>" />
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                                <?php echo form_close()?>
                            </div>
                        </div>



                    </div>

                </div>

            </div>
        </div>
    </section>
</div>
<!-- Add new supplier end -->
<script type="text/javascript">
    $(document).ready(function(){

        $(".add_email").click(function(){
            $("#multi_email").append("     <div class=\"r_email\" style=\"padding-bottom:10px \">\n" +
                "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
                "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
                "                                <input class=\"form-control\" name=\"email[]\" id=\"email\" type=\"email\" placeholder=\"<?php echo display('email') ?>\"   tabindex=\"2\">\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                             <div class=\"col-sm-1\">\n" +
                "                                 <button   class='btn btn-danger text-right remove_email' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
                "                             </div>\n" +
                "                             </div> ");
        });

        $(".add_contact").click(function(){
            $("#multi_contact").append("     <div class=\"r_contact\" style=\"padding-bottom:10px \">\n" +
                "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
                "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
                "                                <input class=\"form-control\" name=\"contact[]\" id=\"contact\" type=\"text\" placeholder=\"<?php echo 'Contact Person' ?>\"   tabindex=\"2\">\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                             <div class=\"col-sm-1\">\n" +
                "                                 <button   class='btn btn-danger text-right remove_contact' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
                "                             </div>\n" +
                "                             </div> ");
        });

        $(".add_mobile").click(function(){
            $("#multi_mobile").append("     <div class=\"r_mobile\" style=\"padding-bottom:10px \">\n" +
                "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
                "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
                "                                <input class=\"form-control\" name=\"mobile[]\" id=\"mobile\" type=\"number\" placeholder=\"<?php echo 'Phone/Mobile' ?>\"   tabindex=\"2\">\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                             <div class=\"col-sm-1\">\n" +
                "                                 <button   class='btn btn-danger text-right remove_mobile' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
                "                             </div>\n" +
                "                             </div> ");
        });

        $(".add_phone").click(function(){
            $("#multi_phone").append("     <div class=\"r_phone\" style=\"padding-bottom:10px \">\n" +
                "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
                "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
                "                                <input class=\"form-control\" name=\"phone[]\" id=\"phone\" type=\"number\" placeholder=\"<?php echo 'Office Tel No. ' ?>\"   tabindex=\"2\">\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                             <div class=\"col-sm-1\">\n" +
                "                                 <button   class='btn btn-danger text-right remove_phone' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
                "                             </div>\n" +
                "                             </div> ");
        });



        $(".add_address").click(function(){
            $("#multi_address").append("     <div class=\"r_address\" style=\"padding-bottom:10px \">\n" +
                "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
                "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
                "                                                   <textarea class=\"form-control\" name=\"address[]\" id=\"address \" rows=\"2\" placeholder=\"Address\" ></textarea>" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "                             <div class=\"col-sm-1\">\n" +
                "                                 <button   class='btn btn-danger text-right remove_address' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
                "                             </div>\n" +
                "                             </div> ");
        });





    });



    $("body").on("click",".remove_email",function(e){
        $(this).parents('.r_email').remove();
        //the above method will remove the user_data div
    });

    $("body").on("click",".remove_contact",function(e){
        $(this).parents('.r_contact').remove();
        //the above method will remove the user_data div
    });

    $("body").on("click",".remove_mobile",function(e){
        $(this).parents('.r_mobile').remove();
        //the above method will remove the user_data div
    });

    $("body").on("click",".remove_phone",function(e){
        $(this).parents('.r_phone').remove();
        //the above method will remove the user_data div
    });


    $("body").on("click",".remove_address",function(e){
        $(this).parents('.r_address').remove();
        //the above method will remove the user_data div
    });





</script>


