
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
										<th class="text-center">Purchase Order No.</th>
										<th class="text-center">Supplier Name.</th>
										<th class="text-center"><?php echo display('action') ?></th>
									</tr>
								</thead>
								<tbody>
                                    {purchase_list}
                                    <tr>
                                        <td class="text-center">{sl}</td>
                                        <td class="text-center">{purchase_order}</td>
                                        <td class="text-center">{supplier_name}</td>
                                        <td class="text-center">
                                            <a href="<?= base_url()?>Cpurchase/edit_purchase_order/{purchase_order}/{supplier_id}">
                                            <button type="button" class="btn btn-success"><i class="fa fa-pencil"></i></button>
                                            </a>
                                        </td>
                                    </tr>
                                    {/purchase_list}
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
