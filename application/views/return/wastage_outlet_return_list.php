<!-- Manage Invoice Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Outlet <?php echo display('return_list') ?> Wastage</h1>
            <small>Outlet <?php echo display('return_list') ?>Wastage</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Outlet<?php echo display('return') ?>Wastage</a></li>
                <li class="active">Outlet<?php echo display('return_list') ?>Wastage</li>
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

<!--        <div class="row">-->
<!--            <div class="col-sm-12">-->
<!--                -->
<!--                   --><?php //if($this->permission1->method('add_return','create')->access()){ ?>
<!--                    <a href="--><?php //echo base_url('Cretrun_m') ?><!--" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> --><?php //echo display('add_return') ?><!-- </a>-->
<!--                   --><?php //}?>
<!---->
<!---->
<!--              -->
<!--            </div>-->
<!--        </div>-->

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('Cretrun_m/datewise_outlet_wastage_list', array('class' => 'form-inline')) ?>
                        <?php
                        $today = date('Y-m-d');
                        ?>

                        <div class="form-group row">
                            <label for="payment_type" class="col-sm-4 col-form-label">Outlet Name</label>
                            <div class="col-sm-8">
                                <select name="outlet_id" class="form-control" required=""  tabindex="3">
                                        <option value="">Select Option</option>
                                    <?php foreach($outlet_list as $outlet){?>
                                        <option value="<?php echo html_escape($outlet['outlet_id'])?>"><?php echo html_escape($outlet['outlet_name']) ;?></option>
                                    <?php }?>


                                </select>

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="" for="from_date"><?php echo display('start_date') ?></label>
                            <input autocomplete="off" type="text" name="from_date" class="form-control datepicker" id="from_date" value="" placeholder="<?php echo display('start_date') ?>" >
                        </div> 

                        <div class="form-group">
                            <label class="" for="to_date"><?php echo display('end_date') ?></label>
                            <input autocomplete="off" type="text" name="to_date" class="form-control datepicker" id="to_date" placeholder="<?php echo display('end_date') ?>" value="">
                        </div>  

                        <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>

                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>

        <!-- Manage Invoice report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <span class="text-center">
                             <a href="<?php echo base_url('Cretrun_m/invoice_return_downloadpdf')?>" class="btn btn-warning"><?php echo display('pdf') ?></a> 
                             </span>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="dataTableExample2" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th>Reacquisition ID</th>
                                        <th>Outlet Name</th>
                                        <th>Product Name</th>
                                        <th>Quantity</th>
                                        <th><?php echo display('date') ?></th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($return_list) {
                                        ?>
                                        {return_list}
                                        <tr>
                            <td>{sl}</td>
                            <td>
<!--                                <a href="--><?php //echo base_url() . 'Cretrun_m/invoice_inserted_data/{invoice_id}'; ?><!--">-->
<!--                                    {rqsn_id}-->
<!--                                </a>-->

                                {rqsn_id}
                            </td>
                            <td>
                               {outlet_name}
                            </td>
                                            <td>
                                                {product_name}
                                            </td>
                                            <td>
                                                {ret_qty}
                                            </td>

                            <td>{final_date}</td>

                                            <td>
                                    <center>
                                        <?php echo form_open() ?>

<!--                                        <a href="--><?php //echo base_url() . 'Cretrun_m/invoice_inserted_data/{invoice_id}'; ?><!--" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="--><?php //echo display('invoice') ?><!--"><i class="fa fa-window-restore" aria-hidden="true"></i></a>-->

                 <?php if($this->permission1->method('return_list','delete')->access()){ ?>
                                        <a href="<?php echo base_url() . 'Cretrun_m/delete_return_outlet/{return_id}'; ?>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('invoice') ?>" onclick="return confirm('Do you want to delete it?')"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    <?php }?>
                                        <?php echo form_close() ?>
                                    </center>
                                    </td>
                                    </tr>
                                    {/return_list}
                                    <?php
                                }
                                ?>
                                </tbody>
                            </table>
                            <div class="text-right"><?php echo $links ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Manage Invoice End -->

