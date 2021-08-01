<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Approve Requisition</h1>
            <small>Requisition</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Approve Requisition</a></li>
                <li class="active">Approve Requisition</li>
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
                                <td><?php echo $rqsn_details['date']?> </td>
                                <td><?php echo $rqsn_details['product_name']?> </td>
                                <td>
                                    <button class="btn btn-success"><i class="fa fa-pencil"></i></button>
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


    $(document).ready(function(){


       // console.log(data_id);
        $('.a_qty').on('change', function() {

            var qty=this.value;
            var y= $(this).closest('tr').find('.r_qty').html()
            var s= $(this).closest('tr').find('.s_qty').html()
            var z=parseInt(y);
            var s_qty=parseInt(s);
          //  console.log( qty);
            if (qty > z){
                var msg = "You can not transfer more than requested " + z + " Items";
                             alert(msg);
            }
            if (qty > s_qty){
                var msg = "You can transfer maximum " + s_qty + " Items";
                alert(msg);
            }
        });
    });


</script>
