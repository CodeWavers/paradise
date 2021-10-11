<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Linvoice
{

    //Retrieve  Invoice List
    public function invoice_list()
    {

        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $company_info = $CI->Invoices->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'         => display('manage_invoice'),
            'total_invoice' => $CI->Invoices->count_invoice(),
            'currency'      => $currency_details[0]['currency'],
            'company_info'  => $company_info,
        );
        $invoiceList = $CI->parser->parse('invoice/invoice', $data, true);
        return $invoiceList;
    }
    //pdf download
    public function pdf_download()
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        $invoices_list = $CI->Invoices->invoice_list_pdf();
        if (!empty($invoices_list)) {
            $i = 0;
            if (!empty($invoices_list)) {
                foreach ($invoices_list as $k => $v) {
                    $invoices_list[$k]['final_date'] = $CI->occational->dateConvert($invoices_list[$k]['date']);
                }
                foreach ($invoices_list as $k => $v) {
                    $i++;
                    $invoices_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();

        $data = array(
            'title'         => display('manage_invoice'),
            'invoices_list' => $invoices_list,
            'currency'      => $currency_details[0]['currency'],
            'position'      => $currency_details[0]['currency_position']
        );
        $invoiceList = $CI->parser->parse('invoice/invoice_list_pdf', $data, true);
        return $invoiceList;
    }

    // Search invoice by customer id
    public function invoice_search($customer_id, $links, $per_page, $page)
    {

        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        $invoices_list = $CI->Invoices->invoice_search($customer_id, $per_page, $page);
        if (!empty($invoices_list)) {
            foreach ($invoices_list as $k => $v) {
                $invoices_list[$k]['final_date'] = $CI->occational->dateConvert($invoices_list[$k]['date']);
            }
            $i = 0;
            if (!empty($invoices_list)) {
                foreach ($invoices_list as $k => $v) {
                    $i++;
                    $invoices_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'         => display('manage_invoice'),
            'invoices_list' => $invoices_list,
            'links'         => $links,
            'currency'      => $currency_details[0]['currency'],
            'position'      => $currency_details[0]['currency_position'],
        );
        $invoiceList = $CI->parser->parse('invoice/invoice', $data, true);
        return $invoiceList;
    }

    //inovie_manage search by invoice id
    public function invoice_list_invoice_no($invoice_no)
    {

        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        $invoices_list = $CI->Invoices->invoice_list_invoice_id($invoice_no);
        if (!empty($invoices_list)) {
            foreach ($invoices_list as $k => $v) {
                $invoices_list[$k]['final_date'] = $CI->occational->dateConvert($invoices_list[$k]['date']);
            }
            $i = 0;
            if (!empty($invoices_list)) {
                foreach ($invoices_list as $k => $v) {
                    $i++;
                    $invoices_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'         => display('manage_invoice'),
            'invoices_list' => $invoices_list,
            'links'         => '',
            'currency'      => $currency_details[0]['currency'],
            'position'      => $currency_details[0]['currency_position'],
        );
        $invoiceList = $CI->parser->parse('invoice/invoice', $data, true);
        return $invoiceList;
    }

    // date to date invoice list
    public function invoice_list_date_to_date($from_date, $to_date, $links, $perpage, $page)
    {

        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        $invoices_list = $CI->Invoices->invoice_list_date_to_date($from_date, $to_date, $perpage, $page);
        if (!empty($invoices_list)) {
            foreach ($invoices_list as $k => $v) {
                $invoices_list[$k]['final_date'] = $CI->occational->dateConvert($invoices_list[$k]['date']);
            }
            $i = 0;
            if (!empty($invoices_list)) {
                foreach ($invoices_list as $k => $v) {
                    $i++;
                    $invoices_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'         => display('manage_invoice'),
            'invoices_list' => $invoices_list,
            'links'         => $links,
            'currency'      => $currency_details[0]['currency'],
            'position'      => $currency_details[0]['currency_position'],
        );
        $invoiceList = $CI->parser->parse('invoice/invoice', $data, true);
        return $invoiceList;
    }

    //Pos invoice add form
    public function pos_invoice_add_form()
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->model('Courier');
        $customer_details = $CI->Invoices->pos_customer_setup();
        $bank_list        = $CI->Web_settings->bank_list();
        $bkash_list        = $CI->Web_settings->bkash_list();
        $branch_list        = $CI->Courier->get_branch_list();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $tablecolumn = $CI->db->list_fields('tax_collection');
        $num_column = count($tablecolumn) - 4;
        $data = array(
            'title'         => display('pos_invoice'),
            'customer_name' => $customer_details[0]['customer_name'],
            'customer_id'   => $customer_details[0]['customer_id'],
            'discount_type' => $currency_details[0]['discount_type'],
            'taxes'         => $taxfield,
            'taxnumber'     => $num_column,
            'bank_list'     => $bank_list,
            'bkash_list'     => $bkash_list,
            'branch_list'     => $branch_list,

        );
        $invoiceForm = $CI->parser->parse('invoice/add_pos_invoice_form', $data, true);
        return $invoiceForm;
    }

    //Retrieve  Invoice List
    public function search_inovoice_item($customer_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->library('occational');
        $invoices_list = $CI->Invoices->search_inovoice_item($customer_id);
        if (!empty($invoices_list)) {
            foreach ($invoices_list as $k => $v) {
                $invoices_list[$k]['final_date'] = $CI->occational->dateConvert($invoices_list[$k]['date']);
            }
            $i = 0;
            if (!empty($invoices_list)) {
                foreach ($invoices_list as $k => $v) {
                    $i++;
                    $invoices_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $data = array(
            'title' => display('manage_invoice'),
            'invoices_list' => $invoices_list
        );
        $invoiceList = $CI->parser->parse('invoice/invoice', $data, true);
        return $invoiceList;
    }

    //Invoice add form
    public function invoice_add_form()
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->model('Courier');
        $customer_details = $CI->Invoices->pos_customer_setup();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $bank_list          = $CI->Web_settings->bank_list();
        $bkash_list        = $CI->Web_settings->bkash_list();
        $branch_list        = $CI->Courier->get_branch_list();
        $data = array(
            'title'         => display('add_new_invoice'),
            'discount_type' => $currency_details[0]['discount_type'],
            'taxes'         => $taxfield,
            'customer_name' => $customer_details[0]['customer_name'],
            'customer_id'   => $customer_details[0]['customer_id'],
            'bank_list'     => $bank_list,
            'bkash_list'     => $bkash_list,
            'branch_list'     => $branch_list
        );
        $invoiceForm = $CI->parser->parse('invoice/add_invoice_form', $data, true);
        return $invoiceForm;
    }

    public function dispatch_add_form()
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->model('Courier');
        $customer_details = $CI->Invoices->pos_customer_setup();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $bank_list          = $CI->Web_settings->bank_list();
        $bkash_list        = $CI->Web_settings->bkash_list();
        $branch_list        = $CI->Courier->get_branch_list();
        $data = array(
            'title'         => 'Dispatch',
            'discount_type' => $currency_details[0]['discount_type'],
            'taxes'         => $taxfield,
            'customer_name' => $customer_details[0]['customer_name'],
            'customer_id'   => $customer_details[0]['customer_id'],
            'bank_list'     => $bank_list,
            'bkash_list'     => $bkash_list,
            'branch_list'     => $branch_list
        );
        $invoiceForm = $CI->parser->parse('invoice/add_dispatch_form', $data, true);
        return $invoiceForm;
    }

    //Insert invoice
    public function insert_invoice($data)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->Invoices->invoice_entry($data);
        return true;
    }

    //Invoice Edit Data
    public function invoice_edit_data($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->model('Courier');
        $invoice_detail = $CI->Invoices->retrieve_invoice_editdata($invoice_id);
        $bank_list      = $CI->Web_settings->bank_list();
        $bkash_list      = $CI->Web_settings->bkash_list();
        $branch_list      = $CI->Courier->get_branch_list();
        $taxinfo        = $CI->Invoices->service_invoice_taxinfo($invoice_id);
        $taxfield       = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $i = 0;
        if (!empty($invoice_detail)) {
            foreach ($invoice_detail as $k => $v) {
                $i++;
                $invoice_detail[$k]['sl'] = $i;
                $stock = $CI->Invoices->stock_qty_check($invoice_detail[$k]['product_id']);
                $invoice_detail[$k]['stock_qty'] = $stock + $invoice_detail[$k]['quantity'];
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'           => display('invoice_edit'),
            'invoice_id'      => $invoice_detail[0]['invoice_id'],
            'customer_id'     => $invoice_detail[0]['customer_id'],
            'customer_name'   => $invoice_detail[0]['customer_name'],
            'customer_name_two'   => $invoice_detail[0]['customer_name_two'],
            'customer_mobile_two'   => $invoice_detail[0]['customer_mobile_two'],
            'date'            => $invoice_detail[0]['date'],
            'invoice_details' => $invoice_detail[0]['invoice_details'],
            'invoice'         => $invoice_detail[0]['invoice'],
            'total_amount'    => $invoice_detail[0]['total_amount'],
            'paid_amount'     => $invoice_detail[0]['paid_amount'],
            'due_amount'      => $invoice_detail[0]['due_amount'],
            'invoice_discount' => $invoice_detail[0]['invoice_discount'],
            'total_discount'  => $invoice_detail[0]['total_discount'],
            'unit'            => $invoice_detail[0]['unit'],
            'warrenty_date'            => $invoice_detail[0]['warrenty_date'],
            'sn'            => $invoice_detail[0]['sn'],
            'tax'             => $invoice_detail[0]['tax'],
            'taxes'          => $taxfield,
            'prev_due'        => $invoice_detail[0]['prevous_due'],
            'net_total'       => $invoice_detail[0]['prevous_due'] + $invoice_detail[0]['total_amount'],
            'shipping_cost'   => $invoice_detail[0]['shipping_cost'],
            'total_tax'       => $invoice_detail[0]['taxs'],
            'invoice_all_data' => $invoice_detail,
            'taxvalu'         => $taxinfo,
            'discount_type'   => $currency_details[0]['discount_type'],
            'bank_list'       => $bank_list,
            'bkash_list'       => $bkash_list,
            'branch_list'       => $branch_list,
            'bank_id'         => $invoice_detail[0]['bank_id'],
            'bkash_id'         => $invoice_detail[0]['bkash_id'],
            'courier_id'         => $invoice_detail[0]['courier_id'],
            'branch_id'         => $invoice_detail[0]['branch_id'],
            'paytype'         => $invoice_detail[0]['payment_type'],
            'delivery_type'         => $invoice_detail[0]['delivery_type'],
        );
        $chapterList = $CI->parser->parse('invoice/edit_invoice_form', $data, true);
        return $chapterList;
    }

    //Invoice html Data
    public function invoice_html_data($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $isunit = 0;
        $is_discount = 0;
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['discount_per'])) {
                    $is_discount = $is_discount + 1;
                }

                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'             => display('invoice_details'),
            'invoice_id'        => $invoice_detail[0]['invoice_id'],
            'invoice_no'        => $invoice_detail[0]['invoice'],
            'customer_name'     => $invoice_detail[0]['customer_name'],
            'customer_address'  => $invoice_detail[0]['customer_address'],
            'customer_mobile'   => $invoice_detail[0]['customer_mobile'],
            'customer_email'    => $invoice_detail[0]['customer_email'],
            'final_date'        => $invoice_detail[0]['final_date'],
            'invoice_details'   => $invoice_detail[0]['invoice_details'],
            'total_amount'      => number_format($invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'], 2, '.', ','),
            'subTotal_quantity' => $subTotal_quantity,
            'total_discount'    => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'         => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'  => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'       => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'        => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'previous'          => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'shipping_cost'     => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'  => $invoice_detail,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'discount_type'     => $currency_details[0]['discount_type'],
            'am_inword'         => $amount_inword,
            'is_discount'       => $is_discount,
            'users_name'        => $users->first_name . ' ' . $users->last_name,
            'tax_regno'         => $txregname,
            'is_desc'           => $descript,
            'is_serial'         => $isserial,
            'is_unit'           => $isunit,
        );

        $chapterList = $CI->parser->parse('invoice/invoice_html_manual', $data, true);
        return $chapterList;
    }


    //Invoice html Data manual
    public function invoice_html_data_manual($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);



        $data = array(
            'title'             => display('invoice_details'),
            'invoice_id'        => $invoice_detail[0]['invoice_id'],
            // 'invoice_id'        => $invoice_id,
            'invoice_no'        => $invoice_detail[0]['invoice_no'],
            'customer_name'     => $invoice_detail[0]['outlet_name'],
            'customer_address'  => $invoice_detail[0]['customer_address'],
            'customer_mobile'   => $invoice_detail[0]['customer_mobile'],
            'customer_email'    => $invoice_detail[0]['customer_email'],
            'vessel_name'    => $invoice_detail[0]['vessel_name'],
            'contact_no'    => $invoice_detail[0]['contact_no'],
            'subt'    => $invoice_detail[0]['sub_total'],
            'rqsn_no'    => $invoice_detail[0]['rqsn_no'],
            'final_date'        => $invoice_detail[0]['final_date'],
            'invoice_details'   => $invoice_detail[0]['invoice_details'],
            'total_amount'      => number_format($invoice_detail[0]['total_amount']),
            'total_discount'    => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'         => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'  => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'       => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'        => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'previous'          => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'shipping_cost'     => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'  => $invoice_detail,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'discount_type'     => $currency_details[0]['discount_type'],
            'am_inword'         => $amount_inword,
            'is_discount'       => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'users_name'        => $users->first_name . ' ' . $users->last_name,
            'tax_regno'         => $txregname,
            'is_desc'           => $descript,
            'is_serial'         => $isserial,
            'is_unit'           => $isunit,

        );

        //echo '<pre>';print_r($invoice_detail);exit();

        $chapterList = $CI->parser->parse('invoice/invoice_html_manual_new', $data, true);
        return $chapterList;
    }

    public function chalan_html_data_manual($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);



        $data = array(
            'title'             => display('invoice_details'),
            'invoice_id'        => $invoice_detail[0]['invoice_id'],
           // 'invoice_id'        => $invoice_id,
            'invoice_no'        => $invoice_detail[0]['invoice'],
            'dc_no'        => $invoice_detail[0]['dc_no'],
            'vessel_name'        => $invoice_detail[0]['vessel_name'],
            'contact_person'        => $invoice_detail[0]['contact_person'],
            'received_by'        => $invoice_detail[0]['received_by'],
            'delivered_by'        => $invoice_detail[0]['delivered_by'],
            'rqsn_no'        => $invoice_detail[0]['rqsn_no'],
            'chalan_date'        => $invoice_detail[0]['chalan_date'],
            'customer_name'     => $invoice_detail[0]['outlet_name'],
            'customer_address'  => $invoice_detail[0]['customer_address'],
            'customer_mobile'   => $invoice_detail[0]['customer_mobile'],
            'customer_email'    => $invoice_detail[0]['customer_email'],
            'final_date'        => $invoice_detail[0]['final_date'],
            'invoice_details'   => $invoice_detail[0]['invoice_details'],
            'total_amount'      => number_format($invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'], 2, '.', ','),
            'subTotal_quantity' => $subTotal_quantity,
            'total_discount'    => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'         => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'  => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'       => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'        => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'previous'          => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'shipping_cost'     => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'  => $invoice_detail,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'discount_type'     => $currency_details[0]['discount_type'],
            'am_inword'         => $amount_inword,
            'is_discount'       => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'users_name'        => $users->first_name . ' ' . $users->last_name,
            'tax_regno'         => $txregname,
            'is_desc'           => $descript,
            'is_serial'         => $isserial,
            'is_unit'           => $isunit,

        );

        //echo '<pre>';print_r($invoice_detail);exit();

        $chapterList = $CI->parser->parse('invoice/chalan_html_manual_new', $data, true);
        return $chapterList;
    }

    public function check_chalan_html_data_manual($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);



        $data = array(
            'title'             => display('invoice_details'),
            'invoice_id'        => $invoice_detail[0]['invoice_id'],
           // 'invoice_id'        => $invoice_id,
            'invoice_no'        => $invoice_detail[0]['invoice'],
            'dc_no'        => $invoice_detail[0]['dc_no'],
            'vessel_name'        => $invoice_detail[0]['vessel_name'],
            'contact_person'        => $invoice_detail[0]['contact_person'],
            'received_by'        => $invoice_detail[0]['received_by'],
            'delivered_by'        => $invoice_detail[0]['delivered_by'],
            'rqsn_no'        => $invoice_detail[0]['rqsn_no'],
            'chalan_date'        => $invoice_detail[0]['chalan_date'],
            'customer_name'     => $invoice_detail[0]['outlet_name'],
            'customer_address'  => $invoice_detail[0]['customer_address'],
            'customer_mobile'   => $invoice_detail[0]['customer_mobile'],
            'customer_email'    => $invoice_detail[0]['customer_email'],
            'final_date'        => $invoice_detail[0]['final_date'],
            'invoice_details'   => $invoice_detail[0]['invoice_details'],
            'total_amount'      => number_format($invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'], 2, '.', ','),
            'subTotal_quantity' => $subTotal_quantity,
            'total_discount'    => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'         => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'  => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'       => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'        => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'previous'          => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'shipping_cost'     => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'  => $invoice_detail,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'discount_type'     => $currency_details[0]['discount_type'],
            'am_inword'         => $amount_inword,
            'is_discount'       => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'users_name'        => $users->first_name . ' ' . $users->last_name,
            'tax_regno'         => $txregname,
            'is_desc'           => $descript,
            'is_serial'         => $isserial,
            'is_unit'           => $isunit,

        );

        //echo '<pre>';print_r($invoice_detail);exit();

        $chapterList = $CI->parser->parse('invoice/check_chalan_html_manual_new', $data, true);
        return $chapterList;
    }

    public function invoice_chalan_html_data_manual($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'             => display('invoice_details'),
            'invoice_id'        => $invoice_detail[0]['invoice_id'],
            'invoice_no'        => $invoice_detail[0]['invoice'],
            'customer_name'     => $invoice_detail[0]['customer_name'],
            'customer_address'  => $invoice_detail[0]['customer_address'],
            'customer_mobile'   => $invoice_detail[0]['customer_mobile'],
            'customer_email'    => $invoice_detail[0]['customer_email'],
            'final_date'        => $invoice_detail[0]['final_date'],
            'invoice_details'   => $invoice_detail[0]['invoice_details'],
            'total_amount'      => number_format($invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'], 2, '.', ','),
            'subTotal_quantity' => $subTotal_quantity,
            'total_discount'    => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'         => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'  => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'       => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'        => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'previous'          => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'shipping_cost'     => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'  => $invoice_detail,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
            'discount_type'     => $currency_details[0]['discount_type'],
            'am_inword'         => $amount_inword,
            'is_discount'       => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'users_name'        => $users->first_name . ' ' . $users->last_name,
            'tax_regno'         => $txregname,
            'is_desc'           => $descript,
            'is_serial'         => $isserial,
            'is_unit'           => $isunit,

        );

        // echo '<pre>';print_r($data);exit();

        $chapterList = $CI->parser->parse('invoice/invoice_chalan_html_manual', $data, true);
        return $chapterList;
    }

    //POS invoice html Data
    public function pos_invoice_html_data($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $isunit = 0;
        $is_discount = 0;
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }

                if (!empty($invoice_detail[$k]['discount_per'])) {
                    $is_discount = $is_discount + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'                => display('invoice_details'),
            'invoice_id'           => $invoice_detail[0]['invoice_id'],
            'invoice_no'           => $invoice_detail[0]['invoice'],
            'customer_name'        => $invoice_detail[0]['customer_name'],
            'customer_address'     => $invoice_detail[0]['customer_address'],
            'customer_mobile'      => $invoice_detail[0]['customer_mobile'],
            'customer_email'       => $invoice_detail[0]['customer_email'],
            'final_date'           => $invoice_detail[0]['final_date'],
            'invoice_details'      => $invoice_detail[0]['invoice_details'],
            'total_amount'         => number_format($totalbal, 2, '.', ','),
            'subTotal_cartoon'     => $subTotal_cartoon,
            'subTotal_quantity'    => $subTotal_quantity,
            'invoice_discount'     => number_format($invoice_detail[0]['invoice_discount'], 2, '.', ','),
            'total_discount'       => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'            => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'     => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'          => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'           => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'shipping_cost'        => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'     => $invoice_detail,
            'previous'             => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'company_info'         => $company_info,
            'is_discount'         => $is_discount,
            'currency'             => $currency_details[0]['currency'],
            'position'             => $currency_details[0]['currency_position'],
            'users_name'           => $users->first_name . ' ' . $users->last_name,
            'tax_regno'            => $txregname,
            'is_desc'              => $descript,
            'is_serial'            => $isserial,
            'is_unit'              => $isunit,

        );

        $chapterList = $CI->parser->parse('invoice/pos_invoice_html', $data, true);
        return $chapterList;
    }

    /// Manual invoice insert data
    public function pos_invoice_html_data_manual($invoice_id, $url)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
        $subTotal_quantity = 0;
        $subTotal_cartoon = 0;
        $subTotal_discount = 0;
        $subTotal_ammount = 0;
        $descript = 0;
        $isserial = 0;
        $is_discount = 0;
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
                if (!empty($invoice_detail[$k]['discount_per'])) {
                    $is_discount = $is_discount + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'                => display('invoice_details'),
            'invoice_id'           => $invoice_detail[0]['invoice_id'],
            'invoice_no'           => $invoice_detail[0]['invoice'],
            'customer_name'        => $invoice_detail[0]['customer_name'],
            'customer_address'     => $invoice_detail[0]['customer_address'],
            'customer_mobile'      => $invoice_detail[0]['customer_mobile'],
            'customer_email'       => $invoice_detail[0]['customer_email'],
            'final_date'           => $invoice_detail[0]['final_date'],
            'invoice_details'      => $invoice_detail[0]['invoice_details'],
            'total_amount'         => number_format($totalbal, 2, '.', ','),
            'subTotal_cartoon'     => $subTotal_cartoon,
            'subTotal_quantity'    => $subTotal_quantity,
            'invoice_discount'     => number_format($invoice_detail[0]['invoice_discount'], 2, '.', ','),
            'total_discount'       => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'            => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount'     => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'          => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'           => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'shipping_cost'        => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data'     => $invoice_detail,
            'previous'             => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'company_info'         => $company_info,
            'is_discount'         => $is_discount,
            'currency'             => $currency_details[0]['currency'],
            'position'             => $currency_details[0]['currency_position'],
            'users_name'           => $users->first_name . ' ' . $users->last_name,
            'tax_regno'            => $txregname,
            'is_desc'              => $descript,
            'is_serial'            => $isserial,
            'is_unit'              => $isunit,
            'url'                  => $url,

        );

        $chapterList = $CI->parser->parse('invoice/pos_invoice_html_direct', $data, true);
        return $chapterList;
    }
    // min invoice data
    public function min_invoice_html_data($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'            => display('invoice_details'),
            'invoice_id'       => $invoice_detail[0]['invoice_id'],
            'invoice_no'       => $invoice_detail[0]['invoice'],
            'customer_name'    => $invoice_detail[0]['customer_name'],
            'customer_address' => $invoice_detail[0]['customer_address'],
            'customer_mobile'  => $invoice_detail[0]['customer_mobile'],
            'customer_email'   => $invoice_detail[0]['customer_email'],
            'final_date'       => $invoice_detail[0]['final_date'],
            'invoice_details'  => $invoice_detail[0]['invoice_details'],
            'branch_name'  => $invoice_detail[0]['branch_name'],
            'courier_name'  => $invoice_detail[0]['courier_name'],
            'total_amount'     => number_format($totalbal, 2, '.', ','),
            'subTotal_cartoon' => $subTotal_cartoon,
            'subTotal_quantity' => $subTotal_quantity,
            'invoice_discount' => number_format($invoice_detail[0]['invoice_discount'], 2, '.', ','),
            'total_discount'   => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'        => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount' => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'      => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'       => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'shipping_cost'   => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data' => $invoice_detail,
            'previous'         => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'company_info'     => $company_info,
            'currency'         => $currency_details[0]['currency'],
            'logo'             => $currency_details[0]['logo'],
            'am_inword'        => $amount_inword,
            'is_discount'      => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'position'         => $currency_details[0]['currency_position'],
            'users_name'       => $users->first_name . ' ' . $users->last_name,
            'tax_regno'        => $txregname,
            'is_desc'          => $descript,
            'is_serial'        => $isserial,
            'is_unit'          => $isunit,
        );

        //   echo '<pre>';print_r($data);exit();

        $chapterList = $CI->parser->parse('invoice/min_invoice_html', $data, true);
        return $chapterList;
    }
    // min invoice data
    public function chalan_invoice_html_data($invoice_id)
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $CI->load->library('numbertowords');
        $invoice_detail = $CI->Invoices->retrieve_invoice_html_data($invoice_id);
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
                if (!empty($invoice_detail[$k]['description'])) {
                    $descript = $descript + 1;
                }
                if (!empty($invoice_detail[$k]['serial_no'])) {
                    $isserial = $isserial + 1;
                }
                if (!empty($invoice_detail[$k]['unit'])) {
                    $isunit = $isunit + 1;
                }
            }
        }

        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $totalbal = $invoice_detail[0]['total_amount'] + $invoice_detail[0]['prevous_due'];
        $amount_inword = $CI->numbertowords->convert_number($totalbal);
        $user_id = $invoice_detail[0]['sales_by'];
        $users = $CI->Invoices->user_invoice_data($user_id);
        $data = array(
            'title'            => display('invoice_details'),
            'invoice_id'       => $invoice_detail[0]['invoice_id'],
            'invoice_no'       => $invoice_detail[0]['invoice'],
            'customer_name'    => $invoice_detail[0]['customer_name'],
            'customer_address' => $invoice_detail[0]['customer_address'],
            'customer_mobile'  => $invoice_detail[0]['customer_mobile'],
            'customer_email'   => $invoice_detail[0]['customer_email'],
            'final_date'       => $invoice_detail[0]['final_date'],
            'invoice_details'  => $invoice_detail[0]['invoice_details'],
            'total_amount'     => number_format($totalbal, 2, '.', ','),
            'subTotal_cartoon' => $subTotal_cartoon,
            'subTotal_quantity' => $subTotal_quantity,
            'invoice_discount' => number_format($invoice_detail[0]['invoice_discount'], 2, '.', ','),
            'total_discount'   => number_format($invoice_detail[0]['total_discount'], 2, '.', ','),
            'total_tax'        => number_format($invoice_detail[0]['total_tax'], 2, '.', ','),
            'subTotal_ammount' => number_format($subTotal_ammount, 2, '.', ','),
            'paid_amount'      => number_format($invoice_detail[0]['paid_amount'], 2, '.', ','),
            'due_amount'       => number_format($invoice_detail[0]['due_amount'], 2, '.', ','),
            'shipping_cost'   => number_format($invoice_detail[0]['shipping_cost'], 2, '.', ','),
            'invoice_all_data' => $invoice_detail,
            'previous'         => number_format($invoice_detail[0]['prevous_due'], 2, '.', ','),
            'company_info'     => $company_info,
            'currency'         => $currency_details[0]['currency'],
            'logo'             => $currency_details[0]['logo'],
            'am_inword'        => $amount_inword,
            'is_discount'      => $invoice_detail[0]['total_discount'] - $invoice_detail[0]['invoice_discount'],
            'position'         => $currency_details[0]['currency_position'],
            'users_name'       => $users->first_name . ' ' . $users->last_name,
            'tax_regno'        => $txregname,
            'is_desc'          => $descript,
            'is_serial'        => $isserial,
            'is_unit'          => $isunit,
        );

        $chapterList = $CI->parser->parse('invoice/chalan_invoice_html', $data, true);
        return $chapterList;
    }

    public function sales_order()
    {
        $CI = &get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Invoices');

        $approved_list = $CI->Rqsn->get_approved_rqsn();

        $so_no = $CI->Invoices->generate_invoice_no();



        $data = array(
            'title'     => 'Sales Order',
            'approved_list'     => $approved_list,
            'sales_order_no'    => $so_no,
        );

        $view = $CI->parser->parse('invoice/sales_order_form', $data, true);
        return $view;
    }

    public function manage_sales_order()
    {
        $CI = &get_instance();
        $CI->load->model('Invoices');

        $so_list = $CI->Invoices->get_sales_orders();

        $data = array(
            'title'     => 'Manage Sales Order',
            'so_list'   => $so_list
        );

        $view = $CI->parser->parse('invoice/manage_sales_order_form', $data, true);
        return $view;
    }

    public function add_new_sales()
    {
        $CI = &get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Invoices');

        $approved_list = $CI->Invoices->get_approved_so();

        $sv_no = $CI->Invoices->generate_sv_no();



        $data = array(
            'title'     => 'Add Sales',
            'approved_list'     => $approved_list,
            'sv_no'    => $sv_no,
        );

        $view = $CI->parser->parse('invoice/add_new_sales_form', $data, true);
        return $view;
    }
    public function sales_order_report()
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');

        $details = $CI->Invoices->sales_order_details();

        if(!empty($details)){
            $sl = 0;
            foreach ($details as $key => $value) {
                $sl++;
                $details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'             => 'Sales Order Report',
            'details'      => $details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('invoice/sales_order_report', $data, true);

    }

    public function pending_sales_order()
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');

        $details = $CI->Invoices->pending_sales_order();

        if(!empty($details)){
            $sl = 0;
            foreach ($details as $key => $value) {
                $sl++;
                $details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'             => 'Pending Sales Order',
            'details'      => $details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('invoice/pending_sales_order', $data, true);

    }
    public function pending_dc()
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');

        $details = $CI->Invoices->pending_dc();

        if(!empty($details)){
            $sl = 0;
            foreach ($details as $key => $value) {
                $sl++;
                $details[$key]['sl'] = $sl;
            }
        }



        $data = array(
            'title'        => 'Pending DC',
            'details'      => $details,
        );

        // echo '<pre>';print_r($data);exit();


        return $CI->parser->parse('invoice/pending_dc', $data, true);

    }

    public function approved_so_details($invoice_no)
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Warehouse');

        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Invoices->approved_so_details($invoice_no);
        $grand_total = array_sum(array_column($rqsn_details, 'total'));


        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'SO Details',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,
            'grand_total'       => $grand_total,
            'sl'       => $sl,
        );

        //  echo '<pre>';print_r($grand_total);exit();

        return $CI->parser->parse('invoice/so_details_report', $data, true);
    }

    public function pending_so_edit($invoice_no)
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Warehouse');

        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Invoices->approved_so_details($invoice_no);
        $grand_total = array_sum(array_column($rqsn_details, 'total'));


        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'Edit SO',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,
            'grand_total'       => $grand_total,
            'sl'       => $sl,
        );

        //  echo '<pre>';print_r($grand_total);exit();

        return $CI->parser->parse('invoice/pending_so_edit', $data, true);
    }

    public function pending_dc_edit($invoice_no)
    {
        $CI = & get_instance();
        $CI->load->model('Invoices');
        $CI->load->model('Warehouse');

        $outlet_list    = $CI->Warehouse->branch_list();
        $rqsn_details = $CI->Invoices->approved_dc_details($invoice_no);
        $grand_total = array_sum(array_column($rqsn_details, 'total'));


        if(!empty($rqsn_details)){
            $sl = 0;
            foreach ($rqsn_details as $key => $value) {
                $sl++;
                $rqsn_details[$key]['sl'] = $sl;
            }
        }

        $data = array(
            'title'             => 'Edit DC',
            'rqsn_details'      => $rqsn_details,
            'outlet_list'       => $outlet_list,
            'grand_total'       => $grand_total,
            'sl'       => $sl,
        );

        //  echo '<pre>';print_r($grand_total);exit();

        return $CI->parser->parse('invoice/pending_dc_edit', $data, true);
    }


    public function delivery_chalan()
    {
        $CI = &get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Invoices');

        $approved_list = $CI->Invoices->delivery_chalan();

        $dc_no = $CI->Invoices->generate_dc_no();



        $data = array(
            'title'     => 'Delivery Chalan',
            'approved_list'     => $approved_list,
            'dc_no'    => $dc_no,
        );

        $view = $CI->parser->parse('invoice/delivery_chalan', $data, true);
        return $view;
    }

    public function check_report()
    {
        $CI = &get_instance();
        $CI->load->model('Rqsn');
        $CI->load->model('Invoices');

        $approved_list = $CI->Invoices->check_report();

        $dc_no = $CI->Invoices->generate_dc_no();



        $data = array(
            'title'     => 'Order Check Report',
            'approved_list'     => $approved_list,
            'dc_no'    => $dc_no,
        );

        $view = $CI->parser->parse('invoice/check_report', $data, true);
        return $view;
    }
}
