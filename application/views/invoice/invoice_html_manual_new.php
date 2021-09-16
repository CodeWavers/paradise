<?php
$CI = & get_instance();
$CI->load->model('Web_settings');
$Web_settings = $CI->Web_settings->retrieve_setting_editdata();
?>

<style>



    table, td, th {
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
                    <div id="printableArea"  class="watermark"  onload="printDiv('printableArea')">
                        <style type="text/css" scoped>
                            .panel-body:last-child {
                                page-break-after: auto;
                            }

                            html,
                            body {
                                height: auto;
                            }

                            @media print {

                                body {
                                    -webkit-print-color-adjust: exact !important;
                                }

                                html,
                                body {
                                    border: 1px solid white;
                                    height: 99%;
                                    page-break-after: avoid;
                                    page-break-before: avoid;
                                    background-color: rgba(217, 236, 241,0.9) !important;
                                }

                                .table td,
                                .table th {
                                    background-color: #fff0 !important;
                                }
                            }
                        </style>
                        <div class="watermark" style=" background-image: url('<?php echo base_url() ?>assets/images/icons/watermark.png') !important; ">

                            <div class="panel-body" >

                            <div class="row print_header">
                                
                                <div class="col-sm-8 company-content ">

                                    {company_info}
                                    <img style="height: 100px;" src="<?php
                                    if (isset($Web_settings[0]['invoice_logo'])) {
                                        echo html_escape($Web_settings[0]['invoice_logo']);
                                    }
                                    ?>" class="img-bottom-m" alt="">



                                    <address class="margin-top10">
<!--                                        <strong class="company_name_p">{company_name}</strong><br>-->
                                        <strong>{address}</strong><br>
<!--                                        <abbr><b>--><?php //echo display('mobile') ?><!--:</b></abbr> {mobile}<br>-->
<!--                                        <abbr><b>--><?php //echo display('email') ?><!--:</b></abbr> -->
<!--                                        {email}<br>-->
<!--                                        <abbr><b>--><?php //echo display('website') ?><!--:</b></abbr> -->
<!--                                        {website}<br>-->
                                         {/company_info}
                                         <abbr>{tax_regno}</abbr>
                                    </address>
                                   
                                  

                                </div>

                                <div class="col-sm-4 text-left invoice-address">


                                    <div class=""><strong>Date:: {final_date}</strong></div>
                                    <div><strong>Voucher No: {invoice_no}</strong></div>


<!--                                    <address class="customer_name_p">-->
<!--                                        <strong class="c_name">{customer_name} </strong><br>-->
<!--                                        --><?php //if ($customer_address) { ?>
<!--                                            {customer_address}-->
<!--                                        --><?php //} ?>
<!--                                        <br>-->
<!--                                        <abbr><b>--><?php //echo display('mobile') ?><!--:</b></abbr>-->
<!--                                        --><?php //if ($customer_mobile) { ?>
<!--                                            {customer_mobile}-->
<!--                                        --><?php //}if ($customer_email) {
//                                            ?>
<!--                                            <br>-->
<!--                                            <abbr><b>--><?php //echo display('email') ?><!--:</b></abbr>-->
<!--                                            {customer_email}-->
<!--                                        --><?php //} ?>
<!--                                    </address>-->
                                </div>
                                
                                 

                            </div> 


                               <div class="row">


                                <div class="col-xs-4 inline-block">




                                   

                                </div>
                            </div>

                                <div class="footer">

                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="inv-footer-left">
                                                <?php echo display('authorised_by') ?>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="inv-footer-center">
                                                <?php echo display('received_by') ?>
                                            </div>
                                        </div>


                                    </div>


                                </div>
                           
                        </div>
                        </div>
                    </div>

                    <div class="panel-footer text-left">
                        <input type="hidden" name="" id="url" value="<?php echo base_url('Cinvoice/add_new_sales');?>">
                        <a  class="btn btn-danger" href="<?php echo base_url('Cinvoice/add_new_sales'); ?>"><?php echo display('cancel') ?></a>
                        <button  class="btn btn-info" onclick="printDiv('printableArea')"><span class="fa fa-print"></span></button>

                    </div>
                </div>
            </div>
        </div>
    </section> <!-- /.content -->
</div> <!-- /.content-wrapper -->

