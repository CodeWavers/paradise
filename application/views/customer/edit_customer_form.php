<!--Edit customer start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('customer_edit') ?></h1>
            <small><?php echo display('customer_edit') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('customer') ?></a></li>
                <li class="active"><?php echo display('customer_edit') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">
        <!-- alert message -->
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

        <!-- New customer -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('customer_edit') ?> </h4>
                        </div>
                    </div>
                  <?php echo form_open_multipart('Ccustomer/customer_update',array('class' => 'form-vertical', 'id' => 'customer_update'))?>
                    <div class="panel-body">
                        <div class="col-sm-6">


                            <div class="form-group row">
                                <label for="customer_name" class="col-sm-4 col-form-label">Company Name<i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name ="customer_name" id="customer_name" type="text" placeholder="Company Name"   value="{customer_name}" required="" tabindex="1">
                                </div>
                            </div>
                            <div class="form-group row" id="multi_contact">
                                <div class="r_contact" >

                                    <?php
                                    if ($vessel_data) {
                                        ?>
                                        {vessel_data}
                                        <label for="contact" class="col-sm-4 col-form-label">Vessel Name<i class="text-danger">*</i></label>

                                        <div class="col-sm-4" style="padding-bottom:10px ">
                                            <input  class="form-control vessel_full_name_1" name="vessel_full_name[]" id="vessel_full_name" type="text" value="{vessel_full_name}" placeholder="Full Form"   >

                                        </div>
                                    <div class="col-sm-2" style="padding-bottom:10px ">

                                            <input class="form-control m-b-5 vessel_name_1" name="vessel_name[]" onkeyup="validation(1)" id="vessel_name" type="text" value="{vessel_name}" placeholder="Vessel Name"  tabindex="2">



                                    </div>
                                        <div class="col-sm-1">
                                            <button   class='btn btn-primary text-right add_contact' type='button'><i class='fa fa-plus-circle'></i></button>
                                        </div>
                                        {/vessel_data}
                                        <?php
                                    }
                                    ?>


                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label">Address <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="address" id="phone" type="text" placeholder="Address"   value="{customer_address}" tabindex="2">
                                </div>
                            </div>






                            <input type="hidden" value="{customer_id}" name="customer_id">
                            <div class="form-group row">
                                <label for="example-text-input" class="col-sm-4 col-form-label"></label>
                                <div class="col-sm-6">
                                    <input type="submit" id="add-Customer" class="btn btn-success btn-large" name="add-Customer" value="<?php echo display('save_changes') ?>" tabindex="5"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">

                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label"><?php echo display('phone') ?> <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="phone" id="phone" type="number" placeholder="<?php echo display('phone') ?>" value="{phone}"  min="0" tabindex="2">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label">Email <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="email" id="phone" type="email" placeholder="Email"  value="{customer_email}" tabindex="2">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label">Contact Person<i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="contact_person" id="contact_person" type="text" placeholder="Contact Person" value="{contact_person}" tabindex="2">
                                </div>
                            </div>
                        </div>



                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Edit customer end -->
<script type="text/javascript">
    var count = 1;

    $(".add_contact").click(function(){
        count++;
        $("#multi_contact").append("     <div class=\"r_contact\" style=\"padding-bottom:10px \">\n" +
            "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
            "                            <div class=\"col-sm-4\" style=\"padding-bottom:10px\" >\n" +
            "                                <input class=\"form-control vessel_full_name_" + count + "\"  name=\"vessel_full_name[]\" id=\"vessel_full_name\" type=\"text\" placeholder=\"<?php echo 'Full Form' ?>\" >\n" +
            "\n" +
            "                            </div>\n" +

            "                            <div class=\"col-sm-2\"  >\n" +
            "                                <input class=\"form-control vessel_name_" + count + "\"  name=\"vessel_name[]\" id=\"vessel_name\" type=\"text\" placeholder=\"<?php echo 'Short Form' ?>\"   onkeyup='validation(" + count + ");'>\n" +
            "\n" +
            "                            </div>\n" +
            "\n" +
            "                             <div class=\"col-sm-1\">\n" +
            "                                 <button   class='btn btn-danger text-right remove_contact' type='button'><i class='fa fa-minus-circle'></i></button>\n" +
            "                             </div>\n" +
            "                             </div> ");
    });

    $("body").on("click",".remove_contact",function(e){
        $(this).parents('.r_contact').remove();
        //the above method will remove the user_data div
    });

    function validation(sl) {

        var var1 =$('.vessel_name_'+sl).val();
        var myRegEx = new RegExp('.*[\-\ ]+'); //make sure the var is a number



        if (var1 == myRegEx.exec(var1)) {
            toastr.error("Please ignore '-' & 'space' when you write vessele name");

            $('.vessel_name_'+sl).val(var1.slice(0,-1));
        }

    }
</script>


