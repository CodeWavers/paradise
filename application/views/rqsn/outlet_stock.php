<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Outlet Stock </h1>
            <small>Outlet Stock</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Outlet Stock </a></li>
                <li class="active">Outlet Stock </li>
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
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>

                            </h4>
                        </div>
                    </div>


                    <div class="panel-body">
                        <div>

                            <div class="table-responsive" id="printableArea">
                                <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="checkListStockOutlet">
                                    <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('sl') ?></th>
                                        <th class="text-center"><?php echo display('product_name') ?></th>
                                        <th class="text-center"><?php echo display('product_model') ?></th>
                                        <th class="text-center"><?php echo display('sell_price') ?></th>
                                        <th class="text-center"><?php echo display('purchase_price') ?></th>
                                        <th class="text-center"><?php echo display('in_qnty') ?></th>
                                        <th class="text-center"><?php echo display('out_qnty') ?></th>
                                        <th class="text-center">Dispatch</th>
                                        <th class="text-center">Return Given</th>
                                        <th class="text-center"><?php echo display('stock') ?></th>
                                        <th class="text-center"><?php echo display('stock_sale')?></th>
                                        <th class="text-center">Stock Purchase Price</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tfoot>
                                    <tr>
                                    <th colspan="7" class="text-right"><?php echo display('total')?> :</th>
                                    <th id="stockqty"></th>
                                    <th></th>  <th></th> <th></th>  <th></th>
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



    $(document).ready(function(){
        var x = $('#a_qty').val();
        var y=$('#r_qty').html();
        var z=parseInt(y);


        $('.a_qty').on('change', function() {
            var qty=this.value;
            if (qty > z){
                var msg = "You can not transfer more than " + y + " Items";
                alert(msg);
            }
        });
    });


</script>
 