
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cpurchase extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->model('Purchases');
    }



    public function index()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_add_form();
        $this->template->full_admin_html_view($content);
    }

    public function purchase_order()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_add_form();
        $this->template->full_admin_html_view($content);
    }

    public function update_po()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->update_po();
        $this->session->set_userdata(array('message' => 'Successfully Paid'));

        redirect(base_url('Cpurchase/purchase_order_approve'));
    }

    public function update_po_new()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->update_po_new();

        $po_no = $this->input->post('pur_order_no', TRUE);
        $this->session->set_userdata(array('message' => 'Succesfully Approved'));

        // redirect(base_url('Cpurchase/po_print/'.$po_no));

        redirect(base_url('Cpurchase/purchase_order_approve_new'));
    }

    public function po_print($po_no)
    {

        $CI = &get_instance();
        $CI->load->model('Web_settings');
        $CI->load->model('Invoices');
        $CI->load->model('Purchases');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $taxfield = $CI->db->select('*')
            ->from('tax_settings')
            ->where('is_show', 1)
            ->get()
            ->result_array();
        $txregname = '';
        foreach ($taxfield as $txrgname) {
            $regname = $txrgname['tax_name'] . ' Reg No  - ' . $txrgname['reg_no'] . ', ';
            $txregname .= $regname;
        }


        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();


        $all_purchase_list = $CI->Purchases->purchase_list_details_by_po_no_new($po_no);

        $i = 0;
        foreach ($all_purchase_list as $k => $v) {
            $i++;
            $all_purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);

            //   $closing_inventory = array_sum(array_column($data,'purchase_total'));
        }
        $total = array_sum(array_column($all_purchase_list, 'total_amount'));

        $data = array(
            'title'             => 'Approve PO',
            'all_purchase_list'      => $all_purchase_list,
            'total'      => $total,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'tax_regno'         => $txregname,

        );

        //echo '<pre>';print_r($data);exit();

        $content =  $CI->parser->parse('purchase/po_print', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function product_receive()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->product_receive_add_form();
        $this->template->full_admin_html_view($content);
    }

    //Manage purchase
    public function manage_purchase()
    {
        $this->load->library('lpurchase');
        $content = $this->lpurchase->purchase_list();
        $this->template->full_admin_html_view($content);
    }

    public function remove()
    {
        $CI = &get_instance();
        $CI->load->model('Purchases');

        $cart_list = $this->Purchases->purchase_cart_data();

        $row_id = $_POST["row_id"];
        $pr_id = $_POST["pr_id"];
        $rqsn_id = $_POST["rqsn_id"];
        //        $data = array(
        //            'rowid'  => $row_id,
        //            'qty'  => 0
        //        );


        // echo '<pre>'; print_r($rqsn_id); exit();
        if (count($cart_list) > 1) {
            foreach ($cart_list as $cl) {
                if ($cl['product_id'] != $pr_id) {
                    // echo '<pre>'; print_r('Hello'); exit();
                    $this->db->where('rqsn_detail_id', $rqsn_id);
                    $this->db->where('product_id', $pr_id);
                    $this->db->set('purchase_status', 1);
                    $this->db->update('rqsn_details');
                }
            }
        } else {

            $this->db->where('product_id', $pr_id);
            $this->db->set('purchase_status', 1);
            $this->db->update('rqsn_details');
        }



        $this->db->where('id', $row_id);
        $this->db->delete('purchase_order_cart');

        echo $this->PO_live_data();
    }

    public function clear()
    {
        $p_id = $this->input->post('p_id', TRUE);
        $each_pr = explode(",", $p_id);

        // print_r($each_pr); exit();

        foreach ($each_pr as $pr) {
            $this->db->where('product_id', $pr);
            $this->db->set('purchase_status', 1);
            $this->db->update('rqsn_details');
        }

        $this->db->empty_table('purchase_order_cart');
        echo $this->PO_live_data();
    }


    public function CheckPurchaseList()
    {
        // GET data
        $this->load->model('Purchases');
        $postData = $this->input->post();
        $data = $this->Purchases->getPurchaseList($postData);
        echo json_encode($data);
    }
    // search purchase by supplier
    public function purchase_search()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $supplier_id = $this->input->get('supplier_id');
        #
        #pagination starts
        #
        $config["base_url"] = base_url('Cpurchase/purchase_search/');
        $config["total_rows"] = $this->Purchases->count_purchase_seach($supplier_id);
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;
        $config['suffix'] = '?' . http_build_query($_GET);
        $config['first_url'] = $config["base_url"] . $config['suffix'];
        /* This Application Must Be Used With BootStrap 3 * */
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $links = $this->pagination->create_links();
        #
        #pagination ends
        #
        $content = $this->lpurchase->purchase_search_supplier($supplier_id, $links, $config["per_page"], $page);
        $this->template->full_admin_html_view($content);
    }

    //purchase list by invoice no
    public function purchase_info_id()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $invoice_no = $this->input->post('invoice_no', TRUE);
        $content = $this->lpurchase->purchase_list_invoice_no($invoice_no);
        $this->template->full_admin_html_view($content);
    }

    //Insert purchase
    public function insert_purchase()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->purchase_entry();
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['add-purchase'])) {
            redirect(base_url('Cpurchase/manage_purchase'));
            exit;
        } elseif (isset($_POST['add-purchase-another'])) {
            redirect(base_url('Cpurchase'));
            exit;
        }
    }

    public function insert_purchase_new()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['save_as_draft'])) {
            $CI->Purchases->PO_cart_update();
            // exit();
            redirect(base_url('Cpurchase'));
            exit;
        } elseif (isset($_POST['finalize'])) {
            $CI->Purchases->purchase_entry_new();
            // exit();
            redirect(base_url('Cpurchase'));
            exit;
        }
    }

    public function insert_po()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->po_entry();
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['add-purchase'])) {
            redirect(base_url('Cpurchase/manage_purchase'));
            exit;
        } elseif (isset($_POST['add-purchase-another'])) {
            redirect(base_url('Cpurchase/purchase_order'));
            exit;
        }
    }

    //purchase Update Form
    public function purchase_update_form($purchase_id)
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_edit_data($purchase_id);
        $this->template->full_admin_html_view($content);
    }

    // purchase Update
    public function purchase_update()
    {

        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->update_purchase();
        $this->session->set_userdata(array('message' => display('successfully_updated')));
        redirect(base_url('Cpurchase/manage_purchase'));
        exit;
    }

    //Purchase item by search
    public function purchase_item_by_search()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $supplier_id = $this->input->post('supplier_id', TRUE);
        $content = $CI->lpurchase->purchase_by_search($supplier_id);
        $this->template->full_admin_html_view($content);
    }

    //Product search by supplier id
    public function product_search_by_supplier()
    {


        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Suppliers');
        $supplier_id = $this->input->post('supplier_id', TRUE);
        $product_name = $this->input->post('product_name', TRUE);
        $product_info = $CI->Suppliers->product_search_item($supplier_id, $product_name);
        if (!empty($product_info)) {
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array('label' => $value['product_name'] . '(' . $value['product_model'] . ')', 'value' => $value['product_id']);
            }
        } else {
            $json_product[] = 'No Product Found';
        }
        echo json_encode($json_product);
    }


    public function po_search_by_supplier()
    {


        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Suppliers');
        $supplier_id = $this->input->post('supplier_id', TRUE);
        $product_name = $this->input->post('product_name', TRUE);
        $product_info = $CI->Suppliers->po_search_item($supplier_id, $product_name);
        //  echo '<pre>';print_r($product_info);
        if (!empty($product_info)) {
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array('label' => $value['rqsn_detail_id'], 'value' => $value['product_id']);
            }
        } else {
            $json_product[] = 'No Purchase Order Found';
        }
        echo json_encode($json_product);
    }



    public function retrieve_po_data()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $product_id  = $this->input->post('product_id', TRUE);
        $supplier_id = $this->input->post('supplier_id', TRUE);

        $product_info = $CI->Rqsn->get_po_details($product_id, $supplier_id);

        echo json_encode($product_info);
    }


    //Retrive right now inserted data to cretae html
    public function purchase_details_data($purchase_id)
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_details_data($purchase_id);
        $this->template->full_admin_html_view($content);
    }

    public function delete_purchase($purchase_id = null)
    {
        $this->load->model('Purchases');
        if ($this->Purchases->purchase_delete($purchase_id)) {
            #set success message
            $this->session->set_flashdata('message', display('delete_successfully'));
        } else {
            #set exception message
            $this->session->set_flashdata('exception', display('please_try_again'));
        }
        redirect(base_url('Cpurchase/manage_purchase'));
    }

    // purchase info date to date
    public function manage_purchase_date_to_date()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $start = $this->input->post('from_date', TRUE);
        $end = $this->input->post('to_date', TRUE);

        $content = $this->lpurchase->purchase_list_date_to_date($start, $end);
        $this->template->full_admin_html_view($content);
    }
    //purchase pdf download
    public function purchase_downloadpdf()
    {
        $CI = &get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->model('Invoices');
        $CI->load->library('pdfgenerator');
        $purchase_list = $CI->Purchases->pdf_purchase_list();
        if (!empty($purchase_list)) {
            $i = 0;
            if (!empty($purchase_list)) {
                foreach ($purchase_list as $k => $v) {
                    $i++;
                    $purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $data = array(
            'title'         => display('manage_purchase'),
            'purchase_list' => $purchase_list,
            'currency'      => $currency_details[0]['currency'],
            'logo'          => $currency_details[0]['logo'],
            'position'      => $currency_details[0]['currency_position'],
            'company_info'  => $company_info
        );
        $this->load->helper('download');
        $content = $this->parser->parse('purchase/purchase_list_pdf', $data, true);
        $time = date('Ymdhi');
        $dompdf = new DOMPDF();
        $dompdf->load_html($content);
        $dompdf->render();
        $output = $dompdf->output();
        file_put_contents('assets/data/pdf/' . 'purchase' . $time . '.pdf', $output);
        $file_path = 'assets/data/pdf/' . 'purchase' . $time . '.pdf';
        $file_name = 'purchase' . $time . '.pdf';
        force_download(FCPATH . 'assets/data/pdf/' . $file_name, null);
    }

    public function retrieve_product_cat_subcat_wise()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Products');
        $product_name = $this->input->post('product_name', TRUE);
        $cat_id = $this->input->post('cat_id', TRUE);
        $subcat_id = $this->input->post('subcat_id', TRUE);
        $product_info = $CI->Products->product_filter_category_wise2($product_name, $cat_id, $subcat_id, 15);
        if (!empty($product_info)) {
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array('label' => $value['product_name'], 'value' => $value['product_id']);
            }
        } else {
            $json_product[] = 'No Product Found';
        }
        echo json_encode($json_product);
    }

    public function get_supplier_price()
    {
        $CI = &get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Suppliers');

        $supplier_id = $this->input->post('supplier_id', TRUE);
        $product_id = $this->input->post('product_id', TRUE);

        $price = $CI->Suppliers->product_suppliers($supplier_id, $product_id);

        $data['price'] = $price[0]['supplier_price'];
        $data['currency'] = $price[0]['currency'];
        // echo '<pre>'; print_r($data); exit();
        echo json_encode($data);
    }

    function purchase_remove()
    {

        $row_id = $_POST["row_id"];


        $this->db->where('purchase_detail_id', $row_id);
        $this->db->delete('product_purchase_details');

        var_dump($row_id);;
        //   echo $this->view();
    }

    function purchase_approve()
    {

        $row_id = $_POST["row_id"];
        $qty = $_POST["qty"];
        $rate = $_POST["rate"];
        $total_amount = $_POST["total_amount"];

        $this->db->set(array('qty' => $qty, 'rate' => $rate, 'total_amount' => $total_amount, 'isAprv' => 3));
        $this->db->where('purchase_detail_id', $row_id);
        $this->db->update('product_purchase_details');

        var_dump($row_id);;
        //   echo $this->view();
    }

    public function purchase_order_approve_new()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_approve_form_new();
        $this->template->full_admin_html_view($content);
    }

    public function purchase_order_approve()
    {

        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_approve_form();
        $this->template->full_admin_html_view($content);
    }

    public function edit_purchase_order($supplier_id)
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_edit_form($supplier_id);
        $this->template->full_admin_html_view($content);
    }

    public function edit_purchase_order_new($PO_No)
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_edit_form_new($PO_No);
        $this->template->full_admin_html_view($content);
    }

    public function purchase_list()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_list_from_rqsn();
        $this->template->full_admin_html_view($content);
    }

    public function add_to_draft()
    {
        $data = array(
            "product_id"  => $_POST["product_id"],
            "product_name"  => $_POST["product_name"],
            "category"  => $_POST["category_name"],
            "subcat"  => $_POST["subcat"],
            "parts"  => $_POST["parts"],
            "sku"  => $_POST["sku"],
            "brand"  => $_POST["brand"],
            "model"  => $_POST["model"],
            "qty"  => $_POST["quantity"],
            'rqsn_no'     => $_POST["rqsn_no"],
            'rqsn_detail_id'     => $_POST["rq_d_id"],
        );

        // echo '<pre>'; print_r($data); exit();
        $this->db->insert('purchase_order_cart', $data);


        $this->db->where('rqsn_detail_id', $_POST["rq_d_id"]);
        $this->db->set('purchase_status', 2);
        $this->db->update('rqsn_details');

        //            $sq = "UPDATE rqsn_details
        //            SET purchase_status = 2
        //            WHERE rqsn_detail_id = ".$product_id.";";
        //
        //            $this->db->query($sq);



        json_encode($data);
    }

    function load()
    {


        echo $this->PO_live_data();
    }

    public function PO_live_data()
    {
        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        $this->load->model("Reports");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->purchase_cart_data();


        $output = '';
        $output .= '
            <div class="table-responsive">
            <div align="right">
            <button type="button" id="clear_cart" class="btn btn-warning">Clear Purchase Order</button>
            </div>
            <br />
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="4%">SN</th>
                        <th class="text-center" width="12%">RQ No.</th>
                        <th class="text-center" width="8%">Product Name</th>
                        <th class="text-center" width="8%">SKU</th>
                        <th class="text-center">Current Stock</th>
                        <th class="text-center">Proposed Quantity</th>
                        <th class="text-center">Order Quantity</th>

                        <th class="text-center">Est. Price</th>
                        <th class="text-center">Total</th>
                        <th width=8% class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody id="addPurchaseItem">
                        ';


        $count = 0;
      $tot_array=array();
        foreach ($cart_list as $items) {
             // $total = array_sum(array_column($cart_list, 'total'));


            $latest_price = $this->db->select('*')->from('supplier_product_price')->where('product_id', $items['product_id'])->where('status',2)->order_by('id', 'DESC')->get()->row()->update_price;
            $current_stock = $this->Reports->current_stock($items['product_id']);

            // echo '<pre>'; print_r($latest_price); exit();

          //  $total=0;



            if ($items['total']) {
                $tot = $items['total'];
            }else{
                $tot=  $items['qty']*$latest_price;
            }

            $tot_array[]=array(

                'row_total' => $tot

            );
          //  echo '<pre>'; print_r($tot); exit();
            $add_cost = "00";

            if ($items['additional_cost']) {
                $add_cost = $items['additional_cost'];
            }

            if (!empty($items['rate']) ){

                $rate=$items['rate'];


            }else{

                $rate=$latest_price;
            }

            if (!empty($items['order_qty']) ){

                $qty=$items['order_qty'];


            }else{

                $qty=$items['qty'];
            }





            $product_id = $items['product_id'];
            $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
            $supplier_list = $this->Products->supplier_product_editdata($product_id);
            // echo '<pre>'; print_r($row_total); exit();
            $count++;
            $output .= '
                        <tr>
                        <td class="wt"> ' . $count . '</td>
                        <td class="wt">' . $items['rqsn_no'] . '</td>
                        <td class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['id'] . '">
                            <input type="hidden" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                            <input type="hidden" id="rqsn_detail_id_' . $count . '" value="' . $items['rqsn_detail_id'] . '">
                            <input type="hidden"  name="rqsn_no[]" id="rqsn_no_' . $count . '" value="' . $items['rqsn_no'] . '">
                        </td>
                            <td class="wt">' . $items['sku'] . '</td>
                            <td class="wt">
                                <input type="text"  id="available_quantity_1" class="form-control text-right stock_ctn_1" value="' . number_format($current_stock,2) . '" placeholder="0.00" readonly/>
                            </td>
                            <td class="test">
                                <input type="text" name="proposed_quantity[]" required="" id="proposed_quantity_' . $count . '" class="form-control product_rate_1 text-right"  value="'. $items['qty'] . '" min="0" tabindex="7" readonly/>
                            </td>
                            <td class="test">
                                <input type="text" name="order_quantity[]" required=""  id="order_quantity_' . $count . '" class="form-control product_rate_1 text-right" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" placeholder="1234" value="' . ($qty ? $qty : "00") . '" min="0" tabindex="7"/>
                            </td>

                                ';





            // $output .= '<option value='.$supp['supplier_id'].'>'.$supp['supplier_name'].'</option>';
            // if ($items['supplier_id']) {
            //     foreach ($supplier_list as $supp) {
            //         if ($items['supplier_id'] == $supp['supplier_id']) {
            //             $output .= '<option selected value=' . $items['supplier_id'] . '>' . $this->Suppliers->supplier_search($items['supplier_id'])[0]['supplier_name'] . '<option>';
            //         } else {
            //             $output .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
            //         }
            //     }
            // } else {
            //     $output .= '<option value="">Select Option</option>';
            //     foreach ($supplier_list as $supp) {
            //         $output .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
            //     }
            // }

//            <button  class="add_row btn btn-success" type="button" onclick=add_row(' . $count . ')  id="" tabindex="8"><i class="fa fa-plus"></i></button>
            $total = array_sum(array_column($tot_array,'row_total'));

            $output .= '

                                <td class="text-right">
                                    <input type="hidden" style="width: 100px" name="bdt_price[]" id="bdt_price_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value="0.00"  tabindex="6"/>
                                    <input type="text" style="width: 100px" name="price[]" id="product_rate_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" required="" min="0" class="form-control text-right rate store_cal_1"  placeholder="0.00" value="' . ($rate ? $rate : "") . '"  tabindex="6"/>
                                </td>

                                <td class="text-left">
                                    <input type="text" class="form-control row_total" name="row_total[]" value="' . $tot . '" id = "row_total_' . $count . '" class="row_total" readonly>
                                </td>
                                <td>
                                <button  class="remove_inventory btn btn-danger text-right" type="button"  id="' . $count . '" tabindex="8"><i class="fa fa-close"></i></button>
                         
                                </td>
                 </tr>
                        ';
        }
        $output .= '
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="8" class="text-right"><b>Grand Total:</b></td>
                    <td>
                    <input class="form-control" name="total" id="grand_total" value=' . number_format($total,2) . ' readonly/>
                </td>
                </tr>
            </tfoot>
        </table>
                            ';
    //    echo '<pre>';print_r(array_sum(array_column($tot_array,'row_total')));exit();

        if ($count == 0) {
            $output = '<h3 align="center">Purchase Order is empty</h3>';
        }
        return $output;
    }


    public function add_row()
    {
        $pr_id = $this->input->post('pr_id', TRUE);
        $supp_id = $this->input->post('supp_id', TRUE);
        $prop_qty = $this->input->post('prop_qty', TRUE);
        $pr_name = $this->input->post('product_name', TRUE);
        $sku = $this->input->post('sku', TRUE);
        $rq_id = $this->input->post('rqsn_id', TRUE);
        $row_id = $this->input->post('row_id', TRUE);

        $data2 = array(
            'order_qty' => $this->input->post('order_quantity', TRUE),
            'warrenty_date' => $this->input->post('warrenty_date', TRUE),
            'supplier_id'   => $supp_id,
            'rate' => $this->input->post('price', TRUE),
            'discount' => $this->input->post('discount', TRUE),
            'total' => $this->input->post('row_total', TRUE),
            'additional_cost' => $this->input->post('additional_cost', TRUE),
        );


        // echo '<pre>'; print_r($supp_id); exit();

        $this->db->where('id', $row_id);
        // $this->db->where('supplier_id', $supp_id);
        $this->db->update('purchase_order_cart', $data2);

        // if (!($this->Purchases->cart_product($pr_id, $supp_id))) {
        $data = array(
            'product_id'    => $pr_id,
            'product_name'  => $pr_name,
            'qty'           => $prop_qty,
            'sku'           => $sku,
            'rqsn_detail_id' => $rq_id
        );
        $this->db->insert('purchase_order_cart', $data);
        // }

        // echo '<pre>'; print_r($data); exit();


        echo $this->load();
    }

    public function add_purchase()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->add_purchase_form();
        $this->template->full_admin_html_view($content);
    }

    public function product_receive_form()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->product_receive_form();
        $this->template->full_admin_html_view($content);
    }

    public function product_receive_form_two()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->product_receive_form_two();
        $this->template->full_admin_html_view($content);
    }

    public function product_receive_form_three()
    {
        $CI = &get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->product_receive_form_three();
        $this->template->full_admin_html_view($content);
    }

    public function get_purchase_details()
    {

        $po_id = $this->input->post('po_id', TRUE);

        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        $this->load->model("Reports");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->purchase_details($po_id);
        $grand_total = array_sum(array_column($cart_list, 'total_amount'));
        // $total = array_sum(array_column($cart_list, 'total'));
        $op = '';
        $op .= '
            <div class="table-responsive">
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="2%">SN</th>
                        <th class="text-center" width="8%">RQ No.</th>
                        <th class="text-center" width="8%">Product Name</th>
                        <th class="text-center" width="8%">SKU</th>
                        <th class="text-center">Current Stock</th>
                        <th class="text-center">Proposed Quantity</th>
                        <th class="text-center">Order Quantity</th>
                        <th class="text-center" width="8%">Supplier Name</th>
                        <th class="text-center" width="8%">Warranty</th>
                        <th class="text-center" width="4%">Unit Cost</th>
                        <th class="text-center" width="4%">Discount</th>
                        <th class="text-center" width="4%">Additional Cost</th>
                        <th class="text-center">Total</th>
                        <th class="text-center">Chalan/Bill No.</th>

                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody id="addPurchaseItem">';


        $count = 0;
        foreach ($cart_list as $items) {


            // echo '<pre>'; print_r($items['additional_cost']); exit();
            // $tot = "";

            // if ($items['total_amount']) {
            //     $tot = $items['total_amount'];
            // }

            $add_cost = "00";

            // if ($items['additional_cost']) {
            //     $add_cost = $items['additional_cost'];
            // }


            $product_id = $items['product_id'];
            // $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
            $supplier_list = $this->Suppliers->supplier_list_by_id($product_id);
            $current_stock = $this->Reports->current_stock($product_id);
            // echo '<pre>'; print_r($items['warrenty_date']); exit();
            $count++;
            $op .= '
                        <tr>
                        <td class="wt"> ' . $count . '</td>
                        <td class="wt"> ' . $items['rqsn_no'] . '</td>
                        <td class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['real_id'] . '">
                            <input type="hidden" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                        </td>
                            <td class="wt">' . $items['sku'] . '</td>
                            <td class="wt">
                                <input type="text"  id="available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00"  value="' . number_format($current_stock,2) . '"readonly/>
                            </td>
                            <td class="test">
                                <input type="text" name="proposed_quantity[]" required="" id="proposed_quantity_' . $count . '" class="form-control product_rate_1 text-right" value="' . $items['quantity'] . '" min="0" tabindex="7" readonly/>
                            </td>
                            <td class="test">
                                <input type="text" name="order_quantity[]" required=""  id="order_quantity_' . $count . '" class="form-control product_rate_1 text-right" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" placeholder="1234" value="' . $items['qty'] . '" min="0" tabindex="7"/>
                            </td>

                            <td>
                            <select name="supplier_drop[]" id="supplier_drop_' . $count . '" class="form-control" onchange="add_pur_calc_store(' . $count . ');"  required>
                                ';






            if ($items['supplier_id']) {
                foreach ($supplier_list as $supp) {
                    if ($items['supplier_id'] == $supp['supplier_id']) {
                        $op .= '<option selected value=' . $items['supplier_id'] . '>' . $this->Suppliers->supplier_search($items['supplier_id'])[0]['supplier_name'] . '<option>';
                    } else {
                        $op .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
                    }
                }
            } else {
                $op .= '<option value="">Select Option</option>';
                foreach ($supplier_list as $supp) {
                    $op .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
                }
            }




            $op .= ' </select></td>

                                <td class="text-right">
                                    <input type="date" name="warrenty_date[]" id="warrenty_date_' . $count . '" class="form-control text-right" onchange="add_pur_calc_store(' . $count . ');" value="' . ($items['warrenty_date'] ? $items['warrenty_date'] : "") . '"  tabindex="6"/>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="price[]" id="product_rate_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value="' . ($items['rate'] ? $items['rate'] : "") . '"  tabindex="6"/>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="discount[]" id="discount_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" class="form-control text-right store_cal_1"  placeholder="0.00" value="' . ($items['discount'] ? $items['discount'] : "") . '" tabindex="6"/>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="additional_cost[]" id="additional_cost_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" class="form-control text-right store_cal_1" value="' . ($items['additional_cost'] ? $items['additional_cost'] : "") . '"  placeholder="0.00" tabindex="6"/>
                                </td>

                                <td class="text-left">
                                    <input type="text" style="width: 100px" class="form-control row_total" name="row_total[]" value="' . ($items['total_amount'] ? $items['total_amount'] : "") . '" id = "row_total_' . $count . '" class="row_total" readonly>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="c_b_no[]" id="c_b_no' . $count . '" class="form-control text-right store_cal_1" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" tabindex="6" value="' . ($items['chalan_id'] ? $items['chalan_id'] : "") . '"/>
                                </td>


                                <td>
                                <button  class="remove_inventory btn btn-danger text-right" type="button"  id="' . $count . '" tabindex="8"><i class="fa fa-close"></i></button>
                                </td>
                        </tr>
                        ';
        }
        $op .= '
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="12" class="text-right"><b>Grand Total:</b></td>
                    <td>
                    <input class="form-control" name="total" id="grand_total" value="' . ($grand_total ? $grand_total : '') . '" readonly/>
                    </td>
                </tr>
            </tfoot>
        </table>
                            ';

        if ($count == 0) {
            $op = '<h3 align="center">Purchase Order is empty</h3>';
        }

        echo $op;
    }


    public function get_receive_details_three()
    {

        $po_id = $this->input->post('po_id', TRUE);

        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->purchase_details_rcv($po_id);
        $grand_total = array_sum(array_column($cart_list, 'total_amount'));
        // $total = array_sum(array_column($cart_list, 'total'));
        $op = '';
        $op .= '
            <div class="table-responsive">
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="4%">SN</th>
                        <th class="text-center" width="8%">Product Name</th>
                        <th class="text-center" width="8%">SKU</th>
                        <th class="text-center">Barcode</th>
                        <th class="text-center">Purchase Qty</th>
                        <th class="text-center">Quantity</th>
                        <th class="text-center">Supplier Name</th>
                        <th class="text-center">Received</th>
                        <th class="text-center">Return</th>
                        <th class="text-center">Remarks</th>
                        <th class="text-center">Bill No</th>
                        <th class="text-center" width="8%">Bill Image</th>
                        <th class="text-center">Aisle No</th>
                        <th width=8% class="text-center">Shelf No</th>
                        <th class="text-center">Bin No</th>
                    </tr>
                </thead>
                <tbody id="addPurchaseItem">';


        $count = 0;
        foreach ($cart_list as $items) {


            // echo '<pre>'; print_r($items['additional_cost']); exit();
            // $tot = "";

            // if ($items['total_amount']) {
            //     $tot = $items['total_amount'];
            // }

            $add_cost = "00";

            // if ($items['additional_cost']) {
            //     $add_cost = $items['additional_cost'];
            // }


            $product_id = $items['product_id'];
            // $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
            $supplier_list = $this->Suppliers->supplier_list_by_id($product_id);
            // echo '<pre>'; print_r($items['warrenty_date']); exit();
            $count++;
            $op .= '
                        <tr>
                        <td class="wt"> ' . $count . '</td>
                        <td class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" name="price[]" id="price_' . $count . '" value="' . $items['rate'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['real_id'] . '">
                            <input type="hidden" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                        </td>
                            <td class="wt">' . $items['sku'] . '</td>
                            <td class="wt">' . $items['product_id'] . '</td>
                            <td class="wt">
                                <input type="text" value="' . $items['qty'] . '" name="p_qty[]" id="p_qty" required="" class="form-control text-right p_qty_1" placeholder="0.00" readonly/>
                            </td>
                              <td class="wt">
                                <input type="text" name="quantity[]" id="quantity" required="" class="form-control text-right stock_ctn_1" placeholder="0.00" />
                            </td>


                            <td>
                            <select name="supplier_drop[]" id="supplier_drop_' . $count . '" class="form-control" onchange="add_pur_calc_store(' . $count . ');" >
                                ';






            if ($items['supplier_id']) {
                foreach ($supplier_list as $supp) {
                    if ($items['supplier_id'] == $supp['supplier_id']) {
                        $op .= '<option selected value=' . $items['supplier_id'] . '>' . $this->Suppliers->supplier_search($items['supplier_id'])[0]['supplier_name'] . '<option>';
                    } else {
                        $op .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
                    }
                }
            } else {
                $op .= '<option value="">Select Option</option>';
                foreach ($supplier_list as $supp) {
                    $op .= '<option value=' . $supp['supplier_id'] . '>' . $supp['supplier_name'] . '</option>';
                }
            }




            $op .= ' </select></td>

                                <td class="text-right">

                                      <select class="form-control" id="" name="received[]"  tabindex="3">



                                                <option value="Received">Received</option>
                                                <option value="Not received">Not received</option>
                                                <option value="Partially received">Partially received</option>


                                        </select>

                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="return[]" id="return"  min="0" class="form-control text-right store_cal_1"  placeholder="" value=""  tabindex="6"/>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="remarks[]" id="remarks"  class="form-control text-right store_cal_1"  placeholder="" value="" tabindex="6"/>
                                </td>

                                <td class="text-right">
                                    <input type="text" style="width: 100px" name="bill_no[]"  class="form-control text-right store_cal_1" value="' . $items['chalan_id'] . '"  placeholder="00" tabindex="6" readonly/>
                                </td>



                                <td>
                                    <input type="file" name="c_b_img[]" id="c_b_img"' . $count . '"/>
                                </td>

                                 <td class="text-right">
                                    <input type="text" style="width: 100px" name="aisle_no[]"  class="form-control text-right store_cal_1" value=""  placeholder="00" tabindex="6"/>
                                </td>

                                 <td class="text-right">
                                    <input type="text" style="width: 100px" name="shelf_no[]"  class="form-control text-right store_cal_1" value=""  placeholder="00" tabindex="6"/>
                                </td>

                                 <td class="text-right">
                                    <input type="text" style="width: 100px" name="bin_no[]"  class="form-control text-right store_cal_1" value=""  placeholder="00" tabindex="6"/>
                                  </td>


                        </tr>
                        ';
        }
        $op .= '
            </tbody>

        </table>
                            ';

        if ($count == 0) {
            $op = '<h3 align="center"> Empty!!</h3>';
        }

        echo $op;
    }

    public function get_receive_details()
    {

        $po_id = $this->input->post('po_id', TRUE);

        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->purchase_details_rcv($po_id);
        $grand_total = array_sum(array_column($cart_list, 'total_amount'));
        // $total = array_sum(array_column($cart_list, 'total'));
        $op = '';
        $op .= '
            <div class="table-responsive">
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>

                        <th style="font-size: 12px" class="text-center" width="4%">SN</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Product Name</th>
                        <th style="font-size: 12px" class="text-center" width="8%">SKU</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Barcode</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Quantity</th>

                        <th style="font-size: 12px" class="text-center" width="8%">Supplier Name</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Received</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Return</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Remarks</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Bill No.</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Aisle No.</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Shelf No.</th>
                        <th style="font-size: 12px" class="text-center" width="8%">Bin No.</th>

               


                    </tr>
                </thead>
                <tbody id="addPurchaseItem">';


        $count = 0;
        foreach ($cart_list as $items) {


            // echo '<pre>'; print_r($items['additional_cost']); exit();
            // $tot = "";

            // if ($items['total_amount']) {
            //     $tot = $items['total_amount'];
            // }

            $add_cost = "00";

            // if ($items['additional_cost']) {
            //     $add_cost = $items['additional_cost'];
            // }


            $product_id = $items['product_id'];
            // $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
            $supplier_list = $this->Suppliers->supplier_list_by_id($product_id);
            // echo '<pre>'; print_r($items['warrenty_date']); exit();
            $count++;
            $op .= '
                        <tr>
                        <td style="font-size: 11px" class="wt"> ' . $count . '</td>
                        <td style="font-size: 11px" class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['real_id'] . '">
                            <input type="hidden" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                        </td>

                            <td style="font-size: 11px" class="wt">' . $items['sku'] . '</td>
                            <td style="font-size: 11px" class="wt">' . $items['product_id'] . '</td>




                           




                            <td class="test">

                            </td>
                              <td class="test">

                            </td>

                         <td class="test">

                            </td>




                                <td class="text-right">

                                </td>

                                <td class="text-right">

                                </td>
                                <td class="text-right">

                                </td>

                                <td class="text-right">

                                </td>

                                <td class="text-right">

                                </td>
                                <td class="text-right">

                                </td>
                                
                                
  







                        </tr>
                        ';
        }


        echo $op;
    }

    public function get_receive_details_two()
    {

        $po_id = $this->input->post('po_id', TRUE);

        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->purchase_details_rcv($po_id);

        //  echo '<pre>';print_r($cart_list);exit();
        $grand_total = array_sum(array_column($cart_list, 'total_amount'));
        // $total = array_sum(array_column($cart_list, 'total'));
        $op = '';
        $op .= '
            <div class="table-responsive">
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="4%">Bill/Chalan No.</th>
                        <th class="text-center" width="4%">Sl. No</th>
                        <th class="text-center" width="8%">Product Name</th>
                        <th class="text-center" width="8%">SKU</th>
                        <th class="text-center" width="8%">Barcode</th>
                        <th class="text-center" width="8%">Quantity</th>

                        <th class="text-center" width="8%">Aisle No</th>
                        <th class="text-center" width="8%">Shelf No</th>
                        <th class="text-center" width="8%">Bin No</th>


                    </tr>
                </thead>
                <tbody id="addPurchaseItem">';


        $count = 0;
        foreach ($cart_list as $items) {


            // echo '<pre>'; print_r($items['additional_cost']); exit();
            // $tot = "";

            // if ($items['total_amount']) {
            //     $tot = $items['total_amount'];
            // }

            $add_cost = "00";

            // if ($items['additional_cost']) {
            //     $add_cost = $items['additional_cost'];
            // }


            $product_id = $items['product_id'];
            // $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
            $supplier_list = $this->Suppliers->supplier_list_by_id($product_id);
            // echo '<pre>'; print_r($items['warrenty_date']); exit();
            $count++;
            $op .= '
                        <tr>
                        <td class="wt"> ' . $items['chalan_id'] . '</td>
                        <td class="wt"> ' . $count . '</td>
                        <td class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['real_id'] . '">
                            <input type="hidden" name="product_name[]" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                        </td>
                            <td class="wt">' . $items['sku'] . '
                             <input type="hidden" style="width: 100px" class="form-control " name="sku[]" value="' . $items['sku'] . '" id = "" class="sku" >
                            </td>
                            <td class="wt">' . $items['product_id'] . '</td>



                            <td class="test">
                           <input type="text" style="width: 100px" class="form-control row_total" name="quantity[]" value="" id = "" class="quantity" >
                            </td>



                                <td class="text-right">
                                      <input type="text" style="width: 100px" class="form-control row_total" name="aisle_no[]" value="" id = "" class="quantity" >
                                </td>

                                <td class="text-right">
                                       <input type="text" style="width: 100px" class="form-control row_total" name="shelf_no[]" value="" id = "" class="quantity" >
                                </td>

                                <td class="text-right">
                                      <input type="text" style="width: 100px" class="form-control row_total" name="bin_no[]" value="" id = "" class="quantity" >
                                </td>






                        </tr>
                        ';
        }


        echo $op;
    }

    public function get_bill_details()
    {

        $bill_no = $this->input->post('bill_no', TRUE);
        $supplier_id = $this->input->post('supplier_id', TRUE);

        $this->load->model("Purchases");
        $this->load->model("Products");
        $this->load->model("Suppliers");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Purchases->bill_details($bill_no,$supplier_id);
        $supplier_payment = $this->Purchases->supplier_bill_details($bill_no,$supplier_id);


        $count = $this->db->select('*')->from('supplier_payment')->where(array('supplier_id'=>$supplier_id,'bill_no'=>$bill_no))->get()->num_rows();

        if($count == 0){
            $grand_total = array_sum(array_column($cart_list, 'total_amount'));
            $due_amount = $grand_total;
            $paid_amount = 0;


        }else{
            $grand_total=$supplier_payment[0]['grand_total'];
            $paid_amount=$supplier_payment[0]['paid_amount'];
            $due_amount=$supplier_payment[0]['due_amount'];


        }

        //echo '<pre>';print_r($cart_list);exit();

        // $total = array_sum(array_column($cart_list, 'total'));
        $op = '';
        $op .= '
            <div class="table-responsive">
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="4%">SN</th>
                        <th class="text-center" width="12%">PO No</th>
                        <th class="text-center" width="12%">Product Name</th>
                        <th class="text-center" width="8%">Parts No</th>
                        <th class="text-center" width="8%">SKU</th>
                         <th class="text-center" width="8%">Origin</th>
                        <th class="text-center" width="8%">Order Quantity</th>

                        <th class="text-center" width="8%">Rate</th>
                        <th class="text-center" width="8%">Discount</th>
                        <th class="text-center" width="8%">Additional Cost</th>
                        <th class="text-center" width="10%">Total</th>

                    </tr>
                </thead>
                <tbody id="addPurchaseItem">';


        $count = 0;
        foreach ($cart_list as $items) {




            $product_id = $items['product_id'];


            // echo '<pre>'; print_r($items['warrenty_date']); exit();
            $count++;
            $op .= '
                        <tr>
                        <td class="wt"> ' . $count . '</td>
                          <td class="wt">' . $items['purchase_order'] . '</td>
                        <td class="span3 supplier">
                            <span>' . $items['product_name'] . '</span>
                            <input type="hidden" name="product_id[]" id="product_id_' . $count . '" value="' . $items['product_id'] . '">
                            <input type="hidden" class="sl" value="' . $count . '">
                            <input type="hidden" name="sl_id[]" id="sl_id_' . $count . '" value="' . $items['real_id'] . '">
                            <input type="hidden" id="product_name_' . $count . '" value="' . $items['product_name'] . '">
                            <input type="hidden" id="item_sku_' . $count . '" value="' . $items['sku'] . '">
                        </td>
                            <td class="wt">' . $items['parts'] . '</td>
                            <td class="wt">' . $items['sku'] . '</td>
                               <td class="wt">' . $items['country'] . '</td>

                            <td class="text-center">
                                <input type="text" name="order_quantity[]" required=""  id="order_quantity_' . $count . '" class="form-control product_rate_1 text-right" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" placeholder="1234" value="' . $items['qty'] . '" min="0" tabindex="7" readonly/>
                            </td>





                                <td class="text-center">
                                    <input type="text" style="width: 100px" name="price[]" id="product_rate_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value="' . ($items['rate'] ? $items['rate'] : "") . '"  tabindex="6" readonly/>
                                </td>

                                <td class="text-center">
                                    <input type="text" style="width: 100px" name="discount[]" id="discount_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" class="form-control text-right store_cal_1"  placeholder="0.00" value="' . ($items['discount'] ? $items['discount'] : "") . '" tabindex="6" readonly/>
                                </td> 
                                
                                <td class="text-center">
                                    <input type="text" style="width: 100px" name="additional_cost[]" id="additional_cost_' . $count . '" onkeyup="add_pur_calc_store(' . $count . ');" onchange="add_pur_calc_store(' . $count . ');" class="form-control text-right store_cal_1"  placeholder="0.00" value="' . ($items['additional_cost'] ? $items['additional_cost'] : "") . '" tabindex="6" readonly/>
                                </td>



                                <td class="text-right">
                                    <input type="text" style="width: 100px" class="form-control row_total text-right" name="row_total[]" value="' . ($items['total_amount'] ? $items['total_amount'] : "") . '" id = "row_total_' . $count . '" class="row_total" readonly>
                                </td>





                        </tr>
                        ';
        }
        $op .= '
            </tbody>
         <tfoot>
                                    <tr>

                                        <td class="text-right" colspan="10"><b>Total:</b></td>
                                        <td class="text-right" >
                                            <input type="text" style="width: 100px"  id="total" class="text-right form-control" name="total" value="' . ($grand_total ? $grand_total : "") . '" readonly= />

                                        </td>
                                    </tr>

                                    <tr>

                                        <td class="text-right" colspan="10"><b>Total Discount (If any):</b></td>
                                        <td class="text-right" >
                                            <input type="text" style="width: 100px"  onkeyup="calculate_total()" onchange="calculate_total()" id="total_dis" class="text-right form-control" name="total_dis" value="0.00"/>
                                        </td>

                                    </tr>

                                    <tr>

                                        <td class="text-right" colspan="10"><b>Other Charges (If any):</b></td>
                                        <td class="text-right" >
                                            <input type="text" style="width: 100px"  onkeyup="calculate_total()" onchange="calculate_total()" id="total_charge" class="text-right form-control" name="total_charge" value="0.00"/>
                                        </td>

                                    </tr>

                                    <tr>

                                        <td class="text-right" colspan="10"><b>Grand Total</b></td>
                                        <td class="text-right" >
                                            <input type="text" style="width: 100px"  onkeyup="calculate_total()" onchange="calculate_total()" id="grand_total" class="text-right form-control" name="grand_total" value="' . ($grand_total ? $grand_total : "0") . '" />
                                        </td>

                                    </tr>
                                    
                                       <tr>
                                        <td class="text-right" colspan="10"><b>Pay Amount:</b></td>
                                       <td class="text-right" >
                                            <input type="text" style="width: 100px"  id="pay_amount" onkeyup="calculate_total()" onchange="calculate_total()" class="text-right form-control"  name="old_paid_amount" value="0" placeholder="0.00"/>
                                            <input type="hidden" style="width: 100px"  id="old_paid" onkeyup="calculate_total()" onchange="calculate_total()" class="text-right form-control"  name="" value="' . ($paid_amount ? $paid_amount : "0") . '" />
                                        </td>

                                    </tr>

                                    <tr>
                                        <td class="text-right" colspan="10"><b>Paid Amount:</b></td>
                                           <td class="text-right" >
                                            <input type="text" style="width: 100px"  id="paidAmount" onkeyup="calculate_total()" onchange="calculate_total()" class="text-right form-control"  name="paid_amount" value="' . ($paid_amount ? $paid_amount : "0") . '" readonly/>
                                        </td>
                                      

                                    </tr>

                                    <tr>

                                        <td class="text-right" colspan="10"><b>Due Amount:</b></td>
                                        <td class="text-right">
                                            <input type="text" style="width: 100px"  id="dueAmmount" class="text-right form-control" name="due_amount" value="' . ($due_amount ? $due_amount : "") . '"  readonly="readonly" />
                                        </td>



                                    </tr>

                                    <tr>
                                        <td align="center">
                                            <input type="button" id="full_paid_tab" class="btn btn-warning" value="Full Paid" tabindex="16" onClick="full_paid()"/>
                                        </td>
                                    </tr>
                                </tfoot>
        </table>
                            ';



        echo $op;
    }



    public function add_product()
    {
        $this->load->model("Products");
        $product_id = $_POST["product_id"];
        $po_id = $_POST["po_id"];

        $pr_data = $this->Products->retrieve_product_full_data($product_id);

        $data = array(
            'purchase_detail_id' => $this->Purchases->generator(15),
            'purchase_id' => $po_id,
            'product_id' => $product_id,
            'quantity'   => 0,
            'qty'        => 0,
            'isAprv'     => 3,
            // 'sku'        => $pr_data[0]['sku']
        );

        // var_dump($data); exit();

        // $this->db->where('purchase_id', $po_id);
        $this->db->insert('product_purchase_details', $data);
    }

    public function save_purchase()
    {

        $pur_date = $this->input->post('purchase_date', TRUE);

        $order_quantity = $this->input->post('order_quantity', TRUE);
        $product_id = $this->input->post('product_id', TRUE);
        $supplier_id = $this->input->post('supplier_drop', TRUE);
        $warrenty_date = $this->input->post('warrenty_date', TRUE);
        $price = $this->input->post('price', TRUE);
        $discount = $this->input->post('discount', TRUE);
        $additional_cost = $this->input->post('additional_cost', TRUE);
        $per_item_total = $this->input->post('row_total', TRUE);
        $chalan_no = $this->input->post('c_b_no', TRUE);
        $id = $this->input->post('sl_id', TRUE);


        $grand_total = $this->input->post('total', TRUE);
        $po_id = $this->input->post('pur_order_no', TRUE);





        $this->db->where('purchase_id', $po_id);
        $this->db->set(array('grand_total_amount' => $grand_total, 'purchase_date' => $pur_date));
        $this->db->update('product_purchase');

        // echo '<pre>'; print_r($_FILES['c_b_img']);exit();

        $image = array();
        for ($i = 0; $i < count($id); $i++) {
            $image[$i]['url'] = null;
        }


        $image_url = array();

        $this->load->library('upload');

        $ImageCount = count($_FILES['c_b_img']['name']);
        for ($i = 0; $i < $ImageCount; $i++) {
            $_FILES['file']['name']       = $_FILES['c_b_img']['name'][$i];
            $_FILES['file']['type']       = $_FILES['c_b_img']['type'][$i];
            $_FILES['file']['tmp_name']   = $_FILES['c_b_img']['tmp_name'][$i];
            $_FILES['file']['error']      = $_FILES['c_b_img']['error'][$i];
            $_FILES['file']['size']       = $_FILES['c_b_img']['size'][$i];

            // File upload configuration
            $uploadPath = 'my-assets/image/chalan/';
            $config['upload_path'] = $uploadPath;
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['encrypt_name']  = TRUE;

            // Load and initialize upload library
            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            // Upload file to server
            if ($this->upload->do_upload('file')) {
                // Uploaded file data
                $imageData = $this->upload->data();
                $uploadImgData[$i]['image'] = $config['upload_path'] . $imageData['file_name'];
                $image_url = base_url() . $uploadImgData[$i]['image'];
                $image[$i]['url'] = $image_url;
            }

            // echo '<pre>';print_r( $uploadImgData[$i]['image']);exit();
        }

        $bill_no = $this->input->post('bill_no', TRUE);



        if (!empty($bill_no)) {
            foreach ($bill_no as $key => $value) {

                $data['bill_no'] = $value;
                $data['po_order'] = $po_id;
                $data['bill_image'] = $image_url;


                //   echo '<pre>';print_r($image_url);exit();
                // $this->ProductModel->add_products($data);
                if (!empty($data)) {
                    $this->db->insert('bill_details', $data);
                }
            }
        }



        for ($i = 0; $i < count($id); $i++) {
            $data = array(
                'qty'   => $order_quantity[$i],
                'supplier_id'   => $supplier_id[$i],
                'warrenty_date'   => $warrenty_date[$i],
                'rate'   => $price[$i],
                'discount'   => $discount[$i],
                'additional_cost'   => $additional_cost[$i],
                'total_amount'   => $per_item_total[$i],
                'chalan_id'   => $chalan_no[$i],
                //  'chalan_img'    => $image[$i]['url'],
                'isAprv'      => 1
            );

            // echo '<pre>'; print_r($data);

            $this->db->where('id', $id[$i]);
            $this->db->where('purchase_id', $po_id);
            $this->db->update('product_purchase_details', $data);

            $data_price = array (
                'product_id'    => $product_id[$i],
                'supplier_id'   => $supplier_id[$i],
                'update_price' => $price[$i],
                'date' => date('Y:m:d'),
                'time' =>  date('h:i:sa'),
                'status'        => 1
            );

            $this->db->insert('supplier_product_price', $data_price);

            $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id[$i])->get()->row();
            $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
            $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
            $receive_by=$this->session->userdata('user_id');
            $receive_date=date('Y-m-d');
            $createdate=date('Y-m-d H:i:s');


            ///Inventory Debit
            $coscr = array(
                'VNo'            =>  $chalan_no[$i],
                'Vtype'          =>  'Purchase',
                'VDate'          =>  $this->input->post('purchase_date',TRUE),
                'COAID'          =>  10107,
                'Narration'      =>  'Inventory Debit For Supplier '.$supinfo->supplier_name,
                'Debit'          =>  $per_item_total[$i],
                'Credit'         =>  0,//purchase price asbe
                'IsPosted'       => 1,
                'CreateBy'       => $receive_by,
                'CreateDate'     => $createdate,
                'IsAppove'       => 1
            );

            $purchasecoatran = array(
                'VNo'            =>  $chalan_no[$i],
                'Vtype'          =>  'Purchase',
                'VDate'          =>  date('Y:m:d'),
                'COAID'          =>  $sup_coa->HeadCode,
                'Narration'      =>  'Supplier -'.$supinfo->supplier_name,
                'Debit'          =>  0,
                'Credit'         => $per_item_total[$i],
                'IsPosted'       =>  1,
                'CreateBy'       =>  $receive_by,
                'CreateDate'     =>  $receive_date,
                'IsAppove'       =>  1
            );

            $expense = array(
                'VNo'            => $chalan_no[$i],
                'Vtype'          => 'Purchase',
                'VDate'          => date('Y:m:d'),
                'COAID'          => 402,
                'Narration'      => 'Company Debit For Supplier'.$supinfo->supplier_name,
                'Debit'          => $per_item_total[$i],
                'Credit'         => 0,//purchase price asbe
                'IsPosted'       => 1,
                'CreateBy'       => $receive_by,
                'CreateDate'     => $createdate,
                'IsAppove'       => 1
            );
            $this->db->insert('acc_transaction',$coscr);
            $this->db->insert('acc_transaction',$purchasecoatran);
            $this->db->insert('acc_transaction',$expense);

        }

        redirect('Cpurchase/add_purchase/');
    }


    public function erp_entry()
    {

        //    $pur_date = $this->input->post('purchase_date', TRUE);
        $po_id = $this->input->post('pur_order_no', TRUE);
        $product_id = $this->input->post('product_id', TRUE);
        $quantity = $this->input->post('quantity', TRUE);
        $supplier_id = $this->input->post('supplier_drop', TRUE);
        $received = $this->input->post('received', TRUE);
        $return = $this->input->post('return', TRUE);
        $remarks = $this->input->post('remarks', TRUE);
        $bil_no = $this->input->post('bill_no', TRUE);
        $aisle_no = $this->input->post('aisle_no', TRUE);
        $shelf_no = $this->input->post('shelf_no', TRUE);
        $bin_no = $this->input->post('bin_no', TRUE);
        $price = $this->input->post('price', TRUE);






        $id = $this->input->post('sl_id', TRUE);







        // echo '<pre>'; print_r($_FILES['c_b_img']);exit();

        $image = array();
        for ($i = 0; $i < count($id); $i++) {
            $image[$i]['url'] = null;
        }


        $image_url = array();

        $this->load->library('upload');

        $ImageCount = count($_FILES['c_b_img']['name']);
        for ($i = 0; $i < $ImageCount; $i++) {
            $_FILES['file']['name']       = $_FILES['c_b_img']['name'][$i];
            $_FILES['file']['type']       = $_FILES['c_b_img']['type'][$i];
            $_FILES['file']['tmp_name']   = $_FILES['c_b_img']['tmp_name'][$i];
            $_FILES['file']['error']      = $_FILES['c_b_img']['error'][$i];
            $_FILES['file']['size']       = $_FILES['c_b_img']['size'][$i];

            // File upload configuration
            $uploadPath = 'my-assets/image/chalan/';
            $config['upload_path'] = $uploadPath;
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['encrypt_name']  = TRUE;

            // Load and initialize upload library
            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            // Upload file to server
            if ($this->upload->do_upload('file')) {
                // Uploaded file data
                $imageData = $this->upload->data();
                $uploadImgData[$i]['image'] = $config['upload_path'] . $imageData['file_name'];
                $image_url = base_url() . $uploadImgData[$i]['image'];
                $image[$i]['url'] = $image_url;
            }

            // echo '<pre>';print_r( $uploadImgData[$i]['image']);exit();
        }



        for ($i = 0; $i < count($id); $i++) {
            $data = array(
                'po_order'   => $po_id,
                'product_id'   => $product_id[$i],
                'quantity'   => $quantity[$i],
                'unit_price'   => $price[$i],
                'supplier_id'   => $supplier_id[$i],
                'received_status'   => $received[$i],
                'return_qty'   => $return[$i],
                'remarks'   => $remarks[$i],
                'bill_no'   => $bil_no[$i],
                'bill_image'    => $image[$i]['url'],
                'aisle_no'   => $aisle_no[$i],
                'shelf_no'   => $shelf_no[$i],
                'bin_no'   => $bin_no[$i],
                'date'      => date('Y-m-d'),
                'isAprv'      => 1
            );

              // echo '<pre>'; print_r($data);exit();


            $this->db->insert('erp_entry_details', $data);
        }

        redirect('Cpurchase/product_receive_form_three/');
    }

    public function remove_from_list()
    {

        $CI = &get_instance();
        $CI->load->model('Purchases');

        $row_id = $_POST["row_id"];


        $this->db->where('id', $row_id);
        $this->db->delete('product_purchase_details');

        return $this->get_purchase_details();
    }

    public function update_changed()
    {
        $data = array(
            'total_amount' => $this->input->post('total', TRUE),
            'qty' => $this->input->post('order_qty', TRUE),
            'rate' => $this->input->post('rate', TRUE),
            'discount' => $this->input->post('discount', TRUE),
            'additional_cost' => $this->input->post('add_cost', TRUE),
            'supplier_id' => $this->input->post('supp_id', TRUE),
            'warrenty_date' => $this->input->post('warr_date', TRUE),
            'chalan_id' => $this->input->post('cb_no', TRUE),
        );

        $this->db->where('id', $this->input->post('id', TRUE));
        $this->db->update('product_purchase_details', $data);
    }
}
