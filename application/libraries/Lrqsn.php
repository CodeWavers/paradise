<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lrqsn {



    public function stock_report_outlet_item()
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Web_settings');
        $CI->load->model('Reports');
        $outlet_list    = $CI->Rqsn->outlet_list();
        $cw_list    = $CI->Rqsn->cw_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $data = array(
            'title'         => "Requisition",
            'outlet_list' => $outlet_list,
            'cw_list' => $cw_list,
            'discount_type' => $currency_details[0]['discount_type'],
            'currency' => $currency_details[0]['currency'],
            'totalnumber'=> $CI->Reports->totalnumberof_product(),
          'taxes'         => $taxfield,
        );


//        echo print_r($data);
//        die();
        $invoiceForm = $CI->parser->parse('rqsn/outlet_stock', $data, true);
        return $invoiceForm;
    }

        public function rqsn_add_form() {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Web_settings');
        $CI->load->model('Customers');
        $outlet_list    = $CI->Rqsn->outlet_list();
        $outlet_list_to    = $CI->Rqsn->outlet_list_to();
        $customers = $CI->Customers->customer_list();
        $cw_list    = $CI->Rqsn->cw_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
                ->from('tax_settings')
                ->get()
                ->result_array();
        $data = array(
            'title'             => "Requisition",
            'outlet_list'       => $outlet_list,
            'outlet_list_to'    => $outlet_list_to,
            'cw_list'           => $cw_list,
            'discount_type'     => $currency_details[0]['discount_type'],
            'taxes'             => $taxfield,
            'customers'         => $customers,
        );

       // echo '<pre'; print_r($cw_list);exit();
    //    die();
        $invoiceForm = $CI->parser->parse('rqsn/rqsn_form', $data, true);
        return $invoiceForm;
    }

        public function purchase_rqsn_form() {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Web_settings');
        $outlet_list    = $CI->Rqsn->outlet_list();
        $cw_list    = $CI->Rqsn->cw_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
                ->from('tax_settings')
                ->get()
                ->result_array();
        $data = array(
            'title'         => "Central Warehouse Requisition",
            'outlet_list' => $outlet_list,
            'cw_list' => $cw_list,
            'discount_type' => $currency_details[0]['discount_type'],
            'taxes'         => $taxfield,
        );

       // echo '<pre'; print_r($cw_list);exit();
    //    die();
        $invoiceForm = $CI->parser->parse('rqsn/cw_purchase', $data, true);
        return $invoiceForm;
    }



}

?>