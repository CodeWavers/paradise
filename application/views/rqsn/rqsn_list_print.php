<?php
$CI = &get_instance();
$CI->load->model('Web_settings');
$Web_settings = $CI->Web_settings->retrieve_setting_editdata();
?>

<style>
    table,
    td,
    th {
        border: 1px solid black;
    }

    table {
        border-collapse: collapse;
        width: 50%;
    }

    th {
        height: 70px;
    }
</style>

<script src="<?php echo base_url() ?>my-assets/js/admin_js/invoice_onloadprint.js" type="text/javascript"></script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('invoice_details') ?></h1>
            <small><?php echo display('invoice_details') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('invoice') ?></a></li>
                <li class="active"><?php echo display('invoice_details') ?></li>
            </ol>
        </div>
    </section>
    <!-- Main content -->
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
                <div class="panel panel-bd">
                    <div id="printableArea" onload="printDiv('printableArea')">

                        <div class="panel-body">



                            <div class="row print_header">

                                <div class="col-8 company-content ">

                                    {company_info}
                                    <img style="height: 100px;" src="<?php
                                                                        if (isset($Web_settings[0]['invoice_logo'])) {
                                                                            echo html_escape($Web_settings[0]['invoice_logo']);
                                                                        }
                                                                        ?>" class="img-bottom-m" alt="">

                                    <br>
                                </div>
                                <div style="display:flex; justify-content: space-between;">

                                    <address class="">
                                        <strong class="company_name_p">{company_name}</strong><br>
                                        {address}<br>
                                        <abbr><b><?php echo display('mobile') ?>:</b></abbr> {mobile}<br>
                                        <abbr><b><?php echo display('email') ?>:</b></abbr>
                                        {email}<br>
                                        <abbr><b><?php echo display('website') ?>:</b></abbr>
                                        {website}<br>
                                        {/company_info}
                                        <abbr>{tax_regno}</abbr>
                                    </address>






                                    <div class="col-4 text-left invoice-address">
                                        <div>
                                            <span style="font-weight: bold; font-size:18px">Requisition No : </span>
                                            <span style="font-size: 18px;"> <?= $rqsn_details[0]['rqsn_no'] ?></span>
                                        </div>

                                        <div>
                                            <span style="font-weight: bold; font-size:18px">Requisition Date : </span>
                                            <span style="font-size: 18px;"> <?= $rqsn_details[0]['date'] ?></span>
                                        </div>


                                        <div>
                                            <span style="font-weight: bold; font-size:18px">Requisition For : </span>
                                            <span style="font-size: 18px;"><?= $rqsn_details[0]['from_id'] ?></span>
                                        </div>

                                        <div>
                                            <span style="font-weight: bold; font-size:18px">Customer Name : </span>
                                            <span style="font-size: 18px;"> <?= $rqsn_details[0]['customer_name'] ?></span>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>




                        <div class="">
                            <table class="table table-striped table-bordered " cellspacing="0" width="100%" id="add_rqsn_table">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th>Category</th>
                                        <th>Sub Category</th>
                                        <th class="col-md-2"><?php echo display('product_name') ?></th>
                                        <th>Parts No.</th>
                                        <th>SKU</th>
                                        <th>Brand</th>
                                        <th><?php echo display('product_model') ?></th>
                                        <th>Quantity</th>
                                        <th>Unit Price</th>
                                        <th>Total Price</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php foreach ($rqsn_details as $rqsn_detail) { ?>
                                        <tr class="text-center">
                                            <td><?php echo $rqsn_detail['sl'] ?> </td>
                                            <td><?php echo $rqsn_detail['category_name'] ?></td>
                                            <td><?php echo $rqsn_detail['subcat_name'] ?></td>
                                            <td>
                                                <?php echo $rqsn_detail['product_name'] ?>
                                                <input type="hidden" value="<?php echo $rqsn_detail['product_id'] ?>" name="product_id[]" class="form-control" id="">
                                            </td>
                                            <td><?php echo $rqsn_detail['parts'] ?></td>
                                            <td><?php echo $rqsn_detail['sku'] ?></td>
                                            <td><?php echo $rqsn_detail['brand_name'] ?></td>
                                            <td><?php echo $rqsn_detail['model_name'] ?></td>
                                            <td style="width: 5%;"><?php echo $rqsn_detail['quantity'] ?></td>
                                            <td style="width: 5%;" ><?php echo number_format($rqsn_detail['rate'],2)?></td>
                                            <td style="width: 5%;" class="text-left"><?php echo number_format($rqsn_detail['total'],2) ?></td>



                                        </tr>
                                        <input type="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                    <?php } ?>
                                </tbody>

                                <tfoot>
                                <tr>
                                    <td colspan="10" class="text-right"><b>Grand Total:</b></td>
                                    <td class="text-left" style="width: 5%;">
                                        <?php echo number_format(array_sum(array_column($rqsn_details,'total')),2)?>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>



                        </div>
                        <div class="row" style="width: 100%; display:flex; justify-content: space-between; bottom: 0; position: fixed;">
                                <div class="col-sm-4" style="border-top: 1px solid;">
                                    <div class="">
                                        <?php echo display('received_by') ?>
                                    </div>
                                </div>
                                <div class="col-sm-4"></div>
                                <div class="col-sm-4" style="border-top: 1px solid;">
                                    <div class="">
                                        <?php echo display('authorised_by') ?>
                                    </div>
                                </div>
                        </div>

                    </div>

                    <div class="panel-footer text-left">
                        <input type="hidden" name="" id="url" value="<?php echo base_url('Crqsn/aprove_rqsn_edit_price'); ?>">
                        <a class="btn btn-danger" href="<?php echo base_url('Cinvoice'); ?>"><?php echo display('cancel') ?></a>
                        <button class="btn btn-info" onclick="printDiv('printableArea')"><span class="fa fa-print"></span></button>

                    </div>
                </div>
            </div>
        </div>
    </section> <!-- /.content -->
</div> <!-- /.content-wrapper -->