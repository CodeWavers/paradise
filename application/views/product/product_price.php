<!-- Stock List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Price Ledger</h1>
            <small>Price Ledger</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Product</a></li>
                <li class="active">Price Ledger</li>
            </ol>
        </div>
    </section>

    <section class="content">


<!--        <div class="row">-->
<!--            <div class="col-sm-12">-->
<!--                <div class="panel panel-default">-->
<!--                    <div class="panel-body">-->
<!--                        --><?php //echo form_open('Creport/product_price_date_wise', array('class' => 'form-inline', 'method' => 'post')) ?>
<!--                        --><?php
//                        date_default_timezone_set("Asia/Dhaka");
//                        $today = date('Y-m-d');
//                        ?>
<!---->
<!--                        <div class="form-group">-->
<!--                            <label class="" for="from_date">--><?php //echo display('start_date') ?><!--</label>-->
<!--                            <input autocomplete="off" type="text" name="from_date" class="form-control datepicker" id="from_date" placeholder="--><?php //echo display('start_date') ?><!--" value="">-->
<!--                        </div>-->
<!---->
<!--                        <div class="form-group">-->
<!--                            <label class="" for="to_date">--><?php //echo display('end_date') ?><!--</label>-->
<!--                            <input autocomplete="off" type="text" name="to_date" class="form-control datepicker" id="to_date" placeholder="--><?php //echo display('end_date') ?><!--" value="">-->
<!--                        </div>-->
<!---->
<!--                        <button type="submit" class="btn btn-success">--><?php //echo display('search') ?><!--</button>-->
<!---->
<!--                        --><?php //echo form_close() ?>
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Price Ledger</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="" class="datatable table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('sl') ?></th>
                                    <th class="text-center"><?php echo display('product_name') ?></th>
                                    <th class="text-center">Supplier Name</th>
                                    <th class="text-center" width=20%>Status</th>

                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                if ($product_price) {
                                    ?>
                                    <?php $sl=1;?>
                                    <?php foreach ($product_price as $price) {

                                        ?>
                                        <tr>
                                            <td class="text-center"><?php echo $sl;?></td>
                                            <td class="text-center">
                                                <a href="<?php echo base_url().'Cproduct/product_details/'.$price['product_id']; ?>">
                                                    <?php echo $price['product_name'];?>
                                                </a>
                                            </td>
                                            <td class="text-center"><?php echo $price['supplier_name'];?></td>
                                            <td class="text-center">
                                                <?php
                                                    $class = "";
                                                    if ($price['price_status'] > 0){
                                                        $class = 'text-danger fa fa-arrow-up';
                                                    } else {
                                                        $class = 'text-success fa fa-arrow-down';
                                                    }
                                                    if ($price['price_status'] != 0){?>
                                                        <span class="label label-warning" style="font-size: 1em;"><?= abs($price['price_status']) ?> <i class="<?= $class ?>" ></i></span>
                                                    <?php } else { ?>
                                                        <span class="label label-info" style="font-size: 1em;"> No Changes </span>
                                                    <?php } ?>
                                            </td>

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

                        <div class="text-center">
                            <?php if (isset($link)) { echo $link ;} ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Stock List End -->