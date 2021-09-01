
<div class="content-wrapper">
	<section class="content-header">
	    <div class="header-icon">
	        <i class="pe-7s-note2"></i>
	    </div>
	    <div class="header-title">
	        <h1>Supplier Payment</h1>
	        <small>Supplier Payment</small>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
	            <li><a href="#"><?php echo display('purchase') ?></a></li>
	            <li class="active">Supplier Payment</li>
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







		<!-- Manage Purchase report -->
		<div class="row">
		    <div class="col-sm-12">
		        <div class="panel panel-bd lobidrag">
		            <div class="panel-heading">
		                <div class="panel-title">
                        Supplier Payment
		                </div>

		            </div>
		            <div class="panel-body">
		                <div class="table-responsive">
		                    <table class="table table-striped datatable table-bordered" cellspacing="0" width="100%" id="Pur_List">
								<thead>
									<tr>
										<th class="text-center"><?php echo display('sl') ?></th>
										<th class="text-center">Supplier Name.</th>
                                        <th class="text-center">Due Amount</th>
										<th class="text-center"><?php echo display('action') ?></th>
									</tr>
								</thead>
								<tbody>
                                <?php $sl = 1; ?>
                                    <?php foreach ($purchase_list as $list) {?>
                                    <tr>
                                        <td class="text-center"><?php echo $sl++; ?></td>
                                        <td class="text-center"><?php echo $list['supplier_name']?></td>
                                        <td class="text-center"><?php echo $list['supplier_due']?> </td>
                                        <td class="text-center">

                                           <?php $id=$list['supplier_id']?>
                                            <a href="<?php echo base_url("Cpurchase/edit_purchase_order/$id/") ?>" class="btn btn-sm btn-danger"  title="Action"><i class="fa fa-pencil"></i></a>

                                        </td>
                                    </tr>
                                   <?php }?>
								</tbody>
		                    </table>
		                </div>

		            </div>
		        </div>
		    </div>
		</div>
	</section>
</div>
<!-- Manage Purchase End -->
