<!-- Edit supplier page start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('supplier_edit') ?></h1>
            <small><?php echo display('supplier_edit') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('supplier') ?></a></li>
                <li class="active"><?php echo display('supplier_edit') ?></li>
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

        <!-- New supplier -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('supplier_edit') ?> </h4>
                        </div>
                    </div>
                   <?php echo form_open_multipart('Csupplier/supplier_update',array( 'id' => 'supplier_update'))?>
                    <div class="panel-body">
                        <div class="col-sm-6">
                    	<div class="form-group row">
                            <label for="supplier_name" class="col-sm-4 col-form-label"><?php echo display('supplier_name') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-8">
                                <input class="form-control" name ="supplier_name" id="supplier_name" type="text" value="{supplier_name}" placeholder="<?php echo display('supplier_name') ?>"  required="" tabindex="1">
                                <input type="hidden" name="oldname" value="{supplier_name}">
                            </div>
                        </div>

                            <div class="form-group row" id="multi_contact">
                                <div class="r_contact" >
                                    <label for="contact" class="col-sm-4 col-form-label"><?php echo display('contact'); ?> Person<i class="text-danger">*</i></label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <?php
                                        if ($contact_data) {
                                            ?>
                                            {contact_data}
                                            <input class="form-control m-b-5" name="contact[]" id="contact" type="text" value="{contact}" placeholder="Contact"  tabindex="2">

                                            {/contact_data}
                                            <?php
                                        }
                                        ?>

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

                                        <?php
                                        if ($mobile_data) {
                                        ?>
                                        {mobile_data}
                                        <input class="form-control m-b-5" name="mobile[]" id="mobile" type="number" value="{mobile_no}" placeholder="Phone/Mobile No."  tabindex="2">

                                            {/mobile_data}
                                            <?php
                                        }
                                        ?>
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


                                        <?php
                                        if ($phone_data) {
                                            ?>
                                            {phone_data}
                                            <input class="form-control m-b-5 phone" name="phone[]" id="phone" type="number" value="{phone_no}" placeholder="Office Tel No."  tabindex="2">

                                            {/phone_data}
                                            <?php
                                        }
                                        ?>

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
                                        <?php
                                        if ($email_data) {
                                            ?>
                                            {email_data}
                                            <input class="form-control m-b-5" name="email[]" id="email" type="email" value="{email_id}" placeholder="Email"  tabindex="2">

                                            {/email_data}
                                            <?php
                                        }
                                        ?>

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

                                        <?php if($supplier_type == 1):?>
                                        <option value="{supplier_type}">Cash Supplier</option>
                                        <?php elseif($supplier_type ==2 ):?>
                                            <option value="{supplier_type}">Credit Supplier</option>
                                        <?php elseif($supplier_type ==3):?>
                                            <option value="{supplier_type}">Both</option>
                                        <?php endif;?>
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
                                    <textarea class="form-control"  name="details" id="details" rows="2" placeholder="<?php echo display('supplier_details') ?>" tabindex="4">{details}</textarea>
                                </div>
                            </div>



                            <div class="form-group row" id="multi_address">
                                <div class="r_address" >
                                    <label for="address " class="col-sm-4 col-form-label">Address</label>
                                    <div class="col-sm-6" style="padding-bottom:10px ">
                                        <?php
                                        if ($address_data) {
                                            ?>
                                            {address_data}
                                            <textarea class="form-control m-b-5" name="address[]" id="address" rows="2"   placeholder="Address" >{address}</textarea>

                                            {/address_data}
                                            <?php
                                        }
                                        ?>
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
                                    <input class="form-control" name="zip" id="zip" type="text" value="{zip}" placeholder="Postal Code"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="state" class="col-sm-4 col-form-label">City/State <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="state" id="state" value="{state}" type="text" placeholder="<?php echo display('state') ?>"  >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="country" class="col-sm-4 col-form-label"><?php echo display('country') ?> <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="country" id="country" value="{country}" type="text" placeholder="<?php echo display('country') ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="address2 " class="col-sm-4 col-form-label">Bank Details (If Any)</label>
                                <div class="col-sm-8">
                                    <textarea class="form-control" name="bank_details"  id="bank_details" rows="2" placeholder="<?php echo display('supplier_address') ?>2" >{bank_details}</textarea>
                                </div>
                            </div>

                            <input type="hidden" name="supplier_id" value="{supplier_id}" />

<!--                            <div class="form-group row">-->
<!--                                <label for="previous_balance" class="col-sm-4 col-form-label">Previous Credit Balance</label>-->
<!--                                <div class="col-sm-8">-->
<!--                                    <input class="form-control" name="previous_balance" value="{previous_balance}" id="previous_balance" type="text" min="0" placeholder="Supplier Debit Balance" tabindex="5">-->
<!---->
<!--                                </div>-->
<!--                            </div>-->
                        </div>

                        <div class="form-group row">
                            <label for="example-text-input" class="col-sm-4 col-form-label"></label>
                            <div class="col-sm-6">
                               <input type="submit" id="add-supplier" class="btn btn-success btn-large" name="add-supplier" value="<?php echo display('save_changes') ?>" tabindex="5" />
                            </div>
                        </div>
                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Edit supplier page end -->

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



