<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Creport extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $CI = & get_instance();
        $CI->load->model('Web_settings');
    }

    public function index()
    {
        $CI =& get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->stock_report_single_item();

        $this->template->full_admin_html_view($content);
    }

    public function stock_report()
    {
        $CI =& get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->stock_report_new();

        $this->template->full_admin_html_view($content);
    }

    public function filter_wise() {

        #
        #pagination ends
        #
        $CI =& get_instance();
        $CI->load->model('Reports');
        $CI->load->model('Categories');
        $CI->load->model('Brands');
        $CI->load->model('Models');

        $category_id = $this->input->post('category_id', true);
        $sub_cat_id = $this->input->post('sub_cat_id', true);
        $brand_id = $this->input->post('brand_id', true);
        $model_id = $this->input->post('model_id', true);
        $from_date = $this->input->post('from_date', true);
        $to_date = $this->input->post('to_date', true);

        $getList= $CI->Reports->getInventoryList_filter($category_id,$sub_cat_id,$brand_id,$model_id,$from_date,$to_date);


        $cat_list    = $CI->Categories->category_list();
        $subcat_list    = $CI->Categories->subcat_list();
        $brand_list    = $CI->Brands->category_list();
        $model_list    = $CI->Models->model_list();
        $data['title'] = 'stock';
        $company_info = $CI->Reports->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data['currency'] = $currency_details[0]['currency'];
        $data['totalnumber'] = $CI->Reports->totalnumberof_product();
        $data['getList'] = $getList;
        $data['cat_list'] = $cat_list;
        $data['subcat_list'] = $subcat_list;
        $data['brand_list'] = $brand_list;
        $data['model_list'] = $model_list;
        $data['company_info'] = $company_info;
       // echo '<pre>';print_r($all_product);exit();
        $reportList = $CI->parser->parse('report/stock_report_new', $data, true);
        $this->template->full_admin_html_view($reportList);
    }


    public function wastage_dec()
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lreport');
        $content = $CI->lreport->wastage_dec();
        $this->template->full_admin_html_view($content);
    }

    public function dead_dec()
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lreport');
        $content = $CI->lreport->dead_dec();
        $this->template->full_admin_html_view($content);
    }

    public function wastage_entry(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Reports');

        $result = $CI->Reports->wastage_entry();




        //   echo "ok";exit();

        if ($result == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

            redirect(base_url('Creport/wastage_dec'));

        } else {
            $this->session->set_userdata(array('error_message' => display('please_try_again')));
            redirect(base_url('Creport/wastage_dec'));
        }


    }

    public function dead_entry(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Reports');

        $result = $CI->Reports->dead_entry();




        //   echo "ok";exit();

        if ($result == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

            redirect(base_url('Creport/wastage_dec'));

        } else {
            $this->session->set_userdata(array('error_message' => display('please_try_again')));
            redirect(base_url('Creport/wastage_dec'));
        }


    }

    public function supplier_wise_stock()
    {
        $CI =& get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->stock_supplierwise();

        $this->template->full_admin_html_view($content);
    }


    public function CheckList(){
        // GET data
        $this->load->model('Reports');
        $postData = $this->input->post();
        $data = $this->Reports->getCheckList($postData);
        echo json_encode($data);
    }

    public function suppliestock(){
        $this->load->model('Reports');
        $postData = $this->input->post();
        $data = $this->Reports->getSupplierStockList($postData);
        echo json_encode($data);
    }

    public function out_of_stock() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->out_of_stock();

        $this->template->full_admin_html_view($content);
    }

    public function expired_stock() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->expired_stock();

        $this->template->full_admin_html_view($content);
    }

    public function product_price() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');
        $content = $CI->lreport->product_price();
        $this->template->full_admin_html_view($content);
    }


    public function product_price_date_wise() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');
        $start_date=$this->input->post('from_date',TRUE);
        $end_date=$this->input->post('to_date',TRUE);
        $content = $CI->lreport->product_price_date_wise($start_date,$end_date);
        $this->template->full_admin_html_view($content);
    }

    public function trash_hold() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->trash_hold();

        $this->template->full_admin_html_view($content);
    }

    public function birthday_noti() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');

        $content = $CI->lreport->birthday_noti();

        $this->template->full_admin_html_view($content);
    }

    //Stock report supplir report
    public function stock_report_product_wise() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');
        $CI->load->model('Reports');
        $today = date('Y-m-d');

        $product_id = $this->input->post('product_id',TRUE) ? $this->input->post('product_id',TRUE) : "";
        $supplier_id = $this->input->post('supplier_id',TRUE) ? $this->input->post('supplier_id',TRUE) : "";

        $date = $this->input->post('stock_date',TRUE) ? $this->input->post('stock_date',TRUE) : $today;
        $alldata = $this->input->post('all',TRUE);
        if(!empty($alldata)){
            $perpagdata = $this->Reports->product_counter_by_supplier($supplier_id);
        }else{
            $perpagdata = 50;
        }
        #
        #pagination starts
        #
        $config["base_url"] = base_url('Creport/stock_report_product_wise/');
        $config["total_rows"] = $this->Reports->product_counter_by_supplier($supplier_id);
        $config["per_page"] = $perpagdata;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;
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
        $content = $this->lreport->stock_report_supplier_wise($product_id, $supplier_id, $date, $links, $config["per_page"], $page);


        $this->template->full_admin_html_view($content);
    }

// date wise product report
    public function stock_date_to_date_product_wise() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');
        $CI->load->model('Reports');
        $today = date('Y-m-d');
        $from_date = $this->input->get('from_date');
        $to_date = $this->input->get('to_date');
        $alldata = $this->input->get('all');
        if(!empty($alldata)){
            $perpagdata = $this->Reports->product_counter_by_productdatetodate($from_date, $to_date);
        }else{
            $perpagdata = 50;
        }

        #exit;
        #pagination starts
        #
        $config["base_url"] = base_url('Creport/stock_date_to_date_product_wise/');
        $config["total_rows"] = $this->Reports->product_counter_by_productdatetodate($from_date, $to_date);
        $config["per_page"] = $perpagdata;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;
        $config['suffix'] = '?' . http_build_query($_GET, '', '&');
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
        $content = $this->lreport->stock_report_product_date_date_wise($from_date, $to_date, $links, $config["per_page"], $page);


        $this->template->full_admin_html_view($content);
    }

    //Stock report supplir report
    public function stock_report_supplier_wise() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lreport');
        $CI->load->model('Reports');
        $today = date('Y-m-d');

        $product_id = $this->input->post('product_id',TRUE) ? $this->input->post('product_id',TRUE) : "";
        $supplier_id = $this->input->post('supplier_id',TRUE) ? $this->input->post('supplier_id',TRUE) : "";
        $from_date = $this->input->post('from_date',TRUE);
        $to_date = $this->input->post('to_date',TRUE);
        $alldata = $this->input->post('all',TRUE);
        if(!empty($alldata)){
            $perpagdata = $this->Reports->stock_report_product_bydate_count($supplier_id, $from_date, $to_date);
        }else{
            $perpagdata = 50;
        }
        #
        #pagination starts
        #
        $config["base_url"] = base_url('Creport/stock_report_supplier_wise');
        $config["total_rows"] = $this->Reports->stock_report_product_bydate_count($supplier_id, $from_date, $to_date);

        $config["per_page"] = $perpagdata;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;
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
        $content = $this->lreport->stock_report_product_wise($supplier_id, $from_date, $to_date, $links, $config["per_page"], $page);

        $this->template->full_admin_html_view($content);
    }

    //Get product by supplier
    public function get_product_by_supplier() {
        $supplier_id = $this->input->post('supplier_id',TRUE);

        $product_info_by_supplier = $this->db->select('a.*,b.*')
            ->from('product_information a')
            ->join('supplier_product b', 'a.product_id=b.product_id')
            ->where('b.supplier_id', $supplier_id)
            ->get()
            ->result();

        if ($product_info_by_supplier) {
            echo "<select class=\"form-control\" id=\"supplier_id\" name=\"supplier_id\">
	                <option value=\"\">" . display('select_one') . "</option>";
            foreach ($product_info_by_supplier as $product) {
                echo "<option value='" . $product->product_id . "'>" . $product->product_name . '-(' . $product->product_model . ')' . " </option>";
            }
            echo " </select>";
        }
    }

    #===============Report paggination=============#

    public function pagination($per_page, $page) {
        $CI = & get_instance();
        $CI->load->model('Reports');
        $product_id = $this->input->post('product_id',TRUE);

        $config = array();
        $config["base_url"] = base_url() . $page;
        $config["total_rows"] = $this->Reports->product_counter($product_id);
        $config["per_page"] = $per_page;
        $config["uri_segment"] = 4;
        $config["num_links"] = 5;
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



        $this->pagination->initialize($config);

        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $limit = $config["per_page"];
        return $links = $this->pagination->create_links();
    }

    //pdf stock report
    public function stock_report_downloadpdf(){
        $CI = & get_instance();
        $CI->load->model('Reports');
        $CI->load->model('Web_settings');
        $CI->load->model('Invoices');
        $CI->load->library('pdfgenerator');
        $stok_report = $CI->Reports->stock_report_pdf();
        $sub_total_in = 0;
        $sub_total_out = 0;
        $sub_total_stock = 0;
        $sub_total_stokpurchase = 0;
        $sub_total_stoksale = 0;
        if (!empty($stok_report)) {
            $i = $page;
            foreach ($stok_report as $k => $v) {
                $i++;
                $stok_report[$k]['sl'] = $i;
            }

            foreach ($stok_report as $k => $v) {
                $i++;
                $stok_report[$k]['stok_quantity_cartoon'] = ($stok_report[$k]['totalPurchaseQnty'] - $stok_report[$k]['totalSalesQnty']);
                $stok_report[$k]['SubTotalOut'] = ($sub_total_out + $stok_report[$k]['totalSalesQnty']);
                $sub_total_out = $stok_report[$k]['SubTotalOut'];
                $stok_report[$k]['SubTotalIn'] = ($sub_total_in + $stok_report[$k]['totalPurchaseQnty']);
                $sub_total_in = $stok_report[$k]['SubTotalIn'];
                $stok_report[$k]['SubTotalStock'] = ($sub_total_stock + $stok_report[$k]['stok_quantity_cartoon']);
                $sub_total_stock = $stok_report[$k]['SubTotalStock'];

                $stok_report[$k]['total_sale_price'] = $stok_report[$k]['stok_quantity_cartoon'] * $stok_report[$k]['price'];

                $stok_report[$k]['sales_price'] = $stok_report[$k]['price'];

                $sub_total_stoksale += $stok_report[$k]['total_sale_price'];
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Reports->retrieve_company();
        $data = array(
            'title'            => display('stock_report'),
            'stok_report'      => $stok_report,
            'product_model'    => $stok_report[0]['product_model'],
            'date'             => $date,
            'sub_total_in'     => number_format($sub_total_in, 2, '.', ','),
            'sub_total_out'    => number_format($sub_total_out, 2, '.', ','),
            'sub_total_stock'  => number_format($sub_total_stock, 2, '.', ','),
            'company_info'     => $company_info,
            'stock_purchase'   => number_format($sub_total_stokpurchase, 2, '.', ','),
            'stock_sale'       => number_format($sub_total_stoksale, 2, '.', ','),
            'currency'         => $currency_details[0]['currency'],
            'position'         => $currency_details[0]['currency_position'],
            'software_info'    => $currency_details,
            'company'          => $company_info,
        );
        $this->load->helper('download');
        $content = $this->parser->parse('report/stock_report_pdf', $data, true);
        $time = date('Ymdhi');
        $dompdf = new DOMPDF();
        $dompdf->load_html($content);
        $dompdf->render();
        $output = $dompdf->output();
        file_put_contents('assets/data/pdf/'.'stock_report'.$time.'.pdf', $output);
        $file_path = 'assets/data/pdf/'.'stock_report'.$time.'.pdf';
        $file_name = 'stock_report'.$time.'.pdf';
        force_download(FCPATH.'assets/data/pdf/'.$file_name, null);
    }

    public function approval_report()
    {
        $CI = & get_instance();
        $CI->load->library('lreport');
        $content = $this->lreport->approval_report();
        $this->template->full_admin_html_view($content);
    }

}
