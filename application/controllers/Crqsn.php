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
        $CI->load->model('Reports');
        $data['title'] = 'Approve Requisition';
        $data['t'] = $this->Rqsn->approve_rqsn();
        //$data['t'] = $this->Reports->getCheckList_rqsn();
       // $data = $this->Reports->getCheckLi st_rqsn();


      //  echo '<pre>';print_r($data);exit();
        $content = $this->parser->parse('rqsn/rqsn_approve', $data, true);
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
}
