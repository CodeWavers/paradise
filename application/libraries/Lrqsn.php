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
        $CI->load->model('Warehouse');
        $CI->load->model('Categories');
        $CI->load->model('Brands');
        $CI->load->model('Models');

        $outlet_list    = $CI->Warehouse->branch_list();
        $outlet_list_to    = $CI->Rqsn->outlet_list_to();
        $rqsn_no    = $CI->Rqsn->generate_rq_no();
        $customers = $CI->Customers->customer_list();
        $cw_list    = $CI->Rqsn->cw_list();

        $cat_list    = $CI->Categories->category_list();
        $subcat_list    = $CI->Categories->subcat_list();
        $brand_list    = $CI->Brands->category_list();
        $model_list    = $CI->Models->model_list();

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
            'rqsn_no'           => $rqsn_no,
            'cat_list'          => $cat_list,
            'subcat_list'       => $subcat_list,
            'brand_list'        => $brand_list,
            'model_list'        => $model_list,
            'discount_type'     => $currency_details[0]['discount_type'],
            'taxes'             => $taxfield,
            'customers'         => $customers,
        );

      // echo '<pre'; print_r($rqsn_no);exit();
    //    die();
        $invoiceForm = $CI->parser->parse('rqsn/rqsn_form', $data, true);
        return $invoiceForm;
    }

        public function draft_rqsn_add_form($rqsn_id) {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Web_settings');
        $CI->load->model('Customers');
        $CI->load->model('Warehouse');
        $CI->load->model('Categories');
        $CI->load->model('Brands');
        $CI->load->model('Models');

        $outlet_list    = $CI->Warehouse->branch_list();
        $outlet_list_to    = $CI->Rqsn->outlet_list_to();
        $rqsn_no    = $CI->Rqsn->generate_rq_no();
        $customers = $CI->Customers->customer_list();
        $cw_list    = $CI->Rqsn->cw_list();

        $cat_list    = $CI->Categories->category_list();
        $subcat_list    = $CI->Categories->subcat_list();
        $brand_list    = $CI->Brands->category_list();
        $model_list    = $CI->Models->model_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id($rqsn_id);


        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
                ->from('tax_settings')
                ->get()
                ->result_array();
        $data = array(
            'title'             => "Draft Requisition Form",
            'outlet_list'       => $outlet_list,
            'outlet_list_to'    => $outlet_list_to,
            'cw_list'           => $cw_list,
            'rqsn_no'           => $rqsn_no,
            'rqsn_id'           => $rqsn_id,
            'cat_list'          => $cat_list,
            'subcat_list'       => $subcat_list,
            'brand_list'        => $brand_list,
            'model_list'        => $model_list,
            'rqsn_details'        => $rqsn_details,
            'discount_type'     => $currency_details[0]['discount_type'],
            'taxes'             => $taxfield,
            'customers'         => $customers,
        );

            // echo '<pre'; print_r($rqsn_details);exit();
    //    die();
        $invoiceForm = $CI->parser->parse('rqsn/draft_rqsn_form', $data, true);
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

    public function approve_rqsn_edit()
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');

        $rqsn_details = $CI->Rqsn->rqsn_details_data();

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'             => 'Requisition List',
            'rqsn_details'      => $rqsn_details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('rqsn/rqsn_approve_edit', $data, true);

    }
    public function approve_rqsn_edit_price()
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');

        $rqsn_details = $CI->Rqsn->rqsn_details_data_price();

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'             => 'Requisition List',
            'rqsn_details'      => $rqsn_details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('rqsn/rqsn_approve_edit_price', $data, true);

    }


    public function edit_approve_rqsn($rqsn_id)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id($rqsn_id);

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
            'outlet_list'       => $outlet_list
        );

     //   echo '<pre>';print_r($rqsn_details);exit();

        return $CI->parser->parse('rqsn/rqsn_approve_update', $data, true);
    }
    public function edit_approve_rqsn_price($rqsn_id)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

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
            'rqsn_id'           => $rqsn_id
        );

     //   echo '<pre>';print_r($rqsn_details);exit();

        return $CI->parser->parse('rqsn/rqsn_approve_update_price', $data, true);
    }

    public function approve_rqsn_new()
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');

        $rqsn_details = $CI->Rqsn->rqsn_details_data();

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
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('rqsn/rqsn_approve_new', $data, true);

    }

    public function draft_rqsn()
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');

        $rqsn_details = $CI->Rqsn->draft_rqsn_details_data();

        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'             => 'Draft Requisition',
            'rqsn_details'      => $rqsn_details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('rqsn/draft_rqsn', $data, true);

    }

    public function approve_rqsn_final($rqsn_id)
    {
        $CI = & get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Warehouse');

        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Rqsn->rqsn_details_data_by_rqsn_id($rqsn_id);

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
            'outlet_list'       => $outlet_list
        );

     //   echo '<pre>';print_r($rqsn_details);exit();

        return $CI->parser->parse('rqsn/rqsn_approve_final', $data, true);
    }





}

?>