
<!-- Stock List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('stock_report') ?></h1>
            <small><?php echo display('all_stock_report') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('stock') ?></a></li>
                <li class="active"><?php echo display('stock_report') ?></li>
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
         <?php echo form_open('Creport/filter_wise', array('method' => 'post', 'id' => 'search_form')) ?>
         <?php
         date_default_timezone_set("Asia/Dhaka");
         $today = date('Y-m-d');
         ?>

         <div class="col-sm-12">
             <div class="panel panel-bd lobidrag">
                 <div class="panel-body">
         <div class="row">
             <div class="col-sm-4">
                 <div class="form-group row">
                     <label for="select_cat" class="col-sm-4 col-form-label text-right">Category : </label>
                     <div class="col-sm-6">
                         <select name="category_id" id="category_id" class="form-control"">
                         <option value="">Select One</option>
                         {cat_list}
                         <option value="{category_id}">{category_name}</option>
                         {/cat_list}
                         </select>
                     </div>
                 </div>
             </div>
             <div class="col-sm-4">
                 <div class="form-group row">
                     <label for="select_cat" class="col-sm-4 col-form-label text-right">Sub-category : </label>
                     <div class="col-sm-6">
                         <select name="sub_cat_id" id="sub_cat_id" class="form-control"">
                         <option value="">Select One</option>
                         {subcat_list}
                         <option value="{sub_cat_id}">{subcat_name}</option>
                         {/subcat_list}
                         </select>
                     </div>
                 </div>
             </div>
         </div>



                     <div class="row">
                         <div class="col-sm-4">
                             <div class="form-group row">
                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">Brand : </label>
                                 <div class="col-sm-6">
                                     <select name="select_cat" id="brand_id" class="form-control"">
                                     <option value="">Select One</option>
                                     {brand_list}
                                     <option value="{brand_id}">{brand_name}</option>
                                     {/brand_list}
                                     </select>
                                 </div>
                             </div>
                         </div>
                         <div class="col-sm-4">
                             <div class="form-group row">
                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">Model : </label>
                                 <div class="col-sm-6">
                                     <select name="select_cat" id="model_id" class="form-control"">
                                     <option value="">Select One</option>
                                     {model_list}
                                     <option value="{model_id}">{model_name}</option>
                                     {/model_list}
                                     </select>
                                 </div>
                             </div>
                         </div>


                     </div>
                     <div class="row">
                         <div class="col-sm-4">
                             <div class="form-group row">
                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">From Date : </label>
                                 <div class="col-sm-6">
                                     <input autocomplete="off" type="text" id="from_date" name="from_date"  placeholder="From Date" class="form-control datepicker" />
                                 </div>
                             </div>
                         </div>
                         <div class="col-sm-4">
                             <div class="form-group row">
                                 <label for="select_cat" class="col-sm-4 col-form-label text-right">To Date : </label>
                                 <div class="col-sm-6">
                                     <input autocomplete="off" type="text" id="to_date" name="to_date"  placeholder="To Date" class="form-control datepicker" />
                                 </div>
                             </div>
                         </div>
                         <div class="col-sm-2 text-left">
                             <button type="submit" class="btn btn-success "><?php echo display('search') ?></button>
                         </div


                     </div>

                 </div>
             </div>
         </div>

         <?php echo form_close() ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">

                    <div class="panel-body">
                        <div>

                            <div class="table-responsive" >
                               <table class="datatable table-responsive table table-striped table-bordered" cellspacing="0" width="100%" id="">
                                    <thead>
                                        <tr>
                                    <th class="text-center"><?php echo display('sl') ?></th>
                                    <th class="text-center"><?php echo display('product_name') ?></th>
                                    <th class="text-center">SKU</th>
                                    <th class="text-center">Unit Type</th>
                                    <th class="text-center">Opening Stock</th>
                                    <th class="text-center"><?php echo display('in_qnty') ?></th>
                                    <th class="text-center"><?php echo display('out_qnty') ?></th>
                                    <th class="text-center">Loss/Wastage</th>
                                    <th class="text-center">Dead Stock</th>
                                    <th class="text-center">Closing Stock</th>
                                    <th class="text-center">Aisle No/Shelf No/Bin No</th>
                                    <th class="text-center">Oldest Purchase Date</th>
                                        </tr>
                                    </thead>
                                    <tbody id="main_pan">

                                    <?php if (!empty($getList)) ?>
                                    <?php $sl = 1; ?>
                                    <?php foreach ($getList as $getList) { ?>
                                    <tr>


                                        <td><?php echo $sl++; ?></td>
                                        <td><?php echo $getList['product_name']?> </td>
                                        <td><?php echo $getList['sku']?></td>
                                        <td><?php echo $getList['unit']?></td>
                                        <td><?php echo $getList['opening_stock']?></td>
                                        <td><?php echo $getList['totalPurchaseQnty']?></td>
                                        <td><?php echo $getList['totalSalesQnty']?></td>
                                        <td><?php echo $getList['wastage_stock']?></td>
                                        <td><?php echo $getList['dead_stock']?></td>
                                        <td><?php echo $getList['closing_stock']?></td>
                                        <td><?php echo $getList['asb']?></td>
                                        <td><?php echo $getList['oldest_date']?></td>

                                    </tr>
                                    <?php } ?>

                                    </tbody>


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

