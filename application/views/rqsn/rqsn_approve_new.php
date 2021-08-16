<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Requisition</h1>
            <small>List</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Requisition</a></li>
                <li class="active">Requisition List</li>
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
                                <th>Requisition No.</th>
                                <th>Outlet Name</th>
                                <th>Customer Name</th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('action') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($rqsn_details)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($rqsn_details as $rqsn_details) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $rqsn_details['rqsn_no']?> </td>
                                <td><?php echo $rqsn_details['outlet_name']?> </td>
                                <td><?php echo $rqsn_details['rqsn_customer_name']?> </td>
                                <td><?php echo $rqsn_details['date']?> </td>
                                <td>
                                    <a href="<?= base_url().'Crqsn/approve_rqsn_final/'.$rqsn_details['rqsn_id']?>">
                                        <button class="btn btn-primary"><i class="fa fa-eye"></i></button>
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
