<style type="text/css">
    .form-control {
        padding: 6px 5px;
    }
</style>

<!-- Add New Purchase Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Sales</h1>
            <small>Manage Sales Order</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#">Sales</a></li>
                <li class="active">Manage Sales Order</li>
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
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
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

        <!-- Purchase report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Manage Sales Order</h4>
                        </div>
                    </div>

                    <div class="panel-body">
                        <?php echo form_open_multipart('Cinvoice/approve_sales_order', array('class' => 'form-vertical', 'id' => 'insert_purchase', 'name' => 'insert_purchase')) ?>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="col-sm-12">
                                    <div class="form-group row">
                                        <label for="invoice_no" class="form-label col-sm-4">Invoice No.</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" name="invoice_no" id="invoice_no" onchange="getinvoice_details()">
                                                <option value="">Select One</option>
                                                {so_list}
                                                <option value="{invoice_id}">{invoice_no}</option>
                                                {/so_list}
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="invo_details_div">
                            <h3 align="center">Select an invoice no. to get data.</h3>
                        </div>

                        <button type="submit" style="float : right" class="btn btn-success">Submit</button>

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script type="text/javascript">
    function getinvoice_details() {
        var invoice_id = $("#invoice_no").val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();

        $.ajax({
            url: "<?php echo base_url(); ?>Cinvoice/get_po_details",
            method: 'POST',
            data: {
                invoice_id: invoice_id,
                csrf_test_name: csrf_test_name
            },
            success: function(data) {
                obj = jQuery.parseJSON(data);
                $('#invo_details_div').html(obj.html);
            }
        })
    }

    function add_pur_calc_store(sl) {

        var gr_tot = 0;
        var dis = 0;
        var real_gr_tot = 0;
        var item_ctn_qty = $("#qty_" + sl).val();
        var vendor_rate = $("#rate_" + sl).val();


        var total_price = (item_ctn_qty * vendor_rate);
        $("#row_total_" + sl).val(total_price.toFixed(2));


    }

    function delete_row(inv_details_id, e) {
        var invoice_id = $("#invoice_no").val();
        var a = e.parentNode.parentNode;
        var csrf_test_name = $('[name="csrf_test_name"]').val();


        $.ajax({
            url: '<?php echo base_url(); ?>Cinvoice/remove_sales_order_row',
            method: 'POST',
            data: {
                inv_id: invoice_id,
                inv_details_id: inv_details_id,
                csrf_test_name: csrf_test_name
            },
            success: () => {
                a.parentNode.removeChild(a);
                toastr.error('Row removed.');
            }
        });
    }
</script>