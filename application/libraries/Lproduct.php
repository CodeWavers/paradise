<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lproduct {
    /*
     * * Retrieve  Quize List From DB
     */
    public function product_list()
    {
        $CI =& get_instance();
        $CI->load->model('Products');
        $CI->load->model('Web_settings');
        $company_info = $CI->Products->retrieve_company();
        $data['total_product']    = $CI->Products->count_product();
        $data['company_info']     = $company_info;
        $productList = $CI->parser->parse('product/product',$data,true);
        return $productList;
    }

    //Sub Category Add
    public function product_add_form() {
        $CI = & get_instance();
        $CI->load->model('Products');
        $CI->load->model('Suppliers');
        $CI->load->model('Categories');
        $CI->load->model('Models');
        $CI->load->model('Brands');
        $CI->load->model('Ptype');
        $CI->load->model('Units');
        $supplier      = $CI->Suppliers->supplier_list("110", "0");
        $category_list = $CI->Categories->category_list_product();
        $model_list = $CI->Models->model_list_product();
        $sub_cat_list = $CI->Categories->sub_cat_list_product();
        $brand_list = $CI->Brands->category_list_product();
        $ptype_list = $CI->Ptype->category_list_product();
        $unit_list     = $CI->Units->unit_list();

        $currency=$CI->db->select('*')->from('currency_tbl')->get()->result_array();

        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $data = array(
            'title'        => display('add_product'),
            'supplier'     => $supplier,
            'currency'     => $currency,
            'category_list'=> $category_list,
            'model_list'=> $model_list,
            'sub_cat_list'=> $sub_cat_list,
            'brand_list'=> $brand_list,
            'ptype_list'=> $ptype_list,
            'unit_list'    => $unit_list,
            'taxfield'     => $taxfield
        );
        $productForm = $CI->parser->parse('product/add_product_form', $data, true);
        return $productForm;
    }

    public function insert_product($data) {
        $CI = & get_instance();
        $CI->load->model('Products');
        $result = $CI->Products->product_entry($data);
        if ($result == 1) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    //Product Edit Data
    public function product_edit_data($product_id) {
        $CI = & get_instance();
        $CI->load->model('Products');
        $CI->load->model('Suppliers');
        $CI->load->model('Categories');
        $CI->load->model('Models');
        $CI->load->model('Brands');
        $CI->load->model('Ptype');
        $CI->load->model('Units');

      //  $currency=$CI->db->select('*')->from('currency_tbl')->get()->result_array();
        $product_detail = $CI->Products->retrieve_product_editdata($product_id);
        $supplier_product_detail = $CI->Products->supplier_product_editdata($product_id);
        @$supplier_id = $product_detail[0]['supplier_id'];

        @$category_id = $product_detail[0]['category_id'];
        @$model_id = $product_detail[0]['product_model'];
        @$brand_id = $product_detail[0]['brand_id'];
        @$ptype_id = $product_detail[0]['ptype_id'];
        $sub_cat_id     = $product_detail[0]['sub_cat_id'];
        $supplier_list = $CI->Suppliers->supplier_list();
        $currency = $CI->Suppliers->currency_list();
        $supplier_selected = $CI->Products->supplier_selected($product_id);

        $category_list = $CI->Categories->category_list_product();
        $model_list = $CI->Models->model_list_product();
        $brand_list = $CI->Brands->category_list_product();
        $ptype_list = $CI->Ptype->category_list_product();
        $unit_list = $CI->Units->unit_list();
        $sub_cat_list = $CI ->Categories -> sub_cat_list_product_by_cat_id($category_id);
        $category_selected = $CI->Categories->category_search_item($category_id);
        $model_selected = $CI->Models->model_search_item($model_id);
        $brand_selected = $CI->Brands->category_search_item($brand_id);
        $ptype_selected = $CI->Ptype->category_search_item($product_id);
        $taxfield = $CI->db->select('tax_name,default_value')
            ->from('tax_settings')
            ->get()
            ->result_array();
        $i = 0;
        foreach ($taxfield as $taxs) {

            $tax = 'tax'.$i;
            $data[$tax] = $product_detail[0][$tax] * 100;
            $i++;
        }


        $data['title']            = display('edit_your_product');
        $data['product_id']       = $product_detail[0]['product_id'];
        $data['product_id_two']       = $product_detail[0]['product_id_two'];
        $data['product_name']     = $product_detail[0]['product_name'];
        $data['price']            = $product_detail[0]['price'];
        // $data['re_order_level']    = $product_detail[0]['re_order_level'];
        // $data['serial_no']        = $product_detail[0]['serial_no'];
        $data['product_model']    = $product_detail[0]['product_model'];
        $data['country']    = $product_detail[0]['country'];
        $data['parts']    = $product_detail[0]['parts'];
        $data['tag']    = $product_detail[0]['tag'];
        $data['sku']    = $product_detail[0]['sku'];
        $data['ptype_id']    = $product_detail[0]['ptype_id'];
        $data['product_details']  = $product_detail[0]['product_details'];
        $data['pr_details']       = $product_detail;
        $data['image']            = $product_detail[0]['image'];
        $data['unit']             = $product_detail[0]['unit'];
        $data['supplier_list']    = $supplier_list;
        $data['supplier_selected']= $supplier_selected;
        $data['currency'] = $currency;
        $data['unit_list']        = $unit_list;
        $data['category_list']    = $category_list;
        $data['model_list']    = $model_list;
        $data['brand_list']    = $brand_list;
        $data['ptype_list']    = $ptype_list;
        $data['category_selected']= $category_selected;
        $data['model_selected']= $model_selected;
        $data['brand_selected']= $brand_selected;
        $data['ptype_selected']= $ptype_selected;
        $data['tax_selecete']     = $product_detail[0]['tax'] * 100;
        $data['supplier_product_data'] = $supplier_product_detail;
        $data['taxfield']         = $taxfield;
        $data['sub_cat_id']     = $sub_cat_id;
        $data['sub_cat_list'] = $sub_cat_list;
        $data['category_id'] = $category_id;
        $data['curr'] = $currency;

        // echo '<pre>';print_r($data);exit();

        $chapterList = $CI->parser->parse('product/edit_product_form', $data, true);

        return $chapterList;
    }

    //Search Product
    public function product_search_list($product_id) {
        $CI = & get_instance();
        $CI->load->model('Products');
        $CI->load->model('Web_settings');
        $products_list = $CI->Products->product_search_item($product_id);
        $all_product_list = $CI->Products->all_product_list();

        $i = 0;
        if ($products_list) {
            foreach ($products_list as $k => $v) {
                $i++;
                $products_list[$k]['sl'] = $i;
                $products_list[$k]['serial'] =substr($products_list[$k]['serial_no'], 0, 20) . '...';
            }

            $currency_details = $CI->Web_settings->retrieve_setting_editdata();
            $data = array(
                'title'            => display('manage_product'),
                'products_list'    => $products_list,
                'all_product_list' => $all_product_list,
                'links'            => "",
                'currency'         => $currency_details[0]['currency'],
                'position'         => $currency_details[0]['currency_position'],
            );
            $productList = $CI->parser->parse('product/product', $data, true);
            return $productList;
        } else {
            redirect('Cproduct/manage_product');
        }
    }

    //Product Details
    public function product_details($product_id) {
        $CI = & get_instance();
        $CI->load->model('Products');
        $CI->load->library('occational');
        $CI->load->model('Web_settings');
        $CI->load->model('Reports');

        $product_price = $CI->Reports->product_price($product_id);
        $details_info = $CI->Products->product_details_info($product_id);
        $purchaseData = $CI->Products->product_purchase_info($product_id);

        $totalPurchase = 0;
        $totalPrcsAmnt = 0;

        if (!empty($purchaseData)) {
            foreach ($purchaseData as $k => $v) {
                $purchaseData[$k]['final_date'] = $CI->occational->dateConvert($purchaseData[$k]['purchase_date']);
                $totalPrcsAmnt = ($totalPrcsAmnt + $purchaseData[$k]['total_amount']);
                $totalPurchase = ($totalPurchase + $purchaseData[$k]['quantity']);
            }
        }

        $salesData = $CI->Products->invoice_data($product_id);

        $totalSales = 0;
        $totaSalesAmt = 0;
        if (!empty($salesData)) {
            foreach ($salesData as $k => $v) {
                $salesData[$k]['final_date'] = $CI->occational->dateConvert($salesData[$k]['date']);
                $totalSales = ($totalSales + $salesData[$k]['quantity']);
                $totaSalesAmt = ($totaSalesAmt + $salesData[$k]['total_amount']);
            }
        }

        $stock = ($totalPurchase - $totalSales);
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data = array(
            'title'               => display('product_report'),
            'product_name'        => $details_info[0]['product_name'],
//            'product_model'       => $details_info[0]['product_model'],
            'model_name'       => $details_info[0]['model_name'],
            'sku'       => $details_info[0]['sku'],
            'parts'       => $details_info[0]['parts'],
            'price'               => $details_info[0]['price'],
            'purchaseTotalAmount' => number_format($totalPrcsAmnt, 2, '.', ','),
            'salesTotalAmount'    => number_format($totaSalesAmt, 2, '.', ','),
            'img'                 => $details_info[0]['image'],
            'total_purchase'      => $totalPurchase,
            'total_sales'         => $totalSales,
            'purchaseData'        => $purchaseData,
            'product_price'        => $product_price,
            'salesData'           => $salesData,
            'stock'               => $stock,
            'product_statement'   => 'Cproduct/product_sales_supplier_rate/' . $product_id,
            'currency'            => $currency_details[0]['currency'],
            'position'            => $currency_details[0]['currency_position'],
        );

        $productList = $CI->parser->parse('product/product_details', $data, true);
        return $productList;
    }

    //Product Details
    public function product_sales_supplier_rate($product_id, $startdate, $enddate) {
        $CI = & get_instance();
        $CI->load->model('Products');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');

        //Product Summary
        $details_info = $CI->Products->product_details_info($product_id);
        $opening_balance = $CI->Products->previous_stock_data($product_id, $startdate);
        $salesData = $CI->Products->invoice_data_supplier_rate($product_id, $startdate, $enddate);

        $stock = $opening_balance[0]['quantity'];
        $totalIn = 0;
        $totalOut = 0;
        $totalstock = 0;
        $gtotal_sell = 0;
        $gtotal_purchase = 0;

        if (!empty($salesData)) {
            foreach ($salesData as $k => $v) {
                $salesData[$k]['fdate'] = $CI->occational->dateConvert($salesData[$k]['date']);

                if ($salesData[$k]['account'] == "a") {
                    $salesData[$k]['in'] = round($salesData[$k]['quantity'], 0);
                    $salesData[$k]['total_purchase'] = $salesData[$k]['total_price'];
                    $salesData[$k]['total_sell'] = 0;
                    $salesData[$k]['out'] = 0;
                    $stock = $stock + $salesData[$k]['out'] + $salesData[$k]['in'];
                    $totalIn += $salesData[$k]['in'];

                    $gtotal_purchase += $salesData[$k]['total_purchase'];
                } else {
                    $salesData[$k]['out'] = round($salesData[$k]['quantity'], 0);
                    $salesData[$k]['in'] = 0;
                    $stock = $stock + $salesData[$k]['out'] + $salesData[$k]['in'];
                    $totalOut += $salesData[$k]['out'];

                    $salesData[$k]['total_purchase'] = 0;
                    $salesData[$k]['total_sell'] = $salesData[$k]['total_price'];
                    $gtotal_sell += $salesData[$k]['total_sell'];
                }
                $salesData[$k]['stock'] = $stock;

                $totalstock = $salesData[$k]['stock'];
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Products->retrieve_company();

        $data = array(
            'title'             => display('product_statement'),
            'product_id'        => $details_info[0]['product_id'],
            'product_name'      => $details_info[0]['product_name'],
            'product_model'     => $details_info[0]['product_model'],
            'startdate'         => $startdate,
            'enddate'           => $enddate,
            'price'             => $details_info[0]['price'],
            'totalIn'           => $totalIn,
            'totalOut'          => $totalOut,
            'totalstock'        => $totalstock,
            'gtotal_sell'       => number_format($gtotal_sell, 2, '.', ','),
            'gtotal_purchase'   => number_format($gtotal_purchase, 2, '.', ','),
            'opening_balance'   => round($opening_balance[0]['quantity'], 0),
            'salesData'         => $salesData,
            'company_info'      => $company_info,
            'currency'          => $currency_details[0]['currency'],
            'position'          => $currency_details[0]['currency_position'],
        );
        $productList = $CI->parser->parse('product/product_sales_supplier_rate', $data, true);
        return $productList;
    }

    public function approve_changed_price()
    {
        $CI = & get_instance();
        $CI->load->model('Products');

        $res = $CI->Products->get_changed_price();

        $i = 0;
        foreach ($res as $k => $v) {
            $i++;
            $res[$k]['sl'] = $i ;
        }


        // echo '<pre>';print_r($res);exit();

        $data = array(
            'title' => 'Approve Price',
            'res' => $res,
        );

        $view =  $CI->parser->parse('product/admin_approve_price', $data, true);

        return $view;
    }

    public function approve_changed_unit_cost()
    {
        $CI = & get_instance();
        $CI->load->model('Products');

        $res = $CI->Products->get_changed_unit_cost();

        $i = 0;
        foreach ($res as $k => $v) {
            $i++;
            $res[$k]['sl'] = $i ;
        }


        // echo '<pre>';print_r($res);exit();

        $data = array(
            'title' => 'Approve Price',
            'res' => $res,
        );

        $view =  $CI->parser->parse('product/admin_approve_unit_cost', $data, true);

        return $view;
    }

}

?>