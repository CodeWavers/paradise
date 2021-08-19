<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Crqsn extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('lrqsn');
        $this->load->library('session');
        $this->load->model('Rqsn');
        $this->auth->check_admin_auth();
    }

    //Default loading for service system.
    public function index() {
        $content = $this->lrqsn->rqsn_add_form();
        $this->template->full_admin_html_view($content);
    }



      public function rqsn_form() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');
        $content = $CI->lrqsn->rqsn_add_form();
        $this->template->full_admin_html_view($content);
    }


      public function rqsn_update_form() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');
        $content = $CI->lrqsn->rqsn_add_form();
        $this->template->full_admin_html_view($content);
    }

      public function cw_purchase() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');
        $content = $CI->lrqsn->purchase_rqsn_form();
        $this->template->full_admin_html_view($content);
    }

    public function insert_rqsn(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Rqsn');

        $rqsn = $CI->Rqsn->rqsn_entry();




     //   echo "ok";exit();

        if ($rqsn == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

            redirect(base_url('Crqsn/rqsn_form'));

        } else {
            $this->session->set_userdata(array('error_message' => display('please_try_again')));
            redirect(base_url('Crqsn/rqsn_form'));
        }


}

    public function update_rqsn(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Rqsn');

        $rqsn = $CI->Rqsn->rqsn_update();
        $this->db->empty_table('rqsn_cart');



     //   echo "ok";exit();

        if ($rqsn == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

            redirect(base_url('Crqsn/aprove_rqsn_edit'));

        } else {
            $this->session->set_userdata(array('error_message' => display('please_try_again')));
            redirect(base_url('Crqsn/aprove_rqsn_edit'));
        }


}

    public function insert_rqsn_cw(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Rqsn');

        $rqsn = $CI->Rqsn->rqsn_entry_cw();



     //   echo "ok";exit();

        if ($rqsn == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

            redirect(base_url('Crqsn/cw_purchase'));

        } else {
            $this->session->set_userdata(array('error_message' => display('please_try_again')));
            redirect(base_url('Crqsn/cw_purchase'));
        }


}

    //Aprove voucher
    public function aprove_rqsn(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
    //     $CI->load->model('Reports');
    //     $data['title'] = 'Approve Requisition';
    //     $data['t'] = $this->Rqsn->approve_rqsn();
    //     //$data['t'] = $this->Reports->getCheckList_rqsn();
    //    // $data = $this->Reports->getCheckLi st_rqsn();


      //  echo '<pre>';print_r($data);exit();
        $content = $this->lrqsn->approve_rqsn_new();
        $this->template->full_admin_html_view($content);
    }

    public function rqsn_draft(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $CI->load->model('Reports');
        $data['title'] = 'Requisition Draft';
        $data['t'] = $this->Rqsn->rqsn_draft();
        //$data['t'] = $this->Reports->getCheckList_rqsn();
       // $data = $this->Reports->getCheckLi st_rqsn();


      //  echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_draft', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function aprove_rqsn_outlet(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $CI->load->model('Reports');
        $data['title'] = 'Approve Requisition';
        $data['t'] = $this->Rqsn->approve_rqsn_outlet();
        //$data['t'] = $this->Reports->getCheckList_rqsn();
       // $data = $this->Reports->getCheckLi st_rqsn();


      //  echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/outlet_rqsn_approve', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function aprove_chalan(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $data['title'] = 'Chalan Approve';
        $data['aprrove'] = $this->Rqsn->approve_chalan();

       // echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/approve_chalan', $data, true);
        $this->template->full_admin_html_view($content);
    }


    public function rqsn_list(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $data['title'] = 'Requisition List';
        $data['aprrove'] = $this->Rqsn->rqsn_list();

       //echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_list', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function rqsn_list_outlet(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $data['title'] = 'Stock Transferred Outlet';
        $data['aprrove'] = $this->Rqsn->rqsn_list_outlet();

       //echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_list_outlet', $data, true);
        $this->template->full_admin_html_view($content);
    }



    public function aprove_rqsn_purchase(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $data['title'] = 'Approve Requisition CW';
        $data['aprrove'] = $this->Rqsn->approve_rqsn_purchase();

        //echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_approve_purchase', $data, true);
        $this->template->full_admin_html_view($content);
    }



    public function outlet_approve(){
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $data['title'] = 'Outlet Approve';
        $data['t'] = $this->Rqsn->approve_outlet();

     //echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_approve_outlet', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function isactive($id = null, $action = null,$value=null)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $action = ($action=='active'?2:1);
        $postData = array(
            'rqsn_detail_id'     => $id,
            'a_qty'=>$value,
            'status' => $action,
            'isaprv' =>1,
            'iscw' =>1
        );

//        print_r($postData);
//        die();

       // echo '<script>alert("Welcome to Geeks for Geeks")</script>';

        if ($this->Rqsn->approved($postData)) {
            $this->session->set_flashdata('message', display('successfully_approved'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);
    }
    public function ischalan($id = null, $action = null,$value=null)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $action = ($action=='active'?1:2);
        $expiry_date=date('Y-m-d',strtotime(' +7 day'));
        $postData = array(
            'chalan_id'     => $id,
            'barcode'=>$value,
            'expired_date'=>$expiry_date,
            'status' => $action
        );

//        print_r($postData);
//        die();

       // echo '<script>alert("Welcome to Geeks for Geeks")</script>';

        if ($this->Rqsn->chalan_received($postData)) {
            $this->session->set_flashdata('message', display('successfully_approved'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);
    }
    public function isapporve_purchase($id = null, $action = null,$value=null)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $action = ($action=='active'?4:1);
        $postData = array(
            'rqsn_detail_id'     => $id,
            'a_qty'=>$value,
            'status' => $action
        );

//        print_r($postData);
//        die();

       // echo '<script>alert("Welcome to Geeks for Geeks")</script>';

        if ($this->Rqsn->approved($postData)) {
            $this->session->set_flashdata('message', display('successfully_approved'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);
    }

    public function rqsn_delete($rqsn_id){
        if ($this->Rqsn->delete_rqsn($rqsn_id)) {
            $this->session->set_flashdata('message', display('successfully_delete'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);

    }


    public function r_rqsn_delete($rqsn_id){
        if ($this->Rqsn->r_delete_rqsn($rqsn_id)) {
            $this->session->set_flashdata('message', display('successfully_delete'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);

    }


    public function isreceive($id = null, $action = null)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $action = ($action=='active'?3:2);
        $postData = array(
            'rqsn_detail_id'     => $id,
            'status' => $action,
            'isrcv' =>1
        );

//        print_r($postData);
//        die();

        // echo '<script>alert("Welcome to Geeks for Geeks")</script>';

        if ($this->Rqsn->received($postData)) {
            $this->session->set_flashdata('message', display('successfully_approved'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);
    }

    public function outlet_rqsn_delete($rqsn_id){
        if ($this->Rqsn->delete_rqsn($rqsn_id)) {
            $this->session->set_flashdata('message', display('successfully_delete'));
        } else {
            $this->session->set_flashdata('error_message', display('please_try_again'));
        }

        redirect($_SERVER['HTTP_REFERER']);


    }
    public function stock(){

     //   echo 'Okay';die();

        $content = $this->lrqsn->stock_report_outlet_item();
       // echo 'Okay';die();
        $this->template->full_admin_html_view($content);
    }

    public function outlet_stock(){
        $this->load->model('Rqsn');
        $postData = $this->input->post();
        $data = $this->Rqsn->outlet_stock($postData);
        echo json_encode($data);
    }

    public function add_rqsn_form()
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Products');


        $all_product = $this->Products->all_product();



        if (!empty($all_product)) {
            $i = 0;
            foreach ($all_product as $k => $v) {
                $i++;
                $all_product[$k]['sl'] = $i;
            }
        }

        $data['title']          = 'Add Requisition';
        $data['all_product']    = $all_product;

        // echo '<pre>'; print_r($data); exit();

        $content                = $this->parser->parse('rqsn/rqsn_add_form', $data, true);

        $this->template->full_admin_html_view($content);
    }

    public function aprove_rqsn_edit()
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');

        $content = $this->lrqsn->approve_rqsn_edit();
        $this->template->full_admin_html_view($content);
    }

    public function aprove_rqsn_edit_price()
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');

        $content = $this->lrqsn->approve_rqsn_edit_price();
        $this->template->full_admin_html_view($content);
    }

    public function edit_approve_rqsn($rqsn_id)
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');

        $content = $this->lrqsn->edit_approve_rqsn($rqsn_id);
        $this->template->full_admin_html_view($content);
    }


    public function edit_approve_rqsn_price($rqsn_id)
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');


        $content = $this->lrqsn->edit_approve_rqsn_price($rqsn_id);
        $this->template->full_admin_html_view($content);
    }

    public function approve_rqsn_final($rqsn_id)
    {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lrqsn');

        $content = $this->lrqsn->approve_rqsn_final($rqsn_id);
        $this->template->full_admin_html_view($content);

    }

    public function update_rqsn_final(){
        $CI = & get_instance();

        //echo "Ok";exit();

        $CI->auth->check_admin_auth();
        $CI->load->model('Rqsn');

        $rqsn_id = $this->input->post("rqsn_id", true);

        $rqsn = $CI->Rqsn->rqsn_update_final($rqsn_id);





     //   echo "ok";exit();

     redirect(base_url('Crqsn/rqsn_print_cw/'.$rqsn_id));


    }

    public function autosearch()
    {
        $CI =& get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $product_name   = $this->input->post('product_name',TRUE);
        $category_id   = $this->input->post('cat_id',TRUE);
        $brand_id   = $this->input->post('brand_id',TRUE);
        $model_id   = $this->input->post('model_id',TRUE);


        $subcat_id   = $this->input->post('subcat_id',TRUE);
        $product_info   = $CI->Rqsn->autocompletproductdata($product_name, $category_id, $subcat_id, $brand_id, $model_id);

        if(!empty($product_info)){
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array(
                    'label'=>$value['product_name'].' ('.$value['brand_name'].') ('.$value['sku'].') ('.$value['parts'].')',
                    'value'=>$value['product_id']
                );
            }
        }else{
            $json_product[] = 'No Product Found';
        }
        echo json_encode($json_product);
    }

    public function rqsn_print($rqsn_id)
    {
        $CI =& get_instance();
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $taxfield = $CI->db->select('*')
                ->from('tax_settings')
                ->where('is_show',1)
                ->get()
                ->result_array();
        $txregname ='';
        foreach($taxfield as $txrgname){
        $regname = $txrgname['tax_name'].' Reg No  - '.$txrgname['reg_no'].', ';
        $txregname .= $regname;
        }
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $isunit = 0;
        if (!empty($invoice_detail)) {
            foreach ($invoice_detail as $k => $v) {
                $invoice_detail[$k]['final_date'] = $CI->occational->dateConvert($invoice_detail[$k]['date']);
                $subTotal_quantity = $subTotal_quantity + $invoice_detail[$k]['quantity'];
                $subTotal_ammount = $subTotal_ammount + $invoice_detail[$k]['total_price'];
            }

            $i = 0;
            foreach ($invoice_detail as $k => $v) {
                $i++;
                $invoice_detail[$k]['sl'] = $i;
                  if(!empty($invoice_detail[$k]['description'])){
                    $descript = $descript+1;

                }
                 if(!empty($invoice_detail[$k]['serial_no'])){
                    $isserial = $isserial+1;

                }
                 if(!empty($invoice_detail[$k]['unit'])){
                    $isunit = $isunit+1;

                }

            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();


        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id_price($rqsn_id);

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'Approve Requisition',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,

        'subTotal_quantity' => $subTotal_quantity,

        'company_info'      => $company_info,
        'currency'          => $currency_details[0]['currency'],
        'position'          => $currency_details[0]['currency_position'],
        'discount_type'     => $currency_details[0]['discount_type'],
        'tax_regno'         => $txregname,
        'is_desc'           => $descript,
        'is_serial'         => $isserial,
        'is_unit'           => $isunit,
        );

        // echo '<pre>';print_r($data);exit();

        $content =  $CI->parser->parse('rqsn/rqsn_list_print', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function rqsn_printnp($rqsn_id)
    {
        $CI =& get_instance();
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $taxfield = $CI->db->select('*')
                ->from('tax_settings')
                ->where('is_show',1)
                ->get()
                ->result_array();
        $txregname ='';
        foreach($taxfield as $txrgname){
        $regname = $txrgname['tax_name'].' Reg No  - '.$txrgname['reg_no'].', ';
        $txregname .= $regname;
        }
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $isunit = 0;
        if (!empty($invoice_detail)) {
            foreach ($invoice_detail as $k => $v) {
                $invoice_detail[$k]['final_date'] = $CI->occational->dateConvert($invoice_detail[$k]['date']);
                $subTotal_quantity = $subTotal_quantity + $invoice_detail[$k]['quantity'];
                $subTotal_ammount = $subTotal_ammount + $invoice_detail[$k]['total_price'];
            }

            $i = 0;
            foreach ($invoice_detail as $k => $v) {
                $i++;
                $invoice_detail[$k]['sl'] = $i;
                  if(!empty($invoice_detail[$k]['description'])){
                    $descript = $descript+1;

                }
                 if(!empty($invoice_detail[$k]['serial_no'])){
                    $isserial = $isserial+1;

                }
                 if(!empty($invoice_detail[$k]['unit'])){
                    $isunit = $isunit+1;

                }

            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();


        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id_price($rqsn_id);

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'Approve Requisition',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,

        'subTotal_quantity' => $subTotal_quantity,

        'company_info'      => $company_info,
        'currency'          => $currency_details[0]['currency'],
        'position'          => $currency_details[0]['currency_position'],
        'discount_type'     => $currency_details[0]['discount_type'],
        'tax_regno'         => $txregname,
        'is_desc'           => $descript,
        'is_serial'         => $isserial,
        'is_unit'           => $isunit,
        );

        $content =  $CI->parser->parse('rqsn/rqsn_list_printnp', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function rqsn_print_cw($rqsn_id)
    {
        $CI =& get_instance();
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $taxfield = $CI->db->select('*')
                ->from('tax_settings')
                ->where('is_show',1)
                ->get()
                ->result_array();
        $txregname ='';
        foreach($taxfield as $txrgname){
        $regname = $txrgname['tax_name'].' Reg No  - '.$txrgname['reg_no'].', ';
        $txregname .= $regname;
        }
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $isunit = 0;
        if (!empty($invoice_detail)) {
            foreach ($invoice_detail as $k => $v) {
                $invoice_detail[$k]['final_date'] = $CI->occational->dateConvert($invoice_detail[$k]['date']);
                $subTotal_quantity = $subTotal_quantity + $invoice_detail[$k]['quantity'];
                $subTotal_ammount = $subTotal_ammount + $invoice_detail[$k]['total_price'];
            }

            $i = 0;
            foreach ($invoice_detail as $k => $v) {
                $i++;
                $invoice_detail[$k]['sl'] = $i;
                  if(!empty($invoice_detail[$k]['description'])){
                    $descript = $descript+1;

                }
                 if(!empty($invoice_detail[$k]['serial_no'])){
                    $isserial = $isserial+1;

                }
                 if(!empty($invoice_detail[$k]['unit'])){
                    $isunit = $isunit+1;

                }

            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();


        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id_price($rqsn_id);

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'Approve Requisition',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,

        'subTotal_quantity' => $subTotal_quantity,

        'company_info'      => $company_info,
        'currency'          => $currency_details[0]['currency'],
        'position'          => $currency_details[0]['currency_position'],
        'discount_type'     => $currency_details[0]['discount_type'],
        'tax_regno'         => $txregname,
        'is_desc'           => $descript,
        'is_serial'         => $isserial,
        'is_unit'           => $isunit,
        );

        // echo '<pre>';print_r($data);exit();

        $content =  $CI->parser->parse('rqsn/rqsn_list_print_cw', $data, true);
        $this->template->full_admin_html_view($content);
    }
}
