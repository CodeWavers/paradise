<!-- Add new customer start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('add_customer') ?></h1>
            <small><?php echo display('add_new_customer') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('customer') ?></a></li>
                <li class="active"><?php echo display('add_customer') ?></li>
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
                
                <?php if($this->permission1->method('manage_customer','read')->access()){ ?>
                    <a href="<?php echo base_url('Ccustomer/manage_customer') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('manage_customer') ?> </a>
                     <?php }?>
                     <?php if($this->permission1->method('credit_customer','read')->access()){ ?>
                    <a href="<?php echo base_url('Ccustomer/credit_customer') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('credit_customer') ?> </a>
                     <?php }?>
                        <?php if($this->permission1->method('paid_customer','read')->access()){ ?>
                    <a href="<?php echo base_url('Ccustomer/paid_customer') ?>" class="btn btn-warning m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('paid_customer') ?> </a>
                    <?php }?>
                    <?php if($this->permission1->method('add_customer','create')->access()){ ?>
                     <button type="button" class="btn btn-info m-b-5 m-r-2" data-toggle="modal" data-target="#Customer_modal"><?php echo display('customer_csv_upload')?></button>
                 <?php }?>

           
            </div>
        </div>

        <!-- New customer -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_customer') ?> </h4>
                        </div>
                    </div>
                    <?php echo form_open('Ccustomer/insert_customer', array('class' => 'form-vertical', 'id' => 'insert_customer')) ?>
                    <div class="panel-body">
                     <div class="col-sm-6">


                         <div class="form-group row">
                            <label for="customer_name" class="col-sm-4 col-form-label">Company Name<i class="text-danger">*</i></label>
                            <div class="col-sm-8">
                                <input class="form-control" name ="customer_name" id="customer_name" type="text" placeholder="Company Name"  required="" tabindex="1">
                            </div>
                        </div>
                         <div class="form-group row" id="multi_contact">
                             <div class="r_contact" >
                                 <label for="contact" class="col-sm-4 col-form-label">Vessel Name<i class="text-danger">*</i></label>
                                 <div class="col-sm-6" style="padding-bottom:10px ">
                                     <input class="form-control" name="vessel_name[]" id="vessel_name" type="text" placeholder="Vessel Name"   tabindex="2">

                                 </div>

                                 <div class="col-sm-1">
                                     <button   class='btn btn-primary text-right add_contact' type='button'><i class='fa fa-plus-circle'></i></button>
                                 </div>
                             </div>
                         </div>

                         <div class="form-group row">
                             <label for="phone" class="col-sm-4 col-form-label">Address <i class="text-danger"></i></label>
                             <div class="col-sm-8">
                                 <input class="form-control" name="address" id="phone" type="text" placeholder="Address"   tabindex="2">
                             </div>
                         </div>






<!--                         <div class="form-group row">-->
<!--                             <label for="discount_customer" class="col-sm-4 col-form-label">Discount</label>-->
<!--                             <div class="col-sm-8">-->
<!--                                 <input class="form-control" name="discount_customer" id="discount_customer" type="number" min="0" placeholder="Discount" tabindex="5">-->
<!--                             </div>-->
<!--                         </div>-->
                    </div>
                        <div class="col-sm-6">

                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label"><?php echo display('phone') ?> <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="phone" id="phone" type="number" placeholder="<?php echo display('phone') ?>"  min="0" tabindex="2">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label">Email <i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="email" id="phone" type="email" placeholder="Email"  tabindex="2">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-sm-4 col-form-label">Contact Person<i class="text-danger"></i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="contact_person" id="contact_person" type="text" placeholder="Contact Person"  min="0" tabindex="2">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-text-input" class="col-sm-4 col-form-label"></label>
                            <div class="col-sm-8">
                                <input type="submit" id="add-customer" class="btn btn-primary btn-large" name="add-customer" value="<?php echo display('save') ?>" tabindex="7"/>
                                <input type="submit" value="<?php echo display('save_and_add_another') ?>" name="add-customer-another" class="btn btn-large btn-success" id="add-customer-another" tabindex="6">
                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
            </div>
        </div>
        <div id="Customer_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?php echo display('customer_csv_upload'); ?></h4>
      </div>
      <div class="modal-body">

                <div class="panel">
                    <div class="panel-heading">
                        
                            <div><a href="<?php echo base_url('assets/data/csv/customer_csv_sample.csv') ?>" class="btn btn-primary pull-right"><i class="fa fa-download"></i><?php echo display('download_sample_file')?> </a> </div>
                       
                    </div>
                    
                    <div class="panel-body">
                       
                      <?php echo form_open_multipart('Ccustomer/uploadCsv_Customer',array('class' => 'form-vertical', 'id' => 'validate','name' => 'insert_customer'))?>
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
<!-- Add new customer end -->

<script type="text/javascript">


    $(".add_contact").click(function(){
        $("#multi_contact").append("     <div class=\"r_contact\" style=\"padding-bottom:10px \">\n" +
            "                            <label for=\"email\" class=\"col-sm-4 col-form-label\"></label>\n" +
            "                            <div class=\"col-sm-6\" style=\"padding-bottom:10px\" >\n" +
            "                                <input class=\"form-control\" name=\"vessel_name[]\" id=\"vessel_name\" type=\"text\" placeholder=\"<?php echo 'Vessel Name' ?>\"   tabindex=\"2\">\n" +
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
</script>



