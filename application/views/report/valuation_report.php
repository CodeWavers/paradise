
<!-- Stock List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('stock_report') ?></h1>
            <small>Stock Valuation Report</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('stock') ?></a></li>
                <li class="active">Stock Valuation Report</li>
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
<!--         --><?php //echo form_open('Creport/filter_wise', array('method' => 'post', 'id' => 'search_form')) ?>
<!--         --><?php
//         date_default_timezone_set("Asia/Dhaka");
//         $today = date('Y-m-d');
//         ?>
<!---->
<!--         <div class="col-sm-12">-->
<!--             <div class="panel panel-bd lobidrag">-->
<!--                 <div class="panel-body">-->
<!--         <div class="row">-->
<!--             <div class="col-sm-4">-->
<!--                 <div class="form-group row">-->
<!--                     <label for="select_cat" class="col-sm-4 col-form-label text-right">Category : </label>-->
<!--                     <div class="col-sm-6">-->
<!--                         <select name="category_id" id="category_id" class="form-control"">-->
<!--                         <option value="">Select One</option>-->
<!--                         {cat_list}-->
<!--                         <option value="{category_id}">{category_name}</option>-->
<!--                         {/cat_list}-->
<!--                         </select>-->
<!--                     </div>-->
<!--                 </div>-->
<!--             </div>-->
<!--             <div class="col-sm-4">-->
<!--                 <div class="form-group row">-->
<!--                     <label for="select_cat" class="col-sm-4 col-form-label text-right">Sub-category : </label>-->
<!--                     <div class="col-sm-6">-->
<!--                         <select name="sub_cat_id" id="sub_cat_id" class="form-control"">-->
<!--                         <option value="">Select One</option>-->
<!--                         {subcat_list}-->
<!--                         <option value="{sub_cat_id}">{subcat_name}</option>-->
<!--                         {/subcat_list}-->
<!--                         </select>-->
<!--                     </div>-->
<!--                 </div>-->
<!--             </div>-->
<!--         </div>-->
<!---->
<!---->
<!---->
<!--                     <div class="row">-->
<!--                         <div class="col-sm-4">-->
<!--                             <div class="form-group row">-->
<!--                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">Brand : </label>-->
<!--                                 <div class="col-sm-6">-->
<!--                                     <select name="select_cat" id="brand_id" class="form-control"">-->
<!--                                     <option value="">Select One</option>-->
<!--                                     {brand_list}-->
<!--                                     <option value="{brand_id}">{brand_name}</option>-->
<!--                                     {/brand_list}-->
<!--                                     </select>-->
<!--                                 </div>-->
<!--                             </div>-->
<!--                         </div>-->
<!--                         <div class="col-sm-4">-->
<!--                             <div class="form-group row">-->
<!--                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">Model : </label>-->
<!--                                 <div class="col-sm-6">-->
<!--                                     <select name="select_cat" id="model_id" class="form-control"">-->
<!--                                     <option value="">Select One</option>-->
<!--                                     {model_list}-->
<!--                                     <option value="{model_id}">{model_name}</option>-->
<!--                                     {/model_list}-->
<!--                                     </select>-->
<!--                                 </div>-->
<!--                             </div>-->
<!--                         </div>-->
<!---->
<!---->
<!--                     </div>-->
<!--                     <div class="row">-->
<!--                         <div class="col-sm-4">-->
<!--                             <div class="form-group row">-->
<!--                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">From Date : </label>-->
<!--                                 <div class="col-sm-6">-->
<!--                                     <input autocomplete="off" type="text" id="from_date" name="from_date"  placeholder="From Date" class="form-control datepicker" />-->
<!--                                 </div>-->
<!--                             </div>-->
<!--                         </div>-->
<!--                         <div class="col-sm-4">-->
<!--                             <div class="form-group row">-->
<!--                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">To Date : </label>-->
<!--                                 <div class="col-sm-6">-->
<!--                                     <input autocomplete="off" type="text" id="to_date" name="to_date"  placeholder="To Date" class="form-control datepicker" />-->
<!--                                 </div>-->
<!--                             </div>-->
<!--                         </div>-->
<!--                         <div class="col-sm-2 text-left">-->
<!--                             <button type="submit" class="btn btn-success ">--><?php //echo display('search') ?><!--</button>-->
<!--                         </div-->
<!---->
<!---->
<!--                     </div>-->
<!---->
<!--                 </div>-->
<!--             </div>-->
<!--         </div>-->
<!---->
<!--         --><?php //echo form_close() ?>
         <div class="row">
             <div class="col-sm-12">
                 <div class="panel panel-bd lobidrag">
                     <div class="panel-heading">
                         <div class="panel-title text-right">

                         </div>
                     </div>
                     <div class="panel-body">
                         <div>

                             <div class="table-responsive" id="printableArea">
                                 <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="checkListStockList_new">
                                     <thead>
                                     <tr>
                                         <th class="text-center"><?php echo display('sl') ?></th>
                                         <th class="text-center"><?php echo display('product_name') ?></th>
                                         <th class="text-center">SKU</th>
                                         <th class="text-center">Current Stock</th>
                                         <th class="text-center">Avg Purchase Price</th>
                                         <th class="text-center">Total Inventory Value (BDT)</th>
<!--                                         <th class="text-center">--><?php //echo display('out_qnty') ?><!--</th>-->


<!---->
<!--                                         <th class="text-center">--><?php //echo display('stock') ?><!--</th>-->


                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tfoot>
                                     <tr>
                                         <th colspan="3" class="text-right"><?php echo display('total')?> :</th>
                                         <th id="stockqty"></th>
                                         <th></th>  <th></th>

                                     </tr>

                                     </tfoot>

                                 </table>
                             </div>
                         </div>
                         <input type="hidden" id="currency" value="{currency}" name="">
                         <input type="hidden" id="total_stock" value="<?php echo $totalnumber;?>" name="">
                     </div>
                 </div>
             </div>
         </div>
       
    </section>
</div>


<script type="text/javascript">
    // $(document).ready(function() {
    //     "use strict";
    //     var frm = $("#search_form");
    //
    //     frm.on('submit', function(e) {
    //         e.preventDefault();
    //
    //         var main_panel = $("#main_pan");
    //
    //         $.ajax({
    //             url: frm.attr('action'),
    //             method: 'post',
    //             dataType: 'json',
    //             data: $(this).serialize(),
    //             cache: false,
    //             success: function( data ) {
    //                 main_panel.html(data.html_data);
    //
    //             },
    //             error: function() {
    //                 alert("Something went wrong!");
    //             }
    //         });
    //     });
    // });

</script>

