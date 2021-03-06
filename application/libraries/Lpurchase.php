<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lpurchase {

    //Purchase add form
    public function purchase_add_form() {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Categories');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $order_no = $CI->Purchases->generate_PO_no();
        $category_list = $CI->Categories->category_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $data = array(
            'title'         => 'Purchase Order',
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
            'order_no'      => $order_no,
            'category_list' => $category_list
        );
      //   echo '<pre>';print_r($order_no);die();
        $purchaseForm = $CI->parser->parse('purchase/add_purchase_form', $data, true);
        return $purchaseForm;
    }

    public function purchase_order_add_form() {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $data = array(
            'title'         => display('add_purchase'),
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
        );
        $purchaseForm = $CI->parser->parse('purchase/add_purchase_order_form', $data, true);
        return $purchaseForm;
    }

    public function product_receive_add_form() {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $data = array(
            'title'         => display('add_purchase'),
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
        );
        $purchaseForm = $CI->parser->parse('purchase/add_product_receive_form', $data, true);
        return $purchaseForm;
    }

    // Retrieve Purchase List
    public function purchase_list() {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Purchases->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'          => display('manage_purchase'),
            'company_info'   => $company_info,
            'currency'       => $currency_details[0]['currency'],
            'total_purhcase' => $CI->Purchases->count_purchase(),
        );

        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

    //purchase search by supplier
    public function purchase_search_supplier($supplier_id, $links, $per_page, $page) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $purchases_list = $CI->Purchases->purchase_search($supplier_id, $per_page, $page);
        if (!empty($purchases_list)) {
            $j = 0;
            foreach ($purchases_list as $k => $v) {
                $purchases_list[$k]['final_date'] = $CI->occational->dateConvert($purchases_list[$j]['purchase_date']);
                $j++;
            }

            $i = 0;
            foreach ($purchases_list as $k => $v) {
                $i++;
                $purchases_list[$k]['sl'] = $i + $CI->uri->segment(3);
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'          => display('manage_purchase'),
            'purchases_list' => $purchases_list,
            'links'          => $links,
            'currency'       => $currency_details[0]['currency'],
            'position'       => $currency_details[0]['currency_position'],
        );

        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

// purchase info by invoice no
    public function purchase_list_invoice_no($invoice_no) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $purchases_list = $CI->Purchases->purchase_list_invoice_id($invoice_no);
        if (!empty($purchases_list)) {
            $j = 0;
            foreach ($purchases_list as $k => $v) {
                $purchases_list[$k]['final_date'] = $CI->occational->dateConvert($purchases_list[$j]['purchase_date']);
                $j++;
            }

            $i = 0;
            foreach ($purchases_list as $k => $v) {
                $i++;
                $purchases_list[$k]['sl'] = $i + $CI->uri->segment(3);
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'          => display('manage_purchase'),
            'purchases_list' => $purchases_list,
            'links'          => '',
            'currency'       => $currency_details[0]['currency'],
            'position'       => $currency_details[0]['currency_position'],
        );

        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

    //Purchase Item By Search
    public function purchase_by_search($supplier_id) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->library('occational');
        $purchases_list = $CI->Purchases->purchase_by_search($supplier_id);
        $j = 0;
        if (!empty($purchases_list)) {
            foreach ($purchases_list as $k => $v) {
                $purchases_list[$k]['final_date'] = $CI->occational->dateConvert($purchases_list[$j]['purchase_date']);
                $j++;
            }
            $i = 0;
            foreach ($purchases_list as $k => $v) {
                $i++;
                $purchases_list[$k]['sl'] = $i;
            }
        }
        $data = array(
            'title' => display('manage_purchase'),
            'purchases_list' => $purchases_list
        );
        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

    //Insert Purchase
    public function insert_purchase($data) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->Purchases->purchase_entry($data);
        return true;
    }

    //purchase Edit Data
    public function purchase_edit_data($purchase_id) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Suppliers');
        $CI->load->model('Web_settings');
         $bank_list        = $CI->Web_settings->bank_list();
        $purchase_detail = $CI->Purchases->retrieve_purchase_editdata($purchase_id);
        $supplier_id = $purchase_detail[0]['supplier_id'];
        $supplier_list = $CI->Suppliers->supplier_list("110", "0");
        $supplier_selected = $CI->Suppliers->supplier_search_item($supplier_id);

        if (!empty($purchase_detail)) {
            $i = 0;
            foreach ($purchase_detail as $k => $v) {
                $i++;
                $purchase_detail[$k]['sl'] = $i;
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'         => display('purchase_edit'),
            'purchase_id'   => $purchase_detail[0]['purchase_id'],
            'chalan_no'     => $purchase_detail[0]['chalan_no'],
            'supplier_name' => $purchase_detail[0]['supplier_name'],
            'supplier_id'   => $purchase_detail[0]['supplier_id'],
            'grand_total'   => $purchase_detail[0]['grand_total_amount'],
            'warrenty_date' => $purchase_detail[0]['warrenty_date'],
            'expired_date'  => $purchase_detail[0]['expired_date'],
            'purchase_details' => $purchase_detail[0]['purchase_details'],
            'purchase_date' => $purchase_detail[0]['purchase_date'],
            'total_discount'=> $purchase_detail[0]['total_discount'],
            'total'         => number_format($purchase_detail[0]['grand_total_amount'] + (!empty($purchase_detail[0]['total_discount'])?$purchase_detail[0]['total_discount']:0),2),
            'bank_id'       =>  $purchase_detail[0]['bank_id'],
            'purchase_info' => $purchase_detail,
            'supplier_list' => $supplier_list,
            'paid_amount'   => $purchase_detail[0]['paid_amount'],
            'due_amount'    => $purchase_detail[0]['due_amount'],
            'bank_list'     => $bank_list,
            'supplier_selected' => $supplier_selected,
            'discount_type' => $currency_details[0]['discount_type'],
            'paytype'       => $purchase_detail[0]['payment_type'],
        );
        // echo "<pre>";print_r($data);exit();
        $chapterList = $CI->parser->parse('purchase/edit_purchase_form', $data, true);
        return $chapterList;
    }

    //Search purchase
    public function purchase_search_list($cat_id, $company_id) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $category_list = $CI->Purchases->retrieve_category_list();
        $purchases_list = $CI->Purchases->purchase_search_list($cat_id, $company_id);
        $data = array(
            'title'          => display('manage_purchase'),
            'purchases_list' => $purchases_list,
            'category_list'  => $category_list
        );
        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

    //Purchase details data
    public function purchase_details_data($purchase_id) {

        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        $purchase_detail = $CI->Purchases->purchase_details_data($purchase_id);

        if (!empty($purchase_detail)) {
            $i = 0;
            foreach ($purchase_detail as $k => $v) {
                $i++;
                $purchase_detail[$k]['sl'] = $i;
            }

            foreach ($purchase_detail as $k => $v) {
                $purchase_detail[$k]['convert_date'] = $CI->occational->dateConvert($purchase_detail[$k]['purchase_date']);
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Purchases->retrieve_company();
        $data = array(
            'title'            => display('purchase_details'),
            'purchase_id'      => $purchase_detail[0]['purchase_id'],
            'purchase_details' => $purchase_detail[0]['purchase_details'],
            'supplier_name'    => $purchase_detail[0]['supplier_name'],
            'warrenty_date'    => $purchase_detail[0]['warrenty_date'],
            'expired_date'    => $purchase_detail[0]['expired_date'],
            'final_date'       => $purchase_detail[0]['convert_date'],
            'sub_total_amount' => number_format($purchase_detail[0]['grand_total_amount'], 2, '.', ','),
            'chalan_no'        => $purchase_detail[0]['chalan_no'],
            'total'            =>  number_format($purchase_detail[0]['grand_total_amount']+(!empty($purchase_detail[0]['total_discount'])?$purchase_detail[0]['total_discount']:0), 2),
            'discount'         => number_format((!empty($purchase_detail[0]['total_discount'])?$purchase_detail[0]['total_discount']:0),2),
            'paid_amount'      => number_format($purchase_detail[0]['paid_amount'],2),
            'due_amount'      => number_format($purchase_detail[0]['due_amount'],2),
            'purchase_all_data'=> $purchase_detail,
            'company_info'     => $company_info,
            'currency'         => $currency_details[0]['currency'],
            'position'         => $currency_details[0]['currency_position'],
            'Web_settings'     => $currency_details,
        );

        $chapterList = $CI->parser->parse('purchase/purchase_detail', $data, true);
        return $chapterList;
    }

    // purchase list date to date
    public function purchase_list_date_to_date($start, $end) {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $purchases_list = $CI->Purchases->purchase_list_date_to_date($start, $end);
        if (!empty($purchases_list)) {
            $j = 0;
            foreach ($purchases_list as $k => $v) {
                $purchases_list[$k]['final_date'] = $CI->occational->dateConvert($purchases_list[$j]['purchase_date']);
                $j++;
            }

            $i = 0;
            foreach ($purchases_list as $k => $v) {
                $i++;
                $purchases_list[$k]['sl'] = $i + $CI->uri->segment(3);
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'          => display('manage_purchase'),
            'purchases_list' => $purchases_list,
            'links'          => '',
            'currency'       => $currency_details[0]['currency'],
            'position'       => $currency_details[0]['currency_position'],
        );

        $purchaseList = $CI->parser->parse('purchase/purchase', $data, true);
        return $purchaseList;
    }

    public function purchase_order_approve_form_new()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $purchase_list = $CI->Purchases->purchase_list_by_po_no_new();

        $i = 0;
        foreach ($purchase_list as $k => $v) {
            $i++;
            $purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);
        }

        $data = array(
            'title'     => 'Approve Order Purchases',
            'purchase_list' => $purchase_list,
        );
        $purchaseList = $CI->parser->parse('purchase/purchase_order_approve_new', $data, true);
        return $purchaseList;
    }

    public function purchase_order_approve_form()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $purchase_list = $CI->Purchases->purchase_list_by_po_no();

       // echo '<pre>';print_r($purchase_list);exit();

        $data = array(
            'title'     => 'Supplier Payment',
            'purchase_list' => $purchase_list,

        );

//        echo '<pre>';print_r($purchase_list);exit();
        $purchaseList = $CI->parser->parse('purchase/purchase_order_approve', $data, true);
        return $purchaseList;
    }



    public function purchase_order_edit_form($supplier_id)
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $bank_list        = $CI->Web_settings->bank_list();

        $all_purchase_list = $CI->Purchases->purchase_list_details_by_po_no($supplier_id);
        $bill_list=$CI->db->select('chalan_id')->from('product_purchase_details')->where(array('supplier_id'=>$supplier_id,'isAprv'=>1))->group_by('chalan_id')->get()->result();

        $i = 0;
        foreach ($all_purchase_list as $k => $v) {
            $i++;
            $all_purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);

         //   $closing_inventory = array_sum(array_column($data,'purchase_total'));
        }

        $total = array_sum(array_column($all_purchase_list,'total_amount'));

        $data = array(
            'title'     => 'Supplier Payment Form',
            'all_purchase_list' => $all_purchase_list,
            'bill_list' => $bill_list,
            'bank_list' => $bank_list,

            'total' => $total,
        );



      //  echo '<pre>'; print_r($bill_list);exit();
        $purchaseList = $CI->parser->parse('purchase/purchase_order_approve_edit', $data, true);
        return $purchaseList;
    }

    public function purchase_order_edit_form_new($PO_No)
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');

        $all_purchase_list = $CI->Purchases->purchase_list_details_by_po_no_new($PO_No);

        $i = 0;
        foreach ($all_purchase_list as $k => $v) {
            $i++;
            $all_purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);

         //   $closing_inventory = array_sum(array_column($data,'purchase_total'));
        }

        $total = array_sum(array_column($all_purchase_list,'total_amount'));



        $data = array(
            'title'     => 'Edit Approve Order Purchases',
            'all_purchase_list' => $all_purchase_list,
            'total' => $total,
        );

     //   echo '<pre>'; print_r($data);exit();
        $purchaseList = $CI->parser->parse('purchase/purchase_order_approve_edit_new', $data, true);
        return $purchaseList;
    }

    public function purchase_list_from_rqsn()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');

        $rqsn_list = $CI->Purchases->get_rqsn_approved_list();


        $i = 0;
        foreach ($rqsn_list as $k => $v) {
            $i++;
            $rqsn_list[$k]['sl'] = $i + $CI->uri->segment(3);
        }

        $data = array(
            'title'     => 'Purchases List',
            'pur_list'  => $rqsn_list
        );
        // echo '<pre>'; print_r($data); die();

        return $CI->parser->parse('purchase/purchase_list_form', $data, true);

    }

    public function add_purchase_form()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Categories');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $order_no = $CI->Purchases->number_generator();
        $category_list = $CI->Categories->category_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $po_list = $CI->Purchases->PO_approved_list();
        $data = array(
            'title'         => display('add_purchase'),
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
            'order_no'      => $order_no,
            'category_list' => $category_list,
            'po_list'       => $po_list
        );
        // echo '<pre>';print_r($data);die();
        $purchaseForm = $CI->parser->parse('purchase/add_purchase_new', $data, true);
        return $purchaseForm;
    }

    public function product_receive_form()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Categories');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $order_no = $CI->Purchases->number_generator();
        $category_list = $CI->Categories->category_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $po_list = $CI->Purchases->PO_approved_list_rcv();
        $data = array(
            'title'         => display('add_purchase'),
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
            'order_no'      => $order_no,
            'category_list' => $category_list,
            'po_list'       => $po_list
        );
        // echo '<pre>';print_r($data);die();
        $purchaseForm = $CI->parser->parse('purchase/product_receive_form', $data, true);
        return $purchaseForm;
    }

    public function product_receive_form_two()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Categories');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $order_no = $CI->Purchases->number_generator();
        $category_list = $CI->Categories->category_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $po_list = $CI->Purchases->PO_approved_list_rcv();
        $data = array(
            'title'         => 'Barcode Print',
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
            'order_no'      => $order_no,
            'category_list' => $category_list,
            'po_list'       => $po_list
        );
        // echo '<pre>';print_r($data);die();
        $purchaseForm = $CI->parser->parse('purchase/product_receive_form_two', $data, true);
        return $purchaseForm;
    }

    public function product_receive_form_three()
    {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Categories');
        $CI->load->model('Web_settings');
        $all_supplier = $CI->Purchases->select_all_supplier();
        $order_no = $CI->Purchases->number_generator();
        $category_list = $CI->Categories->category_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $bank_list        = $CI->Web_settings->bank_list();
        $po_list = $CI->Purchases->PO_approved_list_rcv();
        $data = array(
            'title'         => 'ERP Entry',
            'all_supplier'  => $all_supplier,
            'invoice_no'    => $CI->auth->generator(10),
            'discount_type' => $currency_details[0]['discount_type'],
            'bank_list'     => $bank_list,
            'order_no'      => $order_no,
            'category_list' => $category_list,
            'po_list'       => $po_list
        );
        // echo '<pre>';print_r($data);die();
        $purchaseForm = $CI->parser->parse('purchase/product_receive_form_three', $data, true);
        return $purchaseForm;
    }

}

?>