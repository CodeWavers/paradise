<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Product Receive</h1>
            <small>Product Receive</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Product Receive</a></li>
                <li class="active">Product Receive</li>
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
                                <th>Chalan No</th>
                                 <th><?php echo display('date') ?></th>
                                 <th>Product Name</th>
                                 <th style="width: 30px">Quantity</th>
                                 <th style="width: 200px">Barcode</th>
                                <th>Unit</th>


                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($aprrove)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($aprrove as $approve) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo html_escape($approve->chalan_id); ?></td>
                                <td><?php echo html_escape($approve->purchase_date); ?></td>
                                <td><?php echo html_escape($approve->product_name); ?></td>
                                <td class="r_qty"><?php echo $approve->quantity; ?></td>

                                <td style="width: 200px">
                                    <input   id="barcode" style="width: 200px" type="text"   class="form-control barcode" data="" name="barcode" value="<?php echo $this->input->get('barcode');?>" placeholder="Barcode"/>
<!--                                    <input  class="sl" type="text" name="codice" value="--><?php //echo $sl; ?><!--">-->

                                </td>

                                <td><?php echo html_escape($approve->unit); ?></td>



                             <td>

                                 <a id="approve"  href="" onclick="this.href='<?php echo base_url("Crqsn/ischalan/$approve->chalan_id/active/") ?>'+$(this).closest('tr').find('.barcode').val()" class="btn btn-info btn-sm " data-toggle="tooltip" data-placement="right" title=""><i class="fa fa-check" aria-hidden="true"></i></a>

<!--                                --><?php //if($this->permission1->method('aprove_v','update')->access()){ ?>
<!--                                <a href="" id="editData" class="btn btn-info btn-sm" title="Update"><i class="fa fa-edit"></i></a>-->
<!--                            --><?php //}?>
                            <?php if($this->permission1->method('aprove_v','delete')->access()){ ?>
                                <a href="<?php echo base_url("Crqsn/rqsn_delete/$approve->chalan_id/") ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are You Sure?')" title="delete"><i class="fa fa-trash"></i></a>
                            <?php }?>
                                
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


<script type="text/javascript">

        // function myFunction(){
        //     var x = $('.a_qty').val();
        //     var y=$('#r_qty').html();
        //     var z=parseInt(y);
        //     if (x > z){
        //         var msg = "You can not transfer more than requested " + z + " Items";
        //         alert(msg);
        //     }
        // }


    // $(document).ready(function(){
    //
    //
    //    // console.log(data_id);
    //     $('.a_qty').on('change', function() {
    //
    //         var qty=this.value;
    //         var y= $(this).closest('tr').find('.r_qty').html()
    //         var z=parseInt(y);
    //       //  console.log( qty);
    //         if (qty > z){
    //             var msg = "You can not transfer more than requested " + z + " Items";
    //                          alert(msg);
    //         }
    //     });
    // });


</script>
 