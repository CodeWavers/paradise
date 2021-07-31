
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Add Requisition</h1>
            <small>Add product to requisition</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Requisition</a></li>
                <li class="active">Add Requisition</li>
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




        <!-- Manage Product report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Requisition</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="add_rqsn_table">
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
                                        <th><?php echo display('image') ?>s</th>
                                        <th class="col-md-1">Quantity</th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {all_product}
                                    <tr class="text-center">
                                        <td>{sl}</td>
                                        <td>{category_name}</td>
                                        <td>{subcat_name}</td>
                                        <td>{product_name}</td>
                                        <td>{parts}</td>
                                        <td>{sku}</td>
                                        <td>{brand_name}</td>
                                        <td>{product_model}</td>
                                        <td class="text-center"><img src="{image}" class="img-zoom" alt="Product Photo"></td>
                                        <td><input type="text" class="form-control" name="req_quantity" id="req_quantity"></td>
                                        <td><button class="btn btn-success form-control">Add</button></td>
                                    </tr>
                                    {/all_product}
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
