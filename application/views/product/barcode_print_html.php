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



                            <div class="panel-body" >


                                <div class="row">
                                    {barcode_details}
                                    <div class="col-xs-4 ">
                                        <div class="form-group row">

                                            <div class="col-xs-8" style=" border-style: dotted;border-width: 2px;">
                                                <div class="barcode-inner barcode-innerdiv" >

                                                    <div class="product-name-details barcode-productdetails" style="margin-bottom: 2%">{stock_in_date}</div>
                                                    <div class="product-name-details barcode-productdetails" style="margin-bottom: 2%">{product_name} {sku}</div>
                                                    <img style="margin-bottom: 2%" src="{barcode_url}" class="img-responsive center-block barcode-image" alt="" >
                                                    <!--                                                <div  class="product-name-details barcode-productdetails">{sku}</div>-->
                                                                                                    <div  class="product-name-details barcode-productdetails">Aisle No: {aisle_no}</div>
                                                                                                    <div class="product-name-details barcode-productdetails">Shelf No: {shelf_no}</div>
                                                                                                    <div  class="product-name-details barcode-productdetails">Bin No: {bin_no}</div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    {/barcode_details}
                                </div>


<!--                                <table  id="" class="table-bordered">-->
<!--                                {barcode_details}-->
<!---->
<!--                                    <tr>-->
<!--                                        <td class="barcode-toptd">-->
<!---->
<!---->
<!--                                            <div class="barcode-inner barcode-innerdiv" >-->
<!---->
<!--                                                <div class="product-name-details barcode-productdetails" style="margin-bottom: 2%">{stock_in_date}</div>-->
<!--                                                <div class="product-name-details barcode-productdetails" style="margin-bottom: 2%">{product_name} {sku}</div>-->
<!--                                                <img style="margin-bottom: 2%" src="{barcode_url}" class="img-responsive center-block barcode-image" alt="" >-->
<!---->
<!--                                            </div>-->
<!---->
<!---->
<!--                                        </td>-->
<!---->
<!---->
<!--                                    </tr>-->
<!---->
<!---->
<!---->
<!--                                    {/barcode_details}-->
<!---->
<!--                                </table>-->








                            </div>
                        </div>


                    <div class="panel-footer text-left">
                        <input type="hidden" name="" id="url" value="<?php echo base_url('Cpurchase/product_receive_form_two');?>">
                        <a  class="btn btn-danger" href="<?php echo base_url('Cpurchase/product_receive_form_two');?>"><?php echo display('cancel') ?></a>
                        <button  class="btn btn-info" onclick="printDiv('printableArea')"><span class="fa fa-print"></span></button>

                    </div>
                </div>
            </div>
        </div>
    </section> <!-- /.content -->
</div> <!-- /.content-wrapper -->

