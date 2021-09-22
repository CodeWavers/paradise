<!-- Product details page start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Stock</h1>
            <small>Stock Item Ledger</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('report') ?></a></li>
                <li class="active">Stock Item Ledger</li>
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
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Stock Item Ledger</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-6">
                        <h2> <span>Barcode: </span><span>{product_id}</span></h2>
                        <h2> <span><?php echo display('product_name') ?>: </span><span>{product_name}</span></h2>
                        <h4> <span ><?php echo display('model') ?>:</span> <span>{model_name}</span>  <span >Brand:</span> <span>{brand_name}</span></h4>
                        <h4> <span >Category:</span> <span>{category_name}</span>  <span >Sub-category:</span> <span>{subcat_name}</span></h4>
                        <h4> <span >Parts No:</span> <span>{parts}</span> &nbsp; <span >SKU:</span> <span>{sku}</span></h4>
<!--                        <h4> </h4>-->
<!--                        <h4> <span>--><?php //echo display('price') ?><!--:</span> <span>-->
<!--                                --><?php //echo (($position == 0) ? "$currency {price}" : "{price} $currency") ?><!--</span></h4>-->
                            </div>
                            <div class="col-sm-6 text-right">
                                <img src="<?php echo $img;?>" class="img" height="100" width="80">
                            </div>
<!--                        <table class="table">-->
<!--                            <tr>-->
<!--                                <th>--><?php //echo display('total_purchase') ?><!-- = <span class="text-danger">{total_purchase}</span></th>-->
<!--                                <th>--><?php //echo display('total_sales') ?><!-- = <span class="text-danger"> {total_sales}</span></th>-->
<!--                                <th>--><?php //echo display('stock') ?><!-- = <span class="text-danger"> {stock}</span></th>-->
<!--                            </tr>-->
<!--                        </table>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Purchase </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="" class="datatable table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('sl') ?></th>
                                    <th class="text-center">Purchase Date</th>
                                    <th class="text-center">Purchase Price</th>
                                    <th class="text-center">Quantity</th>


                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                if ($purchase_data) {
                                    ?>
                                    <?php $sl=1;?>
                                    <?php foreach ($purchase_data as $price) {

                                        ?>
                                        <tr>
                                            <td><?php echo $sl;?></td>
                                            <td class="text-center"><?php echo $price['date'];?></td>
                                            <td class="text-center"><?php echo $price['unit_price'];?></td>
                                            <td class="text-center"><?php echo $price['quantity'];?></td>


                                        </tr>
                                        <?php 	$sl++;
                                        ?>
                                        <?php
                                    } ?>
                                    <?php
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Sale </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="" class="datatable table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('sl') ?></th>
                                    <th class="text-center">Sale Date</th>
                                    <th class="text-center">Sale Price</th>
                                    <th class="text-center">Quantity</th>


                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                if ($sale_data) {
                                    ?>
                                    <?php $sl=1;?>
                                    <?php foreach ($sale_data as $price) {

                                        ?>
                                        <tr>
                                            <td><?php echo $sl;?></td>
                                            <td class="text-center"><?php echo $price['chalan_date'];?></td>
                                            <td class="text-center"><?php echo $price['rate'];?></td>
                                            <td class="text-center"><?php echo $price['quantity'];?></td>


                                        </tr>
                                        <?php 	$sl++;
                                        ?>
                                        <?php
                                    } ?>
                                    <?php
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Total Purchase report -->

    </section>
</div>
<!-- Product details page end -->