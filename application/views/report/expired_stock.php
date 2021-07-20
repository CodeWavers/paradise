<!-- Stock List Start -->
<div class="content-wrapper">
	<section class="content-header">
	    <div class="header-icon">
	        <i class="pe-7s-note2"></i>
	    </div>
	    <div class="header-title">
	        <h1>Expired Stock</h1>
	        <small>Expired Stock</small>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
	            <li><a href="#"><?php echo display('stock') ?></a></li>
	            <li class="active">Expired Stock</li>
	        </ol>
	    </div>
	</section>

	<section class="content">

		<div class="row">
            <div class="col-sm-12">
              
                  <?php if($this->permission1->method('stock_report','read')->access()){ ?>
                    <a href="<?php echo base_url('Creport') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('stock_report') ?> </a>
                <?php }?>
              
               
            </div>
        </div>


		<div class="row">
		    <div class="col-sm-12">
		        <div class="panel panel-bd lobidrag">
		            <div class="panel-heading">
		                <div class="panel-title">
		                    <h4>Expired Stock</h4>
		                </div>
		            </div>
		            <div class="panel-body">
		                <div class="table-responsive">
		                    <table id="" class="table table-bordered table-striped table-hover">
		                        <thead>
									<tr>
										<th class="text-center"><?php echo display('sl') ?></th>
										<th class="text-center">Barcode</th>
										<th class="text-center"><?php echo display('product_name') ?></th>
										<th class="text-center"><?php echo display('product_model') ?></th>
										<th class="text-center"><?php echo display('unit') ?></th>
										<th class="text-center">Expiry Date</th>
									</tr>
								</thead>
								<tbody>
								<?php
									if ($out_of_stock) {
								?>
								<?php $sl=1;?>
								<?php foreach ($out_of_stock as $out_of_stock) {
										
								 ?>
									<tr>
										<td><?php echo $sl;?></td>
                                        <td class="text-center"><?php echo $out_of_stock['barcode'];?></td>
										<td class="text-center">
											<a href="<?php echo base_url().'Cproduct/product_details/'.$out_of_stock['product_id']; ?>">
											<?php echo $out_of_stock['product_name'];?>
											</a>	
										</td>
										<td class="text-center"><?php echo $out_of_stock['product_model'];?></td>
										<td class="text-center"><?php echo $out_of_stock['unit'];?></td>
										<td class="text-center"><span class="label label-danger"> <?php 
											echo $out_of_stock['expired_date'];


											?></span></td>
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