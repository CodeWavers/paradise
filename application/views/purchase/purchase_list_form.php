
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Purchase List</h1>
            <small>Purchase List</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Purchase List</a></li>
                <li class="active">Purchase List</li>
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
                            <table class="table table-striped table-bordered " cellspacing="0" width="100%" id="add_rqsn_table">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th><?php echo display('image') ?></th>
                                        <th>RQ No.</th>
<!--                                        <th>Category</th>-->
<!--                                        <th>Sub Category</th>-->
                                        <th class="col-md-2"><?php echo display('product_name') ?></th>
                                        <th>Parts No.</th>
                                        <th>SKU</th>
                                        <th>Brand</th>
                                        <th><?php echo display('product_model') ?></th>
                                        <th>Proposed Quantity</th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody>

                                <?php foreach ($pur_list as $row) { ?>
                                    <tr class="text-center">
                                        <td><?php echo $row['sl']?> </td>
                                        <td class="text-center"><img src="<?php echo $row['image']?>" class="img-zoom" alt="Product Photo"></td>
<!--                                        <td>--><?php //echo $row['category_name']?><!--</td>-->
<!--                                        <td>--><?php //echo $row['subcat_name']?><!--</td>-->
                                        <td>
                                            <?php echo $row['rqsn_no']?>
                                        </td>
                                        <td>
                                            <?php echo $row['product_name']?>
                                        </td>
                                        <td><?php echo $row['parts']?></td>
                                        <td><?php echo $row['sku']?></td>
                                        <td><?php echo $row['brand_name']?></td>
                                        <td><?php echo $row['model_name']?></td>
                                        <td>
                                            <input style="text-align: center" size="10" type="text" class="form-control quantity" value="<?php echo $row['purchase_qty'];?>" style="width:100%;" name="quantity" id="<?php echo $row['product_id']?>">
                                        </td>
                                        <td>
                                            <button type="button" id="add_btn<?=$row['sl']?>" name="add_cart" title="Add to PO"
                                                class="btn btn-success add_cart"
                                                style="border:none; outline:none"
                                                data-sl="<?php echo $row['sl']?>"
                                                data-category="<?php echo $row['category_name']?>"
                                                data-subcat="<?php echo $row['subcat_name']?>"
                                                data-productname="<?php echo $row['product_name']?>"
                                                data-parts="<?php echo $row['parts']?>"
                                                data-sku="<?php echo $row['sku']?>"
                                                data-unit_rate="<?php echo $row['unit_rate']?>"
                                                data-brand="<?php echo $row['brand_name']?>"
                                                data-model="<?php echo $row['model_name']?>"
                                                data-productid="<?php echo $row['product_id']?>"
                                                data-rqsndetail="<?php echo $row['rqsn_detail_id']?>"
                                                data-rqsn_no="<?php echo $row['rqsn_no']?>"

                                                onclick="add_and_delete(this)"
                                                >
                                            <i class="fa fa-plus" aria-hidden="true"></i>
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

function add_and_delete(e) {
    var a = e.parentNode.parentNode;


    var product_id = $(e).data("productid");
            var product_name = $(e).data("productname");
            var category_name = $(e).data("category");
            var subcat = $(e).data("subcat");
            var parts = $(e).data("parts");
            var sku = $(e).data("sku");
            var brand = $(e).data("brand");
            var model = $(e).data("model");
            var quantity = $('#'+product_id).val();
            var sl = $(e).data("sl");
            var rqsn_details = $(e).data('rqsndetail');
            var rqsn_no = $(e).data('rqsn_no');
            var unit_rate = $(e).data('unit_rate');

            var btn = $("#add_btn" + sl);

            var csrf_test_name = $('[name="csrf_test_name"]').val();

            $.ajax({
                    url:"<?php echo base_url(); ?>Cpurchase/add_to_draft",
                    method:"POST",
                    data:{
                        csrf_test_name:csrf_test_name,
                        product_id:product_id,
                        product_name:product_name,
                        category_name:category_name,
                        subcat:subcat,
                        parts:parts,
                        sku:sku,
                        unit_rate:unit_rate,
                        brand:brand,
                        model:model,
                        quantity:quantity,
                        rq_d_id:rqsn_details,
                        rqsn_no:rqsn_no

                    },
                    success:function(data)
                    {

                        console.log(data);
                        toastr.success("Added to purchase order");
                        $('#cart_details').html(data);
                        $('#' + product_id).val('');
                        // $('.add_cart').attr()
                        btn.html('<i class="fa fa-check"></i>');
                        btn.removeClass("btn-success");
                        btn.addClass("btn-warning");
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



    $(document).ready(function(){


        $("#add_rqsn_table").dataTable({
            "columnDefs": [
                { "width": "5%", "targets": 9 }
            ]
        });




        // $('.add_cart').click(function(){
        //     var product_id = $(this).data("productid");
        //     var product_name = $(this).data("productname");
        //     var category_name = $(this).data("category");
        //     var subcat = $(this).data("subcat");
        //     var parts = $(this).data("parts");
        //     var sku = $(this).data("sku");
        //     var brand = $(this).data("brand");
        //     var model = $(this).data("model");
        //     var quantity = $('#' + product_id).val();
        //     var sl = $(this).data("sl");
        //     var rqsn_details = $(this).data('rqsndetail');
        //     var btn = $("#add_btn" + sl);
        //     // console.log(product_id)
        //     // console.log(product_name)
        //     // console.log(category_name)
        //     // console.log(quantity)
        //     var csrf_test_name = $('[name="csrf_test_name"]').val();

        //     $.ajax({
        //             url:"<?php echo base_url(); ?>Cpurchase/add_to_draft",
        //             method:"POST",
        //             data:{
        //                 csrf_test_name:csrf_test_name,
        //                 product_id:product_id,
        //                 product_name:product_name,
        //                 category_name:category_name,
        //                 subcat:subcat,
        //                 parts:parts,
        //                 sku:sku,
        //                 brand:brand,
        //                 model:model,
        //                 quantity:quantity
        //             },
        //             success:function(data)
        //             {

        //                 console.log(data);
        //                 toastr.success("Added to purchase order");
        //                 $('#cart_details').html(data);
        //                 $('#' + product_id).val('');
        //                 // $('.add_cart').attr()
        //                 btn.html('<i class="fa fa-check"></i>');
        //                 btn.removeClass("btn-success");
        //                 btn.addClass("btn-warning");
        //                 // setTimeout(function(){
        //                 //     btn.html('<i class="fa fa-plus"></i>')
        //                 //     btn.removeClass("btn-warning");
        //                 //     btn.addClass("btn-success");
        //                 // },
        //                 // 4000
        //                 // );

        //             }
        //             // error:function (e) {
        //             //
        //             //     console.log(e)
        //             //
        //             // }
        //         });
        // });



    });
</script>
