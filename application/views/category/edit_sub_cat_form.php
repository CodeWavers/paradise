<!--Edit customer start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Sub Category Edit</h1>
            <small>Sub Category Edit</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('category') ?></a></li>
                <li class="active">Sub Category Edit</li>
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

        <!-- New customer -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Sub Category Edit </h4>
                        </div>
                    </div>
                  <?php echo form_open_multipart('Ccategory/sub_cat_update',array('class' => 'form-vertical', 'id' => 'sub_cate_update'))?>
                    <div class="form-group">

                        <div class="row">
                            <label for="category_name" class="col-sm-3 col-form-label">Category Name<i class="text-danger">*</i></label>
                            <div class="col-sm-6">
                                <select class="form-control" name ="category_name" id="category_name" required="">
                                    {category_list}
                                    <option value="{category_id}">{category_name}</option>
                                    {/category_list}
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <label for="sub_cat_name" class="col-sm-3 col-form-label">Sub Category Name<i class="text-danger">*</i></label>
                            <div class="col-sm-6">
                                <input class="form-control" name ="sub_cat_name" id="sub_cat_name" type="text" value="{sub_cat_name}"  required="">
                            </div>
                            <input type="hidden" value="{sub_cat_id}" name="sub_cat_id">
                            <div class="col-sm-3">
                                <input type="submit" id="add-sub-cat" class="btn btn-success btn-large" name="add-sub-cat" value="Update" />
                            </div>
                        </div>

                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Edit customer end -->
