 <link href="<?php echo base_url('assets/css/return.css') ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url() ?>my-assets/js/admin_js/return.js" type="text/javascript"></script>
<!-- Edit Invoice Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Outlet Return </h1>
            <small>Outlet Return</small>
             <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('return') ?></a></li>
                <li class="active">Outlet Return</li>
            </ol>

        </div>
    </section>

    <section class="content">
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
        <!-- Invoice report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Outlet Return</h4>
                        </div>
                    </div>
                    <?php echo form_open('Cretrun_m/return_rqsn_qty', array('class' => 'form-vertical', 'id' => 'invoice_update')) ?>
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-sm-6" id="payment_from_1">
                                <div class="form-group row">
                                    <label for="product_name" class="col-sm-4 col-form-label">Outlet Name<i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="customer_name" value="{from}" class="form-control customerSelection" placeholder='Outlet Name' required id="customer_name" tabindex="1" readonly="">

                                        <input type="hidden" class="customer_hidden_value" name="from_id" value="{from_id}" id="SchoolHiddenId"/>
                                        <input type="hidden" class="customer_hidden_value" name="to_id" value="{to_id}" id="to_id"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_name" class="col-sm-4 col-form-label"><?php echo display('date') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="2" class="form-control" name="invoice_date" value="{date}"  required readonly="" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="normalinvoice">
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('item_information') ?> <i class="text-danger"></i></th>
                                        <th class="text-center">Transferred Qty</th>
                                        <th class="text-center"><?php echo display('ret_quantity') ?>  <i class="text-danger">*</i></th>

                                        <th class="text-center"><?php echo display('check_return') ?> <i class="text-danger">*</i></th>
                                    </tr>
                                </thead>
                                <tbody id="addinvoiceItem">
                                    {req_all_data}
                                    <tr>
                                        <td class="product_field">
                                            <input type="text" name="product_name" onclick="invoice_productList({sl});" value="{product_name}-({product_model})" class="form-control productSelection" required placeholder='<?php echo display('product_name') ?>' id="product_names" tabindex="3" readonly="">

                                            <input type="hidden" class="product_id_{sl} autocomplete_hidden_value"  value="{product_id}" id="product_id_{sl}"/>
                                        </td>
                                        <td>
                                            <input type="text" name="sold_qty[]" id="sold_qty_{sl}" class="form-control text-right available_quantity_1" value="{a_qty}" readonly="" />
                                        </td>
                                        <td>
                                            <input type="text"  onkeyup="quantity_calculate({sl});" onchange="quantity_calculate({sl});"  class="total_qntt_{sl} form-control text-right" id="total_qntt_{sl}" min="0" placeholder="0.00" tabindex="4" />

                                            <input type="hidden" name="rqsn_detail_id[]" id="rqsn_detail_id" value="{rqsn_detail_id}"/>
                                        </td>


                                        <td>


                                            <!-- Discount calculate end -->



                                            <input type="checkbox" name='rtn[]' onclick="checkboxcheck({sl})" id="check_id_{sl}" value="{sl}" class="chk" >


                                        </td>
                                    </tr>
                                    {/req_all_data}
                                </tbody>

                                <tfoot>

                                    <tr>
                                        <td colspan="4" rowspan="3">
                                <center><label  for="details" class="  col-form-label text-center"><?php echo display('reason') ?></label></center>
                                <textarea class="form-control" name="details" id="details" placeholder="<?php echo display('reason') ?>"></textarea> <br>
                                <span class="usablity"><?php echo display('usablilties') ?> </span><br>
                                <label class="ab"><?php echo display('adjs_with_stck') ?>
                                    <input type="radio" checked="checked" name="radio" value="1">
                                    <span class="checkmark"></span>
                                </label><br>

                               
                                <label class="ab"><?php echo display('wastage') ?>
                                    <input type="radio"  name="radio" value="3">
                                    <span class="checkmark"></span>
                                    <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url(); ?>"/>
                                    <input type="hidden" name="rqsn_id" id="rqsn_id" value="{rqsn_id}"/>
                                </label>

                                </td>

                                </tr>



                                </tfoot>
                            </table>
                        </div>
                        <div class="form-group row">
                            <label for="example-text-input" class=" col-form-label"></label>
                            <div class="col-sm-12 text-right">


                                <input type="submit" id="add_invoice" class="btn btn-success btn-large" name="add-invoice" value="<?php echo display('return') ?>" tabindex="9"/>

                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
            </div>
        </div>

    </section>
</div>



