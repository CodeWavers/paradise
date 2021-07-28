<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cmodel extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lmodel');
        $this->load->library('session');
        $this->load->model('Models');
        $this->auth->check_admin_auth();
    }

    //Default loading for Category system.
    public function index() {
        $content = $this->lmodel->model_add_form();
        $this->template->full_admin_html_view($content);
    }

    //Manage category form
    public function manage_model() {
        $content = $this->lmodel->model_list();
        $this->template->full_admin_html_view($content);

    }

    // //Insert category and upload
    public function insert_model() {
        $model_id = $this->auth->generator(15);

        $data = array(
            'model_id'   => $model_id,
            'model_name' => $this->input->post('model_name',TRUE),
            'status'        => 1
        );

        $result = $this->Models->model_entry($data);

        if ($result == TRUE) {
            $this->session->set_userdata(array('message' => display('successfully_added')));

                redirect(base_url('Cmodel'));

        } else {
            $this->session->set_userdata(array('error_message' => display('already_inserted')));
            redirect(base_url('Cmodel'));
        }
    }

    // //Category Update Form
    public function model_update_form($model_id) {
        $content = $this->lmodel->model_edit_data($model_id);
        $this->template->full_admin_html_view($content);
    }

    // // Category Update
    public function model_update() {
        $this->load->model('Models');
        $model_id = $this->input->post('model_id',TRUE);
        $data = array(
            'model_name' => $this->input->post('model_name',TRUE),
            'status'        => 1,
        );

        $this->Models->update_model($data, $model_id);
        $this->session->set_userdata(array('message' => display('successfully_updated')));
        redirect(base_url('Cmodel'));
    }

    // // Category delete
    public function model_delete($model_id) {
        $this->load->model('Models');
        $this->Models->delete_model($model_id);
        $this->session->set_userdata(array('message' => display('successfully_delete')));
         redirect(base_url('Cmodel'));
    }
    // //csv upload
    //     function uploadCsv_category()
    // {
    //       $filename = $_FILES['upload_csv_file']['name'];
    //     $ext = end(explode('.', $filename));
    //     $ext = substr(strrchr($filename, '.'), 1);
    //     if($ext == 'csv'){
    //     $count=0;
    //     $fp = fopen($_FILES['upload_csv_file']['tmp_name'],'r') or die("can't open file");

    //     if (($handle = fopen($_FILES['upload_csv_file']['tmp_name'], 'r')) !== FALSE)
    //     {

    //      while($csv_line = fgetcsv($fp,1024)){
    //             //keep this if condition if you want to remove the first row
    //             for($i = 0, $j = count($csv_line); $i < $j; $i++)
    //             {
    //                $insert_csv = array();
    //                $insert_csv['category_name'] = (!empty($csv_line[0])?$csv_line[0]:null);
    //             }

    //             $categorydata = array(
    //                 'category_id'      => $this->auth->generator(15),
    //                 'category_name'    => $insert_csv['category_name'],
    //                 'status'           => 1
    //             );


    //             if ($count > 0) {
    //                 $this->db->insert('product_category',$categorydata);
    //                 }
    //             $count++;
    //         }

    //     }
    //     $this->session->set_userdata(array('message'=>display('successfully_added')));
    //     redirect(base_url('Ccategory'));
    //      }else{
    //     $this->session->set_userdata(array('error_message'=>'Please Import Only Csv File'));
    //     redirect(base_url('Ccategory'));
    // }

    // }
    // // category pdf download
    //     public function category_downloadpdf(){
    //     $CI = & get_instance();
    //     $CI->load->model('Categories');
    //     $CI->load->model('Web_settings');
    //     $CI->load->model('Invoices');
    //     $CI->load->library('pdfgenerator');
    //     $category_list = $CI->Categories->category_list();
    //     if (!empty($category_list)) {
    //         $i = 0;
    //         if (!empty($category_list)) {
    //             foreach ($category_list as $k => $v) {
    //                 $i++;
    //                 $category_list[$k]['sl'] = $i + $CI->uri->segment(3);
    //             }
    //         }
    //     }
    //     $currency_details = $CI->Web_settings->retrieve_setting_editdata();
    //     $company_info = $CI->Invoices->retrieve_company();
    //     $data = array(
    //         'title'         => display('manage_category'),
    //         'category_list' => $category_list,
    //         'currency'      => $currency_details[0]['currency'],
    //         'logo'          => $currency_details[0]['logo'],
    //         'position'      => $currency_details[0]['currency_position'],
    //          'company_info'  => $company_info
    //     );
    //         $this->load->helper('download');
    //         $content = $this->parser->parse('category/category_list_pdf', $data, true);
    //         $time = date('Ymdhi');
    //         $dompdf = new DOMPDF();
    //         $dompdf->load_html($content);
    //         $dompdf->render();
    //         $output = $dompdf->output();
    //         file_put_contents('assets/data/pdf/'.'category'.$time.'.pdf', $output);
    //         $file_path = 'assets/data/pdf/'.'category'.$time.'.pdf';
    //        $file_name = 'category'.$time.'.pdf';
    //         force_download(FCPATH.'assets/data/pdf/'.$file_name, null);
    // }

    // //sub category home
    // public function sub_category()
    // {
    //     $content = $this->lcategory->sub_cat_add_form();
    //     $this->template->full_admin_html_view($content);
    // }

    // //insert sub category
    // public function insert_sub_cat() {
    //     $sub_cat_id = $this->auth->generator(15);

    //     $data = array(
    //         'sub_cat_id'   => $sub_cat_id,
    //         'category_id'  => $this->input->post('category_name', TRUE),
    //         'subcat_name'  => $this->input->post('sub_cat_name',TRUE),
    //         'status'       => 1
    //     );

    //     $result = $this->Categories->sub_cat_entry($data);

    //     if ($result == TRUE) {
    //         $this->session->set_userdata(array('message' => display('successfully_added')));

    //             redirect(base_url('Ccategory/sub_category'));

    //     } else {
    //         $this->session->set_userdata(array('error_message' => display('already_inserted')));
    //         redirect(base_url('Ccategory/sub_category'));
    //     }
    // }
    // //delete sub category
    // public function sub_cat_delete($sub_cat_id) {
    //     $this->load->model('Categories');
    //     $this->Categories->delete_sub_cat($sub_cat_id);
    //     $this->session->set_userdata(array('message' => display('successfully_delete')));
    //     redirect(base_url('Ccategory/sub_category'));
    // }

    // public function sub_cat_update_form($sub_cat_id) {
    //     $content = $this->lcategory->sub_cat_edit_data($sub_cat_id);
    //     $this->template->full_admin_html_view($content);
    // }

    // public function sub_cat_update()
    // {
    //     $this->load->model('Categories');
    //     $sub_cat_id = $this->input->post('sub_cat_id',TRUE);
    //     $data = array(
    //         'subcat_name' => $this->input->post('sub_cat_name',TRUE),
    //         'category_id' => $this->input->post('category_name', TRUE)
    //     );

    //     $this->Categories->update_sub_cat($data, $sub_cat_id);
    //     $this->session->set_userdata(array('message' => display('successfully_updated')));
    //     redirect(base_url('Ccategory/sub_category'));
    // }
}
