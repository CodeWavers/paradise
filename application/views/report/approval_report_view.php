<!-- Stock List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Report</h1>
            <small>Approval Report</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Report</a></li>
                <li class="active">Approval Report</li>
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
                        <div class="panel-title text-right">

                        </div>
                    </div>
                    <div class="panel-body">
                        <div>

                            <div class="table-responsive" id="printableArea">
                                <table class="table datatable table-striped table-bordered" cellspacing="0" width="100%" id="">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><?php echo display('sl') ?></th>
                                            <th class="text-center">Purchase Date</th>
                                            <th class="text-center"><?php echo display('product_name') ?></th>
                                            <th class="text-center">Purchase Order No.</th>
                                            <th class="text-center">Quantity</th>
                                            <th class="text-center">Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($purchase_list) { ?>
                                            {purchase_list}
                                            <tr>
                                                <td class="text-center">{sl}</td>
                                                <td class="text-center">{purchase_date}</td>
                                                <td class="text-center">{product_name}</td>
                                                <td class="text-center">{purchase_order}</td>
                                                <td class="text-center">{qty}</td>
                                                <td class="text-center">{total_amount}</td>
                                            </tr>
                                            {/purchase_list}
                                        <?php } ?>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <input type="hidden" id="currency" value="{currency}" name="">
                        <input type="hidden" id="total_stock" value="<?php echo $totalnumber; ?>" name="">
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>