
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Product</h1>
            <small>Approve Price</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Product</a></li>
                <li class="active">Approve Price</li>
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
                            <h4>Purchase List</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped datatable table-bordered " cellspacing="0" width="100%" id="add_rqsn_table">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th>Product name</th>
                                        <th>Supplier Name</th>
                                        <th>Old Price</th>
                                        <th>New Price</th>
                                        <th>Action</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>

                                <?php foreach ($res as $row) { 
                                    
                                    ?>
                                    <tr class="text-center">
                                        <td><?php echo $row['sl']?></td>
                                        <td>
                                            <?php echo $row['product_name']?>
                                        </td>

                                        <td>
                                            <?php echo $row['supplier_name']?>
                                        </td>
                                       
                                        <td>
                                        <?php echo $row['old_rate']?>
                                        </td>
                                        <td>

                                        <?php echo $row['rate']?>

                                        </td>

                                        <td>
                                            <button type="button" id="add_btn<?=$row['sl']?>" class="btn btn-success" data-proid = "<?php echo $row['product_id']?>" data-suppid = "<?php echo $row['supplier_id']?>" data-rate = "<?php echo $row['rate']?>" onclick="approve_price(this)">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
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


<script type="text/javascript">

function approve_price(e) {
    var a = e.parentNode.parentNode;

    
    var product_id = $(e).data("proid");
    var supplier_id = $(e).data("suppid");
    var new_rate = $(e).data("rate");
   
    var csrf_test_name = $('[name="csrf_test_name"]').val();

    $.ajax({
            url:"<?php echo base_url(); ?>Cproduct/update_new_price",
            method:"POST",
            data:{
                csrf_test_name:csrf_test_name,
                product_id:product_id,
                supplier_id:supplier_id,
                new_rate:new_rate
            },
            success:function(data)
            {

                toastr.success("Price Updated");
                a.parentNode.removeChild(a);
                // setTimeout(function(){
                //     btn.html('<i class="fa fa-plus"></i>')
                //     btn.removeClass("btn-warning");
                //     btn.addClass("btn-success");
                // },
                // 4000
                // );

            }
            // error:function (e) {
            //
            //     console.log(e)
            //
            // }
        });
}


</script>
