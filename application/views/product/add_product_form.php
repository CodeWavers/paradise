
<script src="<?php echo base_url() ?>my-assets/js/admin_js/json/product.js" type="text/javascript"></script>
<!-- Add Product Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('new_product') ?></h1>
            <small><?php echo display('add_new_product') ?></small>
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('product') ?></a></li>
                <li class="active"><?php echo display('new_product') ?></li>
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

        <div class="row">
            <div class="col-sm-12">

                <?php if($this->permission1->method('add_product_csv','create')->access()){ ?>
                    <a href="<?php echo base_url('Cproduct/add_product_csv') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('add_product_csv') ?> </a>
                <?php }?>
                <?php if($this->permission1->method('manage_product','read')->access()){ ?>
                    <a href="<?php echo base_url('Cproduct/manage_product') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('manage_product') ?> </a>
                <?php }?>


            </div>
        </div>

        <!-- Add Product -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('new_product') ?></h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Cproduct/insert_product', array('class' => 'form-vertical', 'id' => 'insert_product', 'name' => 'insert_product')) ?>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label"><?php echo display('category') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="category_id" name="category_id" onchange="select_type()" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($category_list) { ?>
                                                {category_list}
                                                <option value="{category_id}">{category_name}</option>
                                                {/category_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="barcode_or_qrcode" class="col-sm-4 col-form-label"><?php echo display('barcode_or_qrcode') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="product_id" type="text" id="product_id" placeholder="<?php echo display('barcode_or_qrcode') ?>"  tabindex="1" >
                                        <input type="hidden" name="product_id_two" value="{product_id_two}">
                                        <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
                                        <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url(); ?>"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6" id="subCat_div" style="display: none;">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                    <div class="col-sm-8">
                                        <!--                                        <select class="form-control" id="sub_cat_id" name="sub_cat_id"  tabindex="3">-->
                                        <!--                                            <option value=""></option>-->
                                        <!--                                            --><?php //if ($sub_cat_list) { ?>
                                        <!--                                                {sub_cat_list}-->
                                        <!--                                                <option value="{sub_cat_id}">{subcat_name}</option>-->
                                        <!--                                                {/sub_cat_list}-->
                                        <!--                                            --><?php //} ?>
                                        <!--                                        </select>-->
                                        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">
                                            <option></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Brand Name</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="brand_id" name="brand_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($brand_list) { ?>
                                                {brand_list}
                                                <option value="{brand_id}">{brand_name}</option>
                                                {/brand_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_name" class="col-sm-4 col-form-label"><?php echo display('product_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="product_name" type="text" id="product_name" placeholder="<?php echo display('product_name') ?>" required tabindex="1" >
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo display('serial_no') ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="serial_no" name="serial_no" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Country of Origin" ?> </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="" name="country" tabindex="3">
                                            <option value="">Select Origin</option>
                                            <option value="AF">Afghanistan</option>
                                            <option value="AX">Åland Islands</option>
                                            <option value="AL">Albania</option>
                                            <option value="DZ">Algeria</option>
                                            <option value="AS">American Samoa</option>
                                            <option value="AD">Andorra</option>
                                            <option value="AO">Angola</option>
                                            <option value="AI">Anguilla</option>
                                            <option value="AQ">Antarctica</option>
                                            <option value="AG">Antigua and Barbuda</option>
                                            <option value="AR">Argentina</option>
                                            <option value="AM">Armenia</option>
                                            <option value="AW">Aruba</option>
                                            <option value="AU">Australia</option>
                                            <option value="AT">Austria</option>
                                            <option value="AZ">Azerbaijan</option>
                                            <option value="BS">Bahamas (the)</option>
                                            <option value="BH">Bahrain</option>
                                            <option value="BD">Bangladesh</option>
                                            <option value="BB">Barbados</option>
                                            <option value="BY">Belarus</option>
                                            <option value="BE">Belgium</option>
                                            <option value="BZ">Belize</option>
                                            <option value="BJ">Benin</option>
                                            <option value="BM">Bermuda</option>
                                            <option value="BT">Bhutan</option>
                                            <option value="BO">Bolivia (Plurinational State of)</option>
                                            <option value="BQ">Bonaire, Sint Eustatius and Saba</option>
                                            <option value="BA">Bosnia and Herzegovina</option>
                                            <option value="BW">Botswana</option>
                                            <option value="BV">Bouvet Island</option>
                                            <option value="BR">Brazil</option>
                                            <option value="IO">British Indian Ocean Territory (the)</option>
                                            <option value="BN">Brunei Darussalam</option>
                                            <option value="BG">Bulgaria</option>
                                            <option value="BF">Burkina Faso</option>
                                            <option value="BI">Burundi</option>
                                            <option value="CV">Cabo Verde</option>
                                            <option value="KH">Cambodia</option>
                                            <option value="CM">Cameroon</option>
                                            <option value="CA">Canada</option>
                                            <option value="KY">Cayman Islands (the)</option>
                                            <option value="CF">Central African Republic (the)</option>
                                            <option value="TD">Chad</option>
                                            <option value="CL">Chile</option>
                                            <option value="CN">China</option>
                                            <option value="CX">Christmas Island</option>
                                            <option value="CC">Cocos (Keeling) Islands (the)</option>
                                            <option value="CO">Colombia</option>
                                            <option value="KM">Comoros (the)</option>
                                            <option value="CD">Congo (the Democratic Republic of the)</option>
                                            <option value="CG">Congo (the)</option>
                                            <option value="CK">Cook Islands (the)</option>
                                            <option value="CR">Costa Rica</option>
                                            <option value="HR">Croatia</option>
                                            <option value="CU">Cuba</option>
                                            <option value="CW">Curaçao</option>
                                            <option value="CY">Cyprus</option>
                                            <option value="CZ">Czechia</option>
                                            <option value="CI">Côte d'Ivoire</option>
                                            <option value="DK">Denmark</option>
                                            <option value="DJ">Djibouti</option>
                                            <option value="DM">Dominica</option>
                                            <option value="DO">Dominican Republic (the)</option>
                                            <option value="EC">Ecuador</option>
                                            <option value="EG">Egypt</option>
                                            <option value="SV">El Salvador</option>
                                            <option value="GQ">Equatorial Guinea</option>
                                            <option value="ER">Eritrea</option>
                                            <option value="EE">Estonia</option>
                                            <option value="SZ">Eswatini</option>
                                            <option value="ET">Ethiopia</option>
                                            <option value="FK">Falkland Islands (the) [Malvinas]</option>
                                            <option value="FO">Faroe Islands (the)</option>
                                            <option value="FJ">Fiji</option>
                                            <option value="FI">Finland</option>
                                            <option value="FR">France</option>
                                            <option value="GF">French Guiana</option>
                                            <option value="PF">French Polynesia</option>
                                            <option value="TF">French Southern Territories (the)</option>
                                            <option value="GA">Gabon</option>
                                            <option value="GM">Gambia (the)</option>
                                            <option value="GE">Georgia</option>
                                            <option value="DE">Germany</option>
                                            <option value="GH">Ghana</option>
                                            <option value="GI">Gibraltar</option>
                                            <option value="GR">Greece</option>
                                            <option value="GL">Greenland</option>
                                            <option value="GD">Grenada</option>
                                            <option value="GP">Guadeloupe</option>
                                            <option value="GU">Guam</option>
                                            <option value="GT">Guatemala</option>
                                            <option value="GG">Guernsey</option>
                                            <option value="GN">Guinea</option>
                                            <option value="GW">Guinea-Bissau</option>
                                            <option value="GY">Guyana</option>
                                            <option value="HT">Haiti</option>
                                            <option value="HM">Heard Island and McDonald Islands</option>
                                            <option value="VA">Holy See (the)</option>
                                            <option value="HN">Honduras</option>
                                            <option value="HK">Hong Kong</option>
                                            <option value="HU">Hungary</option>
                                            <option value="IS">Iceland</option>
                                            <option value="IN">India</option>
                                            <option value="ID">Indonesia</option>
                                            <option value="IR">Iran (Islamic Republic of)</option>
                                            <option value="IQ">Iraq</option>
                                            <option value="IE">Ireland</option>
                                            <option value="IM">Isle of Man</option>
                                            <option value="IL">Israel</option>
                                            <option value="IT">Italy</option>
                                            <option value="JM">Jamaica</option>
                                            <option value="JP">Japan</option>
                                            <option value="JE">Jersey</option>
                                            <option value="JO">Jordan</option>
                                            <option value="KZ">Kazakhstan</option>
                                            <option value="KE">Kenya</option>
                                            <option value="KI">Kiribati</option>
                                            <option value="KP">Korea (the Democratic People's Republic of)</option>
                                            <option value="KR">Korea (the Republic of)</option>
                                            <option value="KW">Kuwait</option>
                                            <option value="KG">Kyrgyzstan</option>
                                            <option value="LA">Lao People's Democratic Republic (the)</option>
                                            <option value="LV">Latvia</option>
                                            <option value="LB">Lebanon</option>
                                            <option value="LS">Lesotho</option>
                                            <option value="LR">Liberia</option>
                                            <option value="LY">Libya</option>
                                            <option value="LI">Liechtenstein</option>
                                            <option value="LT">Lithuania</option>
                                            <option value="LU">Luxembourg</option>
                                            <option value="MO">Macao</option>
                                            <option value="MG">Madagascar</option>
                                            <option value="MW">Malawi</option>
                                            <option value="MY">Malaysia</option>
                                            <option value="MV">Maldives</option>
                                            <option value="ML">Mali</option>
                                            <option value="MT">Malta</option>
                                            <option value="MH">Marshall Islands (the)</option>
                                            <option value="MQ">Martinique</option>
                                            <option value="MR">Mauritania</option>
                                            <option value="MU">Mauritius</option>
                                            <option value="YT">Mayotte</option>
                                            <option value="MX">Mexico</option>
                                            <option value="FM">Micronesia (Federated States of)</option>
                                            <option value="MD">Moldova (the Republic of)</option>
                                            <option value="MC">Monaco</option>
                                            <option value="MN">Mongolia</option>
                                            <option value="ME">Montenegro</option>
                                            <option value="MS">Montserrat</option>
                                            <option value="MA">Morocco</option>
                                            <option value="MZ">Mozambique</option>
                                            <option value="MM">Myanmar</option>
                                            <option value="NA">Namibia</option>
                                            <option value="NR">Nauru</option>
                                            <option value="NP">Nepal</option>
                                            <option value="NL">Netherlands (the)</option>
                                            <option value="NC">New Caledonia</option>
                                            <option value="NZ">New Zealand</option>
                                            <option value="NI">Nicaragua</option>
                                            <option value="NE">Niger (the)</option>
                                            <option value="NG">Nigeria</option>
                                            <option value="NU">Niue</option>
                                            <option value="NF">Norfolk Island</option>
                                            <option value="MP">Northern Mariana Islands (the)</option>
                                            <option value="NO">Norway</option>
                                            <option value="OM">Oman</option>
                                            <option value="PK">Pakistan</option>
                                            <option value="PW">Palau</option>
                                            <option value="PS">Palestine, State of</option>
                                            <option value="PA">Panama</option>
                                            <option value="PG">Papua New Guinea</option>
                                            <option value="PY">Paraguay</option>
                                            <option value="PE">Peru</option>
                                            <option value="PH">Philippines (the)</option>
                                            <option value="PN">Pitcairn</option>
                                            <option value="PL">Poland</option>
                                            <option value="PT">Portugal</option>
                                            <option value="PR">Puerto Rico</option>
                                            <option value="QA">Qatar</option>
                                            <option value="MK">Republic of North Macedonia</option>
                                            <option value="RO">Romania</option>
                                            <option value="RU">Russian Federation (the)</option>
                                            <option value="RW">Rwanda</option>
                                            <option value="RE">Réunion</option>
                                            <option value="BL">Saint Barthélemy</option>
                                            <option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
                                            <option value="KN">Saint Kitts and Nevis</option>
                                            <option value="LC">Saint Lucia</option>
                                            <option value="MF">Saint Martin (French part)</option>
                                            <option value="PM">Saint Pierre and Miquelon</option>
                                            <option value="VC">Saint Vincent and the Grenadines</option>
                                            <option value="WS">Samoa</option>
                                            <option value="SM">San Marino</option>
                                            <option value="ST">Sao Tome and Principe</option>
                                            <option value="SA">Saudi Arabia</option>
                                            <option value="SN">Senegal</option>
                                            <option value="RS">Serbia</option>
                                            <option value="SC">Seychelles</option>
                                            <option value="SL">Sierra Leone</option>
                                            <option value="SG">Singapore</option>
                                            <option value="SX">Sint Maarten (Dutch part)</option>
                                            <option value="SK">Slovakia</option>
                                            <option value="SI">Slovenia</option>
                                            <option value="SB">Solomon Islands</option>
                                            <option value="SO">Somalia</option>
                                            <option value="ZA">South Africa</option>
                                            <option value="GS">South Georgia and the South Sandwich Islands</option>
                                            <option value="SS">South Sudan</option>
                                            <option value="ES">Spain</option>
                                            <option value="LK">Sri Lanka</option>
                                            <option value="SD">Sudan (the)</option>
                                            <option value="SR">Suriname</option>
                                            <option value="SJ">Svalbard and Jan Mayen</option>
                                            <option value="SE">Sweden</option>
                                            <option value="CH">Switzerland</option>
                                            <option value="SY">Syrian Arab Republic</option>
                                            <option value="TW">Taiwan (Province of China)</option>
                                            <option value="TJ">Tajikistan</option>
                                            <option value="TZ">Tanzania, United Republic of</option>
                                            <option value="TH">Thailand</option>
                                            <option value="TL">Timor-Leste</option>
                                            <option value="TG">Togo</option>
                                            <option value="TK">Tokelau</option>
                                            <option value="TO">Tonga</option>
                                            <option value="TT">Trinidad and Tobago</option>
                                            <option value="TN">Tunisia</option>
                                            <option value="TR">Turkey</option>
                                            <option value="TM">Turkmenistan</option>
                                            <option value="TC">Turks and Caicos Islands (the)</option>
                                            <option value="TV">Tuvalu</option>
                                            <option value="UG">Uganda</option>
                                            <option value="UA">Ukraine</option>
                                            <option value="AE">United Arab Emirates (the)</option>
                                            <option value="GB">United Kingdom of Great Britain and Northern Ireland (the)</option>
                                            <option value="UM">United States Minor Outlying Islands (the)</option>
                                            <option value="US">United States of America (the)</option>
                                            <option value="UY">Uruguay</option>
                                            <option value="UZ">Uzbekistan</option>
                                            <option value="VU">Vanuatu</option>
                                            <option value="VE">Venezuela (Bolivarian Republic of)</option>
                                            <option value="VN">Viet Nam</option>
                                            <option value="VG">Virgin Islands (British)</option>
                                            <option value="VI">Virgin Islands (U.S.)</option>
                                            <option value="WF">Wallis and Futuna</option>
                                            <option value="EH">Western Sahara</option>
                                            <option value="YE">Yemen</option>
                                            <option value="ZM">Zambia</option>
                                            <option value="ZW">Zimbabwe</option>
                                        </select>

<!--                                        -->
<!--                                        <input type="text" tabindex="" class="form-control " id="country" name="country" placeholder="111,abc,XYz"   />-->
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <!--        <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Brand Name</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="brand_id" name="brand_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($brand_list) { ?>
                                                {brand_list}
                                                <option value="{brand_id}">{brand_name}</option>
                                                {/brand_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Product Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="ptype_id" name="ptype_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($ptype_list) { ?>
                                                {ptype_list}
                                                <option value="{ptype_id}">{ptype_name}</option>
                                                {/ptype_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Parts No" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="parts" name="parts" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Associated Tag" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="text" tabindex="" class="form-control " id="tag" name="tag" placeholder="111,abc,XYz"   />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
<!--                            <div class="col-sm-6">-->
<!--                                <div class="form-group row">-->
<!--                                    <label for="serial_no" class="col-sm-4 col-form-label">--><?php //echo "SKU" ?><!-- </label>-->
<!--                                    <div class="col-sm-8">-->
<!--                                        <input type="text" tabindex="" class="form-control " id="sku" name="sku" placeholder="111,abc,XYz"   />-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="serial_no" class="col-sm-4 col-form-label"><?php echo "Unit Cost Price" ?> </label>
                                    <div class="col-sm-8">
                                        <input type="number" tabindex="" class="form-control " id="cost_price" name="cost_price" placeholder="Unit Cost Price"   />
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="product_model" class="col-sm-4 col-form-label"><?php echo display('model') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_id" name="model_id" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($model_list) { ?>
                                                {model_list}
                                                <option value="{model_id}">{model_name}</option>
                                                {/model_list}
                                            <?php } ?>
                                        </select>
                                        <input type="hidden" tabindex="" class="form-control" id="cat_id" name="cat_id"  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label">Purchase Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="ptype_id" name="ptype_id" tabindex="3">
                                            <option value=""></option>
                                            <option value="Import">Import</option>
                                            <option value="Local">Local</option>
                                            <option value="Both">Both</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="category_id" class="col-sm-4 col-form-label"><?php echo display('category') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="category_id" name="category_id" onchange="select_type()" tabindex="3">
                                            <option value=""></option>
                                            <?php if ($category_list) { ?>
                                                {category_list}
                                                <option value="{category_id}">{category_name}</option>
                                                {/category_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6" id="subCat_div" style="display: none;">
                                <div class="form-group row">
                                    <label for="sub_category_id" class="col-sm-4 col-form-label">Sub Category</label>
                                    <div class="col-sm-8">
                                    <select class="form-control" id="sub_cat_id" name="sub_cat_id"  tabindex="3">-->
                            <!--                                            <option value=""></option>-->
                            <!--                                            --><?php //if ($sub_cat_list) { ?>
                            <!--                                                {sub_cat_list}-->
                            <!--                                                <option value="{sub_cat_id}">{subcat_name}</option>-->
                            <!--                                                {/sub_cat_list}-->
                            <!--                                            --><?php //} ?>
                            <!--                                        </select>-->
                            <!--        <select name="sub_cat_id" id="sub_cat_id" class="sub_cat_id form-control text-right" required="" tabindex="1">
                                       <option></option>
                                   </select>
                               </div>
                           </div>
                       </div> -->


                        </div>

                        <div class="row">
                            <!--    <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="sell_price" class="col-sm-4 col-form-label"><?php echo display('sell_price') ?> </label>
                                    <div class="col-sm-8">
                                        <input class="form-control text-right" id="sell_price" name="price" type="text"  placeholder="0.00" tabindex="5" min="0">
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="unit" class="col-sm-4 col-form-label"><?php echo display('unit') ?></label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="unit" name="unit" tabindex="-1" aria-hidden="true">
                                            <option value="">Select One</option>
                                            <?php if ($unit_list) { ?>
                                                {unit_list}
                                                <option value="{unit_name}">{unit_name}</option>
                                                {/unit_list}
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!--      </div> -->
                            <!--                         <div class="row"> -->
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="image" class="col-sm-4 col-form-label"><?php echo display('image') ?> </label>
                                    <div class="col-sm-8">
                                        <input type="file" name="image" class="form-control" id="image" tabindex="4">
                                    </div>
                                </div>
                            </div>
                            <!--                <div class="col-sm-6">
                                               <div class="form-group row">
                                                   <label for="re_order_level" class="col-sm-4 col-form-label">Trash Hold</label>
                                                   <div class="col-sm-8">
                                                       <input type="number" tabindex="" class="form-control " id="" name="re_order_level" placeholder=""  value="0" />
                                                   </div>
                                               </div>
                                           </div> -->
                            <!--               <?php  $i=0;
                            foreach ($taxfield as $taxss) {?>

                            <div class="col-sm-6">
                         <div class="form-group row">
                            <label for="tax" class="col-sm-4 col-form-label"><?php echo $taxss['tax_name']; ?> <i class="text-danger"></i></label>
                            <div class="col-sm-7">
                              <input type="text" name="tax<?php echo $i;?>" class="form-control" value="<?php echo number_format($taxss['default_value'], 2, '.', ',');?>">
                            </div>
                            <div class="col-sm-1"> <i class="text-success">%</i></div>
                        </div>
                    </div>

                       <?php $i++;}?> -->
                        </div>


                        <div class="table-responsive product-supplier">
                            <table class="table table-bordered table-hover"  id="product_table">
                                <thead>
                                <tr>
                                    <th class="text-center"><?php echo display('supplier') ?> </th>
<!--                                    <th class="text-center">Currency </th>-->
                                    <th class="text-center"><?php echo display('supplier_price') ?> </th>

                                    <th class="text-center"><?php echo display('action') ?> <i class="text-danger"></i></th>
                                </tr>
                                </thead>
                                <tbody id="proudt_item">
                                <tr class="">

                                    <td width="300">
                                        <select name="supplier_id[]" class="form-control"  >
                                            <option value=""> select Supplier</option>
                                            <?php if ($supplier) { ?>
                                                {supplier}
                                                <option value="{supplier_id}">{supplier_name}</option>
                                                {/supplier}
                                            <?php } ?>
                                        </select>
                                    </td>
<!--                                    <td width="300">-->
<!--                                        <select name="currency[]" class="form-control"  >-->
<!--                                            <option value=""> Select Currency</option>-->
<!--                                            --><?php //if ($currency) { ?>
<!--                                                {currency}-->
<!--                                                <option value="{currency_name}">{currency_name}</option>-->
<!--                                                {/currency}-->
<!--                                            --><?php //} ?>
<!--                                        </select>-->
<!--                                    </td>-->
                                    <td width="300">
                                        <input type="text" tabindex="6" class="form-control text-right" name="supplier_price[]" placeholder="0.00"    min="0"/>
                                    </td>

                                    <td width="100" align="center"> <a  id="add_purchase_item" class="btn btn-info btn-sm" name="add-invoice-item" onClick="addpruduct('proudt_item');"  tabindex="9"/><i class="fa fa-plus-square" aria-hidden="true"></i></a> <a class="btn btn-danger btn-sm"  value="<?php echo display('delete') ?>" onclick="deleteRow(this)" tabindex="10"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <center><label for="description" class="col-form-label"><?php echo display('product_details') ?></label></center>
                                <textarea class="form-control" name="description" id="description" rows="2" placeholder="<?php echo display('product_details') ?>" tabindex="2"></textarea>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <div class="col-sm-6">

                                <input type="submit" id="add-product" class="btn btn-primary btn-large" name="add-product" value="<?php echo display('save') ?>" tabindex="10"/>
                                <input type="submit" value="<?php echo display('save_and_add_another') ?>" name="add-product-another" class="btn btn-large btn-success" id="add-product-another" tabindex="9">
                            </div>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div>
                <input type="hidden" id="supplier_list" value='<?php if ($supplier) { ?>{supplier}<option value="{supplier_id}">{supplier_name}</option>{/supplier}<?php }?>' name="">
                <input type="hidden" id="currency_list" value='<?php if ($currency) { ?>{currency}<option value="{currency_name}">{currency_name}</option>{/currency}<?php }?>' name="">
            </div>
        </div>
    </section>
</div>
<!-- Add Product End -->
<script type="text/javascript">


    function select_type() {

        // var product_name=$("#product_name").val();
        //
        // console.log(product_name)


        var category_id = $("#category_id").val();
        var base_url = $('#base_url').val();
        var csrf_test_name = $('[name="csrf_test_name"]').val();
        var sub_cat_selected = ""; //needed for sub_cat_by_category function in Cproduct


        $.ajax( {
            url: base_url + "Cproduct/sub_cat_by_category",
            method: 'post',
            data: {
                category_id:category_id,
                sub_cat_selected: sub_cat_selected,
                csrf_test_name:csrf_test_name
            },
            cache: false,
            success: function( data ) {
                var obj = jQuery.parseJSON(data);
                $('.sub_cat_id').html(obj.sub_cat);
                $('#cat_id').val(obj.c_id);
                var cat_id = $("#cat_id").val();

                if(category_id == cat_id ){
                    $("#subCat_div").css("display", "block");
                }else{
                    $("#subCat_div").css("display", "none");
                }
                //console.log(cat_id);
            }
        });

    };


</script>
