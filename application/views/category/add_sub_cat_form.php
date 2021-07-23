<!-- Add new customer start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('product') ?></h1>
            <small>Sub Category</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('product') ?></a></li>
                <li class="active">Sub Category</li>
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
                            <h4>Sub Category</h4>
                        </div>
                    </div>

                    <div class="panel-body category">
<ul class="nav nav-tabs">
 <li class="active"><a data-toggle="tab" href="#subcat_List"><i class="ti-align-justify"> </i> Manage Sub Category</a></li>
  <li><a data-toggle="tab" href="#add_subcat"><i class="fa fa-plus"> </i>Add Sub Category</a></li>
</ul>

<div class="tab-content">

  <div id="subcat_List" class="tab-pane fade in active">
    <div class="row cat-tabcontent">
         <div class="table-responsive">
                            <table id="dataTableExample3" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>

                                        <th class="text-center">Sub Category Name</th>
                                        <th class="text-center">Category</th>
                                        <th class="text-center"><?php echo display('action') ?></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($sub_cat_list) {
                                        ?>
                                        {sub_cat_list}
                                        <tr>

                                            <td class="text-center">{subcat_name}</td>

                                            <td class="text-center">{category_name}</td>

                                            <td>
                                    <center>
                                        <?php echo form_open() ?>
                                        <?php if(true){ ?>
                                        <a href="<?php echo base_url() . 'Ccategory/sub_cat_update_form/{sub_cat_id}'; ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('update') ?>"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                    <?php }?>
                                      <?php if(true){ ?>
                                        <a href="<?php echo base_url() . 'Ccategory/sub_cat_delete/{sub_cat_id}'; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are You Sure To Want To Delete \'{subcat_name}\' sub category?')" data-toggle="tooltip" data-placement="right" title="" data-original-title="<?php echo display('delete') ?> "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                    <?php }?>
                                            <?php echo form_close() ?>
                                    </center>
                                    </td>
                                    </tr>
                                    {/sub_cat_list}
                                    <?php
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                        </div>
  </div>
    <div id="add_subcat" class="tab-pane fade">
         <div class="row cat-tabcontent">
      <?php echo form_open('Ccategory/insert_sub_cat', array('class' => 'form-vertical', 'id' => 'insert_sub_cat')) ?>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-9">
                                    <div class="row">
                                        <label for="category_name" class="col-sm-3 col-form-label text-right" style="margin: 0.2em auto; font-size: 1.15em; padding-right: 0.2em;">Category Name</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" name ="category_name" id="category_name" required="">
                                                {category_list}
                                                <option value="{category_id}">{category_name}</option>
                                                {/category_list}
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row margin-top10">
                                        <label for="sub_cat_name" class="col-sm-3 col-form-label text-right" style="margin: 0.2em auto; font-size: 1.15em; padding-right: 0.2em;">Sub Category Name</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" name ="sub_cat_name" id="sub_cat_name" type="text" placeholder="Sub Category Name"  required="">
                                        </div>
                                    </div>
                                    <div class="row margin-top10">
                                        <div class="col-sm-3">
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="submit" id="add-sub-cat" class="btn btn-success btn-large" style="width: 100%;" name="add-sub-cat" value="<?php echo display('add') ?>" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                         <?php echo form_close() ?>
                     </div>
  </div>
  </div>

                    </div>

                </div>
            </div>

        </div>
    </section>
</div>
<!-- Add new customer end -->
