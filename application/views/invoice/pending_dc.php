<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Delivery Chalan</h1>
            <small>Pending</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Delivery Chalan</a></li>
                <li class="active">Pending</li>
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

                <div class="">
                    <table class="datatable table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th>DC No.</th>
                                <th>Vessel Name</th>
                                <th>Customer Name</th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('action') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($details)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($details as $details) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $details['dc_no']?> </td>
                                <td><?php echo $details['vessel_name']?> </td>
                                <td><?php echo $details['customer_name']?> </td>
                                <td><?php echo $details['date']?> </td>
                                <td class="text-center">
                                    <a href="<?= base_url().'Cinvoice/pending_dc_edit/'.$details['dc_no']?>">
                                        <button class="btn btn-sm btn-info"><i class="fa fa-edit"></i></button>
                                    </a>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
</section>
</div>
