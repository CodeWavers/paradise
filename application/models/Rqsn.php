<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Rqsn extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('lrqsn');
        $this->load->library('Smsgateway');
        $this->load->library('session');
        $this->load->model('Service');
        $this->auth->check_admin_auth();
    }
    public function vessel_list_product_by_customer_id($customer_id) {
        $this->db->select('*');
        $this->db->from('customer_vessel');
        $this->db->where('customer_id', $customer_id);
       // $this->db->where('status', 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result();
        }
        return false;
    }


    function product_fetch_all()
    {
        $query = $this->db->get("product_information");
        return $query->result();
    }

    function cart_list()
    {
        return $list = $this->db->select('*')
            ->from('rqsn_cart')
            ->group_by('product_id')
            ->get()->result_array();
    }

//   function draft_list($rqsn_id)
//    {
//        return $list = $this->db->select('*')
//            ->from('rqsn_cart')
//            ->group_by('product_id')
//            ->get()->result_array();
//    }


    public function cart_product_details($product_id)
    {
        $list = $this->db->select('*')
            ->from('rqsn_cart')
            ->where('product_id', $product_id)
            ->get();

        if ($list->num_rows() > 0) {
            return $list->result_array();
        }

        return false;
    }

    public function draft_cart_product_details($product_id,$rqsn_id)
    {
        $list = $this->db->select('*')
            ->from('rqsn_details')
            ->where('product_id', $product_id)
            ->where('rqsn_id', $rqsn_id)
            ->get();

        if ($list->num_rows() > 0) {
            return $list->result_array();
        }

        return false;
    }

    // outlet list
    public function outlet_list()
    {
        $user_id = $this->session->userdata('user_id');
        return $list = $this->db->select('*')
            ->from('outlet_warehouse')
            ->where('outlet_warehouse.user_id', $user_id)
            ->get()->result_array();
    }
    public function outlet_list_to()
    {
        $user_id = $this->session->userdata('user_id');
        return $list = $this->db->select('*')
            ->from('outlet_warehouse')
            //->where('outlet_warehouse.user_id',$user_id)
            ->get()->result_array();
    }

    // outlet list
    public function cw_list()
    {
        return $list = $this->db->select('*')
            ->from('central_warehouse a')
            // ->join('outlet_warehouse b','a.warehouse_id=b.warehouse_id')
            ->get()->result_array();
    }
    public function get_po_details($product_id, $supplier_id)
    {
        //        $this->db->select('SUM(a.quantity) as total_purchase,b.*');
        //        $this->db->from('product_purchase_details a');
        //        $this->db->join('supplier_product b', 'a.product_id=b.product_id');
        //        $this->db->where('a.product_id', $product_id);
        //        $this->db->where('b.supplier_id', $supplier_id);
        //        $total_purchase = $this->db->get()->row();
        //
        //        $this->db->select('SUM(b.quantity) as total_sale');
        //        $this->db->from('invoice_details b');
        //        $this->db->where('b.product_id', $product_id);
        //        $total_sale = $this->db->get()->row();

        $this->db->select('a.*,b.*,c.*');
        $this->db->from('product_information a');
        $this->db->join('supplier_product b', 'a.product_id=b.product_id');
        $this->db->join('rqsn_details c', 'c.product_id=a.product_id');
        $this->db->where(array('c.rqsn_detail_id' => $product_id, 'c.status' => 4));
        $this->db->where('b.supplier_id', $supplier_id);
        //  $this->db->where('c.status', 4);
        $product_information = $this->db->get()->row();

        //  $available_quantity = ($total_purchase->total_purchase - $total_sale->total_sale);

        $total_price = ($product_information->a_qty) * ($product_information->supplier_price);

        $CI = &get_instance();
        $CI->load->model('Web_settings');
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();

        $data2 = array(
            'product_name'  => $product_information->product_name,
            'p_id'  => $product_information->product_id,
            'quantity'  => $product_information->a_qty,
            'supplier_price' => $product_information->supplier_price,
            'total_price' => $total_price,
            'price'          => $product_information->price,
            'supplier_id'    => $product_information->supplier_id,
            'unit'           => $product_information->unit,
            'tax'            => $product_information->tax,
            'discount_type'  => $currency_details[0]['discount_type'],
        );

        return $data2;
    }
    public function rqsn_entry()
    {
        $this->load->model('Web_settings');
        $rqsn_id = mt_rand();
        //  $rqsn_no = $this->number_generator();
        //    echo "Ok";exit();

        //Data inserting into invoice table
        $data_draft = array(
            'rqsn_id'     => $rqsn_id,
            'date'            => (!empty($this->input->post('invoice_date', true)) ? $this->input->post('invoice_date', true) : date('Y-m-d')),
            'details'         => (!empty($this->input->post('inva_details', true)) ? $this->input->post('inva_details', true) : 'Requisition'),
             'rqsn_no'=> $this->input->post('rqsn_no',true),
            'voyage_no' => $this->input->post('voyage_no', true),
            'from_id' => $this->input->post('rqsn_for', true),
            'to_id'  => 'HK7TGDT69VFMXB7',
            'rqsn_customer_name' => $this->input->post('customer_name', true),
            'status'   => 1,
        );
        $data_finalize = array(
            'rqsn_id'     => $rqsn_id,
            'date'            => (!empty($this->input->post('invoice_date', true)) ? $this->input->post('invoice_date', true) : date('Y-m-d')),
            'details'         => (!empty($this->input->post('inva_details', true)) ? $this->input->post('inva_details', true) : 'Requisition'),
            'rqsn_no' => $this->input->post('rqsn_no', true),
            'voyage_no' => $this->input->post('voyage_no', true),
            'from_id' => $this->input->post('rqsn_for', true),
            'to_id'  => 'HK7TGDT69VFMXB7',
            'rqsn_customer_name' => $this->input->post('customer_name', true),
            'status'   => 2,
        );
        //        $datarq = array(
        //            'rqsn_id'     => 1,
        //            'date'            => '22/1/2012',
        //            'details'         => 'Regs',
        //            'from_id'=> 'abc',
        //            'to_id'  =>'765t',
        //            'status'   => 1,
        //        );

       //  echo '<pre>';print_r($data_finalize);exit();

        if (isset($_POST['finalize'])) {
            $this->db->insert('rqsn', $data_finalize);
            $this->db->empty_table('rqsn_cart');
        } else {
            $this->db->insert('rqsn', $data_draft);
            $this->db->empty_table('rqsn_cart');
        }


        $quantity            = $this->input->post('product_quantity', true);
        $p_id             = $this->input->post('product_id', true);
        //  $unit             = $this->input->post('unit',true);


        for ($i = 0, $n   = count($p_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            //   $un  = $unit[$i];
            $product_id   = $p_id[$i];

            $supplier_price = $this->db->select('supplier_price')->from('supplier_product')->where('product_id', $product_id)->get()->row();

            $price = $qty * ($supplier_price->supplier_price);
            $rqsn_details = array(
                'rqsn_detail_id'     => mt_rand(),
                'rqsn_id'     => $rqsn_id,
                'product_id'         => $product_id,
                'quantity'                => $qty,
                'total'                => $price,
                'status'                => 1,
                'purchase_status'       => 1

            );
            if (!empty($quantity)) {
                $this->db->insert('rqsn_details', $rqsn_details);
                $this->db->where('product_id', $product_id);
                $this->db->set('qty', $qty);
                $this->db->update('rqsn_cart');
            }
        }

        return $rqsn_id;
    }

    public function rqsn_update()
    {
        $this->load->model('Web_settings');
        // $rqsn_id=mt_rand();
        date_default_timezone_set("Asia/Dhaka");
        //    echo "Ok";exit();
        $rqsn_id             = $this->input->post('rqsn_id', true);
        //Data inserting into invoice table
        $data_draft = array(
            'rqsn_id'     => $rqsn_id,
            'date'            => (!empty($this->input->post('invoice_date', true)) ? $this->input->post('invoice_date', true) : date('Y-m-d')),
            'details'         => (!empty($this->input->post('inva_details', true)) ? $this->input->post('inva_details', true) : 'Requisition'),
            'rqsn_no' => $this->input->post('rqsn_no', true),
            'from_id' => $this->input->post('rqsn_for', true),
            'to_id'  => 'HK7TGDT69VFMXB7',
            'rqsn_customer_name' => $this->input->post('customer_name', true),
            'status'   => 1,
        );
        $data_finalize = array(
            'rqsn_id'     => $rqsn_id,
            'date'            => (!empty($this->input->post('invoice_date', true)) ? $this->input->post('invoice_date', true) : date('Y-m-d')),
            'details'         => (!empty($this->input->post('inva_details', true)) ? $this->input->post('inva_details', true) : 'Requisition'),
            'rqsn_no' => $this->input->post('rqsn_no', true),
            'from_id' => $this->input->post('rqsn_for', true),
            'to_id'  => 'HK7TGDT69VFMXB7',
            'rqsn_customer_name' => $this->input->post('customer_name', true),
            'status'   => 2,
        );


        if (isset($_POST['finalize'])) {
            $this->db->where('rqsn_id', $rqsn_id);
            $this->db->update('rqsn', $data_finalize);
        } else {
            $this->db->where('rqsn_id', $rqsn_id);
            $this->db->update('rqsn', $data_draft);
        }


        //  echo '<pre>';print_r($datarq);exit();
        //        if ($rqsn_id != '') {
        //            $this->db->where('rqsn_id', $rqsn_id);
        //            $this->db->update('rqsn', $datarq);
        //
        //        }


        $this->db->where('rqsn_id', $rqsn_id);
        $this->db->delete('rqsn_details');
        // exit();
        $quantity            = $this->input->post('product_quantity', true);
        $p_id             = $this->input->post('product_id', true);



        for ($i = 0, $n   = count($p_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            //   $un  = $unit[$i];
            $product_id   = $p_id[$i];




            $rqsn_details = array(
                'rqsn_detail_id'     => mt_rand(),
                'rqsn_id'     => $rqsn_id,
                'product_id'         => $product_id,
                'quantity'                => $qty,
                //    'unit'                => $un,
                'status'                => 1,

            );
            if (!empty($quantity)) {
                $this->db->insert('rqsn_details', $rqsn_details);
            }
        }

        return $rqsn_id;
    }

    public function rqsn_entry_cw()
    {
        $this->load->model('Web_settings');
        $rqsn_id = mt_rand();

        //    echo "Ok";exit();

        //Data inserting into invoice table
        $datarq = array(
            'rqsn_id'     => $rqsn_id,
            'date'            => (!empty($this->input->post('invoice_date', true)) ? $this->input->post('invoice_date', true) : date('Y-m-d')),
            'details'         => (!empty($this->input->post('inva_details', true)) ? $this->input->post('inva_details', true) : 'Requisition'),
            'from_id' => $this->input->post('from_id', true),
            'to_id'  => $this->input->post('to_id', true),
            'status'   => 1,
        );
        //        $datarq = array(
        //            'rqsn_id'     => 1,
        //            'date'            => '22/1/2012',
        //            'details'         => 'Regs',
        //            'from_id'=> 'abc',
        //            'to_id'  =>'765t',
        //            'status'   => 1,
        //        );

        //  echo '<pre>';print_r($datarq);exit();

        $this->db->insert('rqsn', $datarq);


        $quantity            = $this->input->post('product_quantity', true);
        $p_id             = $this->input->post('product_id', true);
        $r_id             = $this->input->post('rqsn_id', true);
        $unit             = $this->input->post('unit', true);


        for ($i = 0, $n   = count($p_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            $un  = $unit[$i];
            $product_id   = $p_id[$i];


            $rqsn_details = array(
                'rqsn_detail_id'     => 'PO' . mt_rand(),
                'rqsn_id'     => $rqsn_id,
                'product_id'         => $product_id,
                'quantity'                => $qty,
                'unit'                => $un,
                'status'                => 1,

            );
            if (!empty($quantity)) {
                $this->db->insert('rqsn_details', $rqsn_details);
            }
        }

        return $rqsn_id;
    }
    public function number_generator()
    {
        $this->db->select_max('rqsn_no', 'rqsn_no')->where('status', 3);
        $query = $this->db->get('rqsn');
        $result = $query->result_array();
        $rqsn_no = $result[0]['rqsn_no'];
        if ($rqsn_no != '') {
            $rqsn_no = $rqsn_no + 1;
        } else {
            $rqsn_no = 1000;
        }
        return $rqsn_no;
    }


    public function generate_rq_no()
    {
        $this->db->select('rqsn_no')->order_by('id', 'desc');
        $query = $this->db->get('rqsn');
        $result = $query->result_array();



        //  $order_no = substr($result[0]['invoice_no'], -1);
        $order_no = $result[0]['rqsn_no'];

        $pattern = "/[-]/";

        $components = preg_split($pattern, $order_no);
        $rq_no=preg_replace('/RQ/i','',$components[2]);

        if ($rq_no != '') {
            $rq_no = $rq_no + 1;
        } else {
            $rq_no = 1;
        }

        // print_r($components);

        return $rq_no;
    }



    public function rqsn_draft_count()
    {
        $query = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('a.to_id', 'HK7TGDT69VFMXB7')
            ->get();

        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return $query;
    }
    public function rqsn_draft()
    {

        ## Fetch records
        $records = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('a.to_id', 'HK7TGDT69VFMXB7')
            ->get()
            ->result();

        // $data = array();

        $sl = 1;





        foreach ($records as $record) {
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')->from('invoice_details')->where('product_id', $record->product_id)->get()->row();
            // $stock_r = $this->db->select('sum(a_qty) as totalQty')->from('rqsn_details')->where('product_id',$record->product_id)->where('status',2)->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id', $record->product_id)->get()->row();
            //$wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('warrenty_return')->where('product_id',$record->product_id,'usablity',3)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id', $record->product_id)->get()->row();

            $stock_r = $this->db->select('sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn b', 'a.rqsn_id=b.rqsn_id')
                ->where('a.product_id', $record->product_id)
                //  ->where('b.to_id','HK7TGDT69VFMXB7')
                ->where('a.iscw', 1)->get()->row();

            //   $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            $sprice = (!empty($record->price) ? $record->price : 0);
            $pprice = (!empty($stockout->purchaseprice) ? sprintf('%0.2f', $stockout->purchaseprice) : 0);
            $stock =  (!empty($stockout->totalPurchaseQnty) ? $stockout->totalPurchaseQnty : 0) - ((!empty($stockin->totalSalesQnty) ? $stockin->totalSalesQnty : 0) + (!empty($stock_r->totalQty) ? $stock_r->totalQty : 0));
            $newStock = (!empty($warrenty_stock->totalWarrentyQnty) ? $warrenty_stock->totalWarrentyQnty : 0);
            $qty = $stock - $newStock;
            $t = (!empty($qty) ? $qty : 0);

            //           if($qty<0){
            //               $qty=0;
            //           }else{
            //               $qty=$t;
            //           }

            $data[] = array(

                // 'cw_id'=>$record->to_id,

                'outlet_name' => $record->outlet_name,
                'date' => $record->date,
                'product_name' => $record->product_name,
                'quantity' => $record->quantity,
                'unit' => $record->unit,
                'details' => $record->details,
                'rqsn_detail_id' => $record->rqsn_detail_id,
                'rqsn_id' => $record->rqsn_id,
                'stok_quantity' => sprintf('%0.2f', $t),

            );
        }

        ## Response


        return $data;
    }
    public function approve_rqsn_count()
    {
        $query = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('a.to_id', 'HK7TGDT69VFMXB7')
            ->get();

        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return $query;
    }


    public function approve_rqsn()
    {

        ## Fetch records
        $records = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('a.to_id', 'HK7TGDT69VFMXB7')
            ->get()
            ->result();

        // $data = array();

        $sl = 1;





        foreach ($records as $record) {
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')->from('invoice_details')->where('product_id', $record->product_id)->get()->row();
            // $stock_r = $this->db->select('sum(a_qty) as totalQty')->from('rqsn_details')->where('product_id',$record->product_id)->where('status',2)->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id', $record->product_id)->get()->row();
            //$wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('warrenty_return')->where('product_id',$record->product_id,'usablity',3)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id', $record->product_id)->get()->row();

            $stock_r = $this->db->select('sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn b', 'a.rqsn_id=b.rqsn_id')
                ->where('a.product_id', $record->product_id)
                //  ->where('b.to_id','HK7TGDT69VFMXB7')
                ->where('a.iscw', 1)->get()->row();

            //   $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            $sprice = (!empty($record->price) ? $record->price : 0);
            $pprice = (!empty($stockout->purchaseprice) ? sprintf('%0.2f', $stockout->purchaseprice) : 0);
            $stock =  (!empty($stockout->totalPurchaseQnty) ? $stockout->totalPurchaseQnty : 0) - ((!empty($stockin->totalSalesQnty) ? $stockin->totalSalesQnty : 0) + (!empty($stock_r->totalQty) ? $stock_r->totalQty : 0));
            $newStock = (!empty($warrenty_stock->totalWarrentyQnty) ? $warrenty_stock->totalWarrentyQnty : 0);
            $qty = $stock - $newStock;
            $t = (!empty($qty) ? $qty : 0);

            //           if($qty<0){
            //               $qty=0;
            //           }else{
            //               $qty=$t;
            //           }

            $data[] = array(

                // 'cw_id'=>$record->to_id,

                'outlet_name' => $record->outlet_name,
                'date' => $record->date,
                'product_name' => $record->product_name,
                'quantity' => $record->quantity,
                'unit' => $record->unit,
                'details' => $record->details,
                'rqsn_detail_id' => $record->rqsn_detail_id,
                'stok_quantity' => sprintf('%0.2f', $t),

            );
        }

        ## Response


        return $data;
    }

    public function approve_rqsn_outlet_count()
    {
        $user_id = $this->session->userdata('user_id');
        $query = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.to_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('c.user_id', $user_id)
            ->get();

        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return $query;
    }

    public function approve_rqsn_outlet()
    {

        ## Fetch records

        $user_id = $this->session->userdata('user_id');
        $records = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.to_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('c.user_id', $user_id)
            ->get()
            ->result();

        // $data = array();

        $sl = 1;





        foreach ($records as $record) {
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')->from('invoice_details')->where('product_id', $record->product_id)->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id', $record->product_id)->get()->row();
            //$wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('warrenty_return')->where('product_id',$record->product_id,'usablity',3)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id', $record->product_id)->get()->row();

            $outlet_name = $this->db->select('outlet_name')->from('outlet_warehouse')->where('outlet_id', $record->from_id)->get()->row();

            $this->db->select('a.*,c.*,d.*,SUM(a.a_qty) as total_purchase');
            $this->db->from('rqsn_details a');
            $this->db->join('rqsn c', 'a.rqsn_id=c.rqsn_id');
            $this->db->join('outlet_warehouse d', 'c.from_id=d.outlet_id');
            $this->db->where('a.product_id', $record->product_id);
            $this->db->where('d.user_id', $user_id);
            $total_purchase = $this->db->get()->row();

            $this->db->select('SUM(b.quantity) as total_sale');
            $this->db->from('invoice_details b');
            $this->db->join('invoice d', 'd.invoice_id=b.invoice_id');
            //  $this->db->join('outlet_warehouse c','c.outlet_id=d.sales_by');
            $this->db->where('b.product_id', $record->product_id);
            $this->db->where('d.sales_by', $user_id);
            $total_sale = $this->db->get()->row();
            $stock_r = $this->db->select('a.*,c.*,b.*,sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn c', 'a.rqsn_id=c.rqsn_id')
                ->join('outlet_warehouse b', 'b.outlet_id=c.to_id')
                ->where('a.product_id', $record->product_id)
                ->where('b.outlet_id', $record->to_id)
                ->get()->row();


            $out_qty = (!empty($total_sale->total_sale) ? $total_sale->total_sale : 0) + (!empty($stock_r->totalQty) ? $stock_r->totalQty : 0);
            //  $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            //  $sprice = (!empty($record->price)?$record->price:0);
            // $pprice = (!empty($stockout->purchaseprice)?sprintf('%0.2f',$stockout->purchaseprice):0);
            // $stock =  (!empty($stockout->totalPurchaseQnty)?$stockout->totalPurchaseQnty:0)-$out_qty;
            $stock =  (!empty($total_purchase->total_purchase) ? $total_purchase->total_purchase : 0) - $out_qty;
            // $newStock=(!empty($warrenty_stock->totalWarrentyQnty)?$warrenty_stock->totalWarrentyQnty:0);



            $data[] = array(

                'outlet_name' => $outlet_name->outlet_name,
                'date' => $record->date,
                'product_name' => $record->product_name,
                'quantity' => $record->quantity,
                'unit' => $record->unit,
                'details' => $record->details,
                'rqsn_detail_id' => $record->rqsn_detail_id,
                'stok_quantity' => sprintf('%0.2f', $stock),

            );
        }

        ## Response


        return $data;
    }

    public function approve_chalan()
    {
        // $values = array("DV", "CV", "JV","Contra");

        return $approveinfo = $this->db->select('*')
            ->from('product_purchase_details a')
            //->join('rqsn_details b','a.rqsn_id=b.rqsn_id')
            ->join('product_purchase c', 'c.purchase_id=a.purchase_id')
            ->join('product_information d', 'd.product_id=a.product_id')
            ->where('a.status', 2)
            ->get()
            ->result();
    }


    public function rqsn_list()
    {
        // $values = array("DV", "CV", "JV","Contra");

        return $approveinfo = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 3)
            ->where('b.isaprv', 1)
            ->where('b.isrcv', 1)
            ->where('b.iscw', 1)
            ->where('a.to_id', 'HK7TGDT69VFMXB7')
            ->get()
            ->result();
    }

    public function rqsn_list_outlet()
    {
        $user_id = $this->session->userdata('user_id');
        $approveinfo = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.to_id')
            //  ->join('central_warehouse e','e.warehouse_id=a.to_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 3)
            ->where('b.isrcv', 1)
            ->where('b.iscw', 1)
            ->where('c.user_id', $user_id)
            ->get()
            ->result();



        foreach ($approveinfo as $record) {

            //            $cw=$this->db->select('*')
            //                ->from('rqsn a')
            //                ->join('central_warehouse b','a.to_id=b.warehouse_id')
            //                ->where('a.to_id',$record->to_id)
            //                ->get()
            //                ->row();

            $from = $this->db->select('*')
                ->from('rqsn a')
                ->join('outlet_warehouse b', 'a.from_id=b.outlet_id')
                ->join('central_warehouse e', 'e.warehouse_id=b.warehouse_id')
                ->where('a.from_id', $record->from_id)
                ->get()
                ->row();

            $to = $this->db->select('*')
                ->from('rqsn a')
                ->join('outlet_warehouse b', 'a.to_id=b.outlet_id')
                ->where('a.to_id', $record->to_id)
                ->get()
                ->row();

            $data[] = array(
                // 'cw'=>$cw->central_warehouse,
                'from_id' => $record->from_id,
                'to_id' => $record->to_id,
                'rqsn_id' => $record->rqsn_id,

                'from' => $to->outlet_name,
                'to' => $from->outlet_name,
                'date' => $record->date,
                'product_name' => $record->product_name,
                'a_qty' => $record->a_qty,
                'unit' => $record->unit,
                'details' => $record->details,
                'rqsn_detail_id' => $record->rqsn_detail_id


            );
        }



        return $data;
    }


    public function approve_rqsn_purchase()
    {
        // $values = array("DV", "CV", "JV","Contra");

        return $approveinfo = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            //->join('outlet_warehouse c','c.outlet_id=a.from_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 1)
            ->where('a.to_id', 3)
            ->get()
            ->result();
    }
    public function approve_outlet()
    {
        // $values = array("DV", "CV", "JV","Contra");
        $user_id = $this->session->userdata('user_id');
        $approveinfo = $this->db->select('*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('outlet_warehouse c', 'c.outlet_id=a.from_id')
            //  ->join('central_warehouse e','e.warehouse_id=a.to_id')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('b.status', 2)
            // ->where('b.isaprv',1)
            ->where('c.user_id', $user_id)
            ->get()
            ->result();



        foreach ($approveinfo as $record) {

            $cw = $this->db->select('*')
                ->from('rqsn a')
                ->join('central_warehouse b', 'a.to_id=b.warehouse_id')
                ->where('a.to_id', $record->to_id)
                ->get()
                ->row();

            $from = $this->db->select('*')
                ->from('rqsn a')
                ->join('outlet_warehouse b', 'a.from_id=b.outlet_id')
                ->join('central_warehouse e', 'e.warehouse_id=b.warehouse_id')
                ->where('a.from_id', $record->from_id)
                ->get()
                ->row();

            $to = $this->db->select('*')
                ->from('rqsn a')
                ->join('outlet_warehouse b', 'a.to_id=b.outlet_id')
                ->where('a.to_id', $record->to_id)
                ->get()
                ->row();

            $data[] = array(
                'cw' => $cw->central_warehouse,
                'from_id' => $record->from_id,
                'to_id' => $record->to_id,

                'from' => $to->outlet_name,
                'to' => $from->outlet_name,
                'date' => $record->date,
                'product_name' => $record->product_name,
                'a_qty' => $record->a_qty,
                'unit' => $record->unit,
                'details' => $record->details,
                'rqsn_detail_id' => $record->rqsn_detail_id


            );
        }



        return $data;
    }

    public function approved($data = [])
    {
        return $this->db->where('rqsn_detail_id', $data['rqsn_detail_id'])
            ->update('rqsn_details', $data);
    }

    public function chalan_received($data = [])
    {
        return $this->db->where('chalan_id', $data['chalan_id'])
            ->update('product_purchase_details', $data);
    }

    public function received($data = [])
    {
        return $this->db->where('rqsn_detail_id', $data['rqsn_detail_id'])
            ->update('rqsn_details', $data);
    }

    public function delete_rqsn($rqsn_id)
    {
        $this->db->where('rqsn_detail_id', $rqsn_id)
            ->delete('rqsn_details');
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function r_delete_rqsn($rqsn_id)
    {
        $this->db->where('rqsn_id', $rqsn_id)
            ->delete('rqsn');
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }



    public function retrieve_rqsn_editdata($req_id)
    {
        $this->db->select('a.*,b.*,c.*,d.*');
        $this->db->from('rqsn a');
        //    $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->join('rqsn_details b', 'b.rqsn_id = a.rqsn_id');
        $this->db->join('outlet_warehouse d', 'd.outlet_id = a.from_id');
        //
        $this->db->join('product_information c', 'c.product_id = b.product_id');
        $this->db->where('a.rqsn_id', $req_id);
        $this->db->group_by('c.product_id');

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function outlet_stock($postData = null)
    {
        $response = array();
        $user_id = $this->session->userdata('user_id');
        ## Read value
        $draw = $postData['draw'];
        $start = $postData['start'];
        $rowperpage = $postData['length']; // Rows display per page
        $columnIndex = $postData['order'][0]['column']; // Column index
        $columnName = $postData['columns'][$columnIndex]['data']; // Column name
        $columnSortOrder = $postData['order'][0]['dir']; // asc or desc
        $searchValue = $postData['search']['value']; // Search value

        ## Search
        $searchQuery = "";
        if ($searchValue != '') {
            $searchQuery = " (d.product_name like '%" . $searchValue . "%' or d.product_model like '%" . $searchValue . "%') ";
        }

        ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information d');
        if ($searchValue != '') {
            $this->db->where($searchQuery);
        }
        $this->db->group_by('d.product_id');
        $records = $this->db->get()->num_rows();
        $totalRecords = $records;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information d');
        if ($searchValue != '') {
            $this->db->where($searchQuery);
        }
        $this->db->group_by('d.product_id');
        $records = $this->db->get()->num_rows();
        $totalRecordwithFilter = $records;

        $user_id = $this->session->userdata('user_id');

        ## Fetch records
        $this->db->select("*");
        $this->db->from('rqsn a');
        $this->db->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id');
        $this->db->join('outlet_warehouse c', 'c.outlet_id=a.to_id');
        $this->db->join('product_information d', 'd.product_id=b.product_id');
        $this->db->where('b.status', 3);
        $this->db->or_where('b.status', 2);
        // $this->db->where('b.isrcv',1);
        //$this->db->where('b.isaprv',1);
        $this->db->where('c.user_id', $user_id);
        if ($searchValue != '')
            $this->db->where($searchQuery);
        $this->db->order_by($columnName, $columnSortOrder);
        $this->db->group_by('d.product_id');
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();

        $sl = 1;





        foreach ($records as $record) {

            $stockin = $this->db->select('sum(a.quantity) as totalSalesQnty')
                ->from('invoice_details a')
                ->join('invoice d', 'd.invoice_id=a.invoice_id')
                // ->join('outlet_warehouse c','c.outlet_id=d.sales_by')
                ->where('a.product_id', $record->product_id)
                ->where('d.sales_by', $user_id)
                ->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id', $record->product_id)->get()->row();

            //$wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('warrenty_return')->where('product_id',$record->product_id,'usablity',3)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id', $record->product_id)->get()->row();


            $sprice = (!empty($record->price) ? $record->price : 0);
            $pprice = (!empty($stockout->purchaseprice) ? sprintf('%0.2f', $stockout->purchaseprice) : 0);
            $stock =  (!empty($stockout->totalPurchaseQnty) ? $stockout->totalPurchaseQnty : 0) - (!empty($stockin->totalSalesQnty) ? $stockin->totalSalesQnty : 0);
            //  $newStock=(!empty($warrenty_stock->totalWarrentyQnty)?$warrenty_stock->totalWarrentyQnty:0);

            $to_id = $this->db->select('a.to_id')
                ->from('rqsn a')
                ->join('outlet_warehouse b', 'b.outlet_id=a.to_id')
                ->where('b.user_id', $user_id)
                ->get()->row();

            $tr_qty = $this->db->select('c.*,sum(a.a_qty) as totalTrQty')
                ->from('rqsn_details a')
                ->join('rqsn c', 'a.rqsn_id=c.rqsn_id')
                // ->join('outlet_warehouse b', 'b.outlet_id=c.from_id')
                ->where('a.product_id', $record->product_id)
                ->where('c.to_id', $to_id->to_id)
                ->where('a.isaprv', 1)
                //->where('isrcv',1)
                ->get()->row();

            $return_given = $this->db->select('sum(a.ret_qty) as totalReturnQnty')
                ->from('rqsn_return a')
                // ->join('rqsn c', 'a.rqsn_id=c.rqsn_id')
                ->join('outlet_warehouse b', 'b.outlet_id=a.from_id')
                ->where('a.product_id', $record->product_id)
                ->where('b.user_id', $user_id)
                //->where('a.isaprv',1)
                //->where('isrcv',1)
                ->get()->row();



            //$return_given = $this->db->select('sum(ret_qty) as totalReturnQnty')->from('rqsn_return')->where('product_id',$record->product_id)->where('from_id', $to_id->to_id)->get()->row();




            $this->db->select('a.*,c.*,d.*,SUM(a.a_qty) as total_purchase');
            $this->db->from('rqsn_details a');
            $this->db->join('rqsn c', 'a.rqsn_id=c.rqsn_id');
            $this->db->join('outlet_warehouse d', 'c.from_id=d.outlet_id');
            $this->db->where('a.product_id', $record->product_id);
            $this->db->where('d.user_id', $user_id);
            $this->db->where('a.isaprv', 1);
            $this->db->where('a.isrcv', 1);
            $total_purchase = $this->db->get()->row();

            $this->db->select('SUM(b.quantity) as total_sale');
            $this->db->from('invoice_details b');
            $this->db->join('invoice d', 'd.invoice_id=b.invoice_id');
            //  $this->db->join('outlet_warehouse c','c.outlet_id=d.sales_by');
            $this->db->where('b.product_id', $record->product_id);
            $this->db->where('d.sales_by', $user_id);
            $total_sale = $this->db->get()->row();

            $out_qty = (!empty($total_sale->total_sale) ? $total_sale->total_sale : 0) + (!empty($tr_qty->totalTrQty) ? $tr_qty->totalTrQty : 0);
            $stock =  (!empty($total_purchase->total_purchase) ? $total_purchase->total_purchase : 0) - $out_qty;

            $data[] = array(
                'sl'            =>   $sl,
                'product_name'  =>  $record->product_name,
                'product_model' =>  $record->product_model,
                'sales_price'   =>  sprintf('%0.2f', $sprice),
                'purchase_p'    =>  $pprice,
                'totalPurchaseQnty' => sprintf('%0.2f', $total_purchase->total_purchase),
                'totalSalesQnty' => sprintf('%0.2f', $tr_qty->totalTrQty),
                //'warrenty_stock'=>  $warrenty_stock->totalWarrentyQnty,
                //'wastage_stock'=>  $wastage_stock->totalWastageQnty,
                'dispatch' => $total_sale->total_sale,
                'return_given' => sprintf('%0.2f', $return_given->totalReturnQnty),
                'stok_quantity' => sprintf('%0.2f', $stock),
                'total_sale_price' => ($stock) * $sprice,
                'purchase_total' => ($stock) * $pprice,

            );
            $sl++;
        }

        ## Response
        $response = array(
            "draw" => intval($draw),
            "iTotalRecords" => $totalRecordwithFilter,
            "iTotalDisplayRecords" => $totalRecords,
            "aaData" => $data
        );

        return $response;
    }



    // customer information
    public function customer_info($customer_id)
    {
        return $this->db->select('*')
            ->from('customer_information')
            ->where('customer_id', $customer_id)
            ->get()
            ->row();
    }




    public function employees()
    {
        $this->db->select('*');
        $this->db->from('employee_history');
        $query = $this->db->get();
        $data = $query->result();

        $list[''] = 'Select Employee';
        if (!empty($data)) {
            foreach ($data as $value) {
                $list[$value->id] = $value->first_name . ' ' . $value->last_name;
            }
        }
        return $list;
    }

    public function rqsn_details_data()
    {
        $records = $this->db->select('a.*, b.*, c.*, d.*,e.*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information e', 'e.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('a.status', 2)
            ->group_by('b.rqsn_id')
            ->order_by('a.id', 'desc')
            ->get()
            ->result_array();

        return $records;
    }

    public function store_qty_data()
    {
        $records = $this->db->select('a.*, b.*, c.*, d.*,e.*,(SUM(b.store_qty))as sq')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information e', 'e.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('a.status', 3)
            ->group_by('b.rqsn_id')
            ->order_by('a.id', 'desc')
            ->get()
            ->result_array();

        return $records;
    }

    public function draft_rqsn_details_data()
    {
        $records = $this->db->select('a.*, b.*, c.*, d.*,e.*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information e', 'e.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('a.status', 1)
            ->group_by('b.rqsn_id')
            ->order_by('a.id', 'desc')
            ->get()
            ->result_array();

        return $records;
    }

    public function rqsn_details_data_price()
    {
        $records = $this->db->select('a.*, b.*, c.*, d.*,e.*')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information e', 'e.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->where('a.status', 2)
            ->group_by('b.rqsn_id')
            ->order_by('a.id', 'desc')
            ->get()
            ->result_array();

        return $records;
    }

    public function rqsn_details_data_by_rqsn_id($rqsn_id)
    {
        $records = $this->db->select('a.*, b.*, c.*,e.*,x.*, d.*,z.supplier_price,e.category_name,f.subcat_name,g.brand_name,h.model_name')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information x', 'x.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->join('supplier_product z', 'z.product_id = d.product_id', 'left')
            ->join('product_category e', 'e.category_id = d.category_id', 'left')
            ->join('product_subcat f', 'f.sub_cat_id = d.sub_cat_id', 'left')
            ->join('product_brand g', 'g.brand_id = d.brand_id', 'left')
            ->join('product_model h', 'h.model_id = d.product_model', 'left')
            ->where('b.status', 1)
            ->where('b.rqsn_id', $rqsn_id)
            ->group_by('b.product_id')
            ->get()
            ->result_array();

        return $records;
    }

    public function rqsn_qty_form($rqsn_id)
    {
        $records = $this->db->select('a.*, b.*, c.*,e.*,x.*, d.*,z.supplier_price,e.category_name,f.subcat_name,g.brand_name,h.model_name')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information x', 'x.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->join('supplier_product z', 'z.product_id = d.product_id', 'left')
            ->join('product_category e', 'e.category_id = d.category_id', 'left')
            ->join('product_subcat f', 'f.sub_cat_id = d.sub_cat_id', 'left')
            ->join('product_brand g', 'g.brand_id = d.brand_id', 'left')
            ->join('product_model h', 'h.model_id = d.product_model', 'left')
//            ->where('b.status', 1)
//            ->where('a.status', 3)
            ->where('b.rqsn_id', $rqsn_id)
            ->group_by('b.product_id')
            ->get()
            ->result();


        $data = array();

        $sl =1;


        $yesterday=date('Y-m-d',strtotime( "yesterday" ));


        foreach($records as $record ){
            $stockin = $this->db->select('sum(quantity) as totalPurchaseQnty')
                ->from('erp_entry_details')
                ->where('product_id',$record->product_id)
                ->get()->row();

            $stockin_yes = $this->db->select('sum(quantity) as totalPurchaseQnty')
                ->from('erp_entry_details')
                ->where('product_id',$record->product_id)
                ->where('date <=',$yesterday)
                ->get()->row();

            $stockout = $this->db->select('sum(a.quantity) as totalSalesQnty')
                ->from('invoice_details a')
                ->join('invoice b','a.invoice_id=b.invoice_id')
                ->where('a.product_id',$record->product_id)
                ->where('b.status',3 )
//                ->or_where('b.status',4)
                ->get()->row();
            $stockout_yes = $this->db->select('sum(a.quantity) as totalSalesQnty')
                ->from('invoice_details a')
                ->join('invoice b','a.invoice_id=b.invoice_id')
                ->where('a.product_id',$record->product_id)
                ->where('b.date <=',$yesterday)
                ->where('b.status',3)
//                ->or_where('b.status',4)
                ->get()->row();

            $oldest_data = $this->db->select('a.*,a.date as stock_date')
                ->from('erp_entry_details a')
                ->where('a.product_id',$record->product_id)
                ->order_by('a.entry_id','desc')
                ->get()->row();

            $oldest_data_yes = $this->db->select('a.*,a.date as stock_date')
                ->from('erp_entry_details a')
                ->where('a.product_id',$record->product_id)
                ->where('a.date <=',$yesterday)
                ->order_by('a.entry_id','desc')
                ->get()->row();


            $wd_stock = $this->db->select('sum(wastage_quantity) as totalWastageQnty,sum(dead_quantity) as totalDeadQnty')->from('wastage_dec')->where('product_id',$record->product_id)->get()->row();
            $wd_stock_yes = $this->db->select('sum(wastage_quantity) as totalWastageQnty,sum(dead_quantity) as totalDeadQnty')->from('wastage_dec')->where('product_id',$record->product_id)->where('date <=',$yesterday)->get()->row();

            $wastage_stock=(!empty($wd_stock->totalWastageQnty)?$wd_stock->totalWastageQnty:0);
            $wastage_stock_yes=(!empty($wd_stock_yes->totalWastageQnty)?$wd_stock_yes->totalWastageQnty:0);

            $dead_stock=(!empty($wd_stock->totalDeadQnty)?$wd_stock->totalDeadQnty:0);
            $dead_stock_yes=(!empty($wd_stock_yes->totalDeadQnty)?$wd_stock_yes->totalDeadQnty:0);

            $purchase_stock=(!empty($stockin->totalPurchaseQnty)?$stockin->totalPurchaseQnty:0);
            $purchase_stock_yes=(!empty($stockin_yes->totalPurchaseQnty)?$stockin_yes->totalPurchaseQnty:0);
            $sales_stock=(!empty($stockout->totalSalesQnty)?$stockout->totalSalesQnty:0);
            $sales_stock_yes=(!empty($stockout_yes->totalSalesQnty)?$stockout_yes->totalSalesQnty:0);


            $opening_stock=$purchase_stock_yes-$sales_stock_yes-$wastage_stock_yes;
            $closing_stock=$opening_stock+($purchase_stock-$sales_stock-$wastage_stock);





            $data[] = array(
                'sl'            =>   $sl,
                'date'  =>  $record->date,
                'rqsn_no'  =>  $record->rqsn_no,
                'customer_name'  =>  $record->customer_name,
                'customer_id'  =>  $record->customer_id,
                'vessel_name'  =>  $record->vessel_name,
                'product_name'  =>  $record->product_name,
                'product_id'  =>  $record->product_id,
                'rqsn_detail_id'  =>  $record->rqsn_detail_id,
                'sku' =>  $record->sku,
                'category_name' =>  $record->category_name,
                'subcat_name' =>  $record->subcat_name,
                'brand_name' =>  $record->brand_name,
                'model_name' =>  $record->model_name,
                'a_qty' =>  $record->a_qty,
                'quantity' =>  $record->quantity,
                'avg_price'=>$stockin->avg_price,
                'stok_quantity' => sprintf('%0.2f',$closing_stock),
                'stock_value'=> $closing_stock*($stockin->avg_price),

            );
            $sl++;
        }



        return $data;
    }

    public function store_qty_form($rqsn_id)
    {
        $records = $this->db->select('a.*, b.*, c.*,e.*,x.*, d.*,z.supplier_price,e.category_name,f.subcat_name,g.brand_name,h.model_name')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information x', 'x.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->join('supplier_product z', 'z.product_id = d.product_id', 'left')
            ->join('product_category e', 'e.category_id = d.category_id', 'left')
            ->join('product_subcat f', 'f.sub_cat_id = d.sub_cat_id', 'left')
            ->join('product_brand g', 'g.brand_id = d.brand_id', 'left')
            ->join('product_model h', 'h.model_id = d.product_model', 'left')
            ->where('b.status', 1)
           // ->where('a.status', 3)
            ->where('b.rqsn_id', $rqsn_id)
            ->group_by('b.product_id')
            ->get()
            ->result_array();

        return $records;
    }

    public function rqsn_details_data_by_rqsn_id_price($rqsn_id)
    {
        $records = $this->db->select('a.*, b.*, c.*,e.*,x.*, d.*,z.supplier_price,e.category_name,f.subcat_name,g.brand_name,h.model_name')
            ->from('rqsn a')
            ->join('rqsn_details b', 'a.rqsn_id=b.rqsn_id')
            ->join('customer_vessel c', 'c.customer_id=a.rqsn_customer_name','left')
            ->join('customer_information x', 'x.customer_id=a.rqsn_customer_name','left')
            ->join('product_information d', 'd.product_id=b.product_id')
            ->join('supplier_product z', 'z.product_id = d.product_id', 'left')
            ->join('product_category e', 'e.category_id = d.category_id', 'left')
            ->join('product_subcat f', 'f.sub_cat_id = d.sub_cat_id', 'left')
            ->join('product_brand g', 'g.brand_id = d.brand_id', 'left')
            ->join('product_model h', 'h.model_id = d.product_model', 'left')
            ->where('b.status', 1)
            // ->where('a.status', 3)
            ->where('b.rqsn_id', $rqsn_id)
            ->group_by('b.product_id')
            ->get()
            ->result_array();

        return $records;
    }


    public function rqsn_draft_final($rqsn_id)
    {


        $CI = &get_instance();
        $p_id = $this->input->post("product_id[]", true);
        $quantity = $this->input->post("product_quantity", true);
        $rqsn_detail_id = $this->input->post("rqsn_detail_id", true);

        for ($i = 0, $n   = count($rqsn_detail_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            $rq_id  = $rqsn_detail_id[$i];
            $product_id  = $p_id[$i];

            $supplier_price = $this->db->select('supplier_price')->from('supplier_product')->where('product_id', $product_id)->get()->row();

            $price = $qty * ($supplier_price->supplier_price);

            //
            //                'quantity'                => $qty,
            //            );            //            $rqsn_details = array(

            if (!empty($quantity)) {
                $this->db->where('rqsn_detail_id', $rq_id);
                $this->db->set(array('quantity'=> $qty,'total'=>$price));
                $this->db->update('rqsn_details');
            }
        }

        $sq = "UPDATE rqsn
        SET status = 2
        WHERE rqsn_id = " . $rqsn_id . "
        ";

        $this->db->query($sq);
    }


    public function rqsn_update_final($rqsn_id)
    {


        $total_price = $this->input->post("total_price", true);
        $quantity = $this->input->post("quantity", true);
        $rate = $this->input->post("rate", true);
        $rqsn_detail_id = $this->input->post("rqsn_detail_id", true);

        for ($i = 0, $n   = count($rqsn_detail_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            $rt  = $rate[$i];
            $rq_id  = $rqsn_detail_id[$i];
            $total  = $total_price[$i];


            //            $rqsn_details = array(
            //
            //                'quantity'                => $qty,
            //            );
            if (!empty($quantity)) {

                $this->db->where('rqsn_detail_id', $rq_id);
                $this->db->set(array('a_qty'=>$qty,
                    'rate'=>$rt,
                    'total'=>$total,

                ));
                $this->db->update('rqsn_details');
            }
        }

//        $sq = "UPDATE rqsn
//        SET status = 3, is_sold = 0
//        WHERE rqsn_id = " . $rqsn_id . "
//        ";
//
//        $this->db->query($sq);
    }

    public function rqsn_qty_final($rqsn_id)
    {


        $purchase_qty = $this->input->post("purchase_qty", true);
        $store_qty = $this->input->post("store_qty", true);
        $quantity = $this->input->post("quantity", true);
        $rqsn_detail_id = $this->input->post("rqsn_detail_id", true);

        for ($i = 0, $n   = count($rqsn_detail_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            $rq_id  = $rqsn_detail_id[$i];
            $pur_qty  = $purchase_qty[$i];
            $str_qty  = $store_qty[$i];


            //            $rqsn_details = array(
            //
            //                'quantity'                => $qty,
            //            );
            if (!empty($pur_qty)) {

                $this->db->where('rqsn_detail_id', $rq_id);
                $this->db->set(array('a_qty'=>$qty,'purchase_qty'=>$pur_qty,'store_qty'=>$str_qty));
                $this->db->update('rqsn_details');
            }
        }

        $sq = "UPDATE rqsn
        SET status = 3, is_sold = 0
        WHERE rqsn_id = " . $rqsn_id . "
        ";

        $this->db->query($sq);
    }

    public function autocompletproductdata($product_name, $category_id = null, $subcat_id = null, $brand_id = null, $model_id = null)
    {
        $this->db->select('a.*, c.brand_name');
        $this->db->from('product_information a');

        // $this->db->join('product_model b', 'b.model_id = a.product_model');
        $this->db->join('product_brand c', 'c.brand_id = a.brand_id','left');
      // $this->db->where('a.category_id', $category_id);
        // ->or_where('a.category_id', $category_id)
        // ->or_where('a.sub_cat_id', $subcat_id)
        // ->or_where('a.brand_id', $brand_id)
        // ->or_where('a.product_model', $model_id)

        if (!empty($subcat_id) && !empty($brand_id) && !empty($model_id) && !empty($category_id)) {
            $this->db->where('a.brand_id', $brand_id)
                ->where('a.product_model', $model_id)
                ->where('a.sub_cat_id', $subcat_id)
                ->where('a.category_id', $category_id);
        } elseif (!empty($category_id) && !empty($brand_id) && !empty($model_id)) {
            $this->db->where('a.brand_id', $brand_id)
                ->where('a.product_model', $model_id)
                ->where('a.category_id', $category_id);
        } elseif (!empty($category_id) && !empty($subcat_id) && !empty($model_id)) {
            $this->db->where('a.sub_cat_id', $subcat_id)
                ->where('a.product_model', $model_id)
                ->where('a.category_id', $category_id);
        } elseif (!empty($category_id) && !empty($subcat_id) && !empty($brand_id)) {
            $this->db->where('a.sub_cat_id', $subcat_id)
                ->where('a.brand_id', $brand_id)
                ->where('a.category_id', $category_id);
        } elseif (!empty($subcat_id) && !empty($brand_id) && !empty($model_id)) {
            $this->db->where('a.brand_id', $brand_id)
                ->where('a.product_model', $model_id)
                ->where('a.sub_cat_id', $subcat_id);
        } elseif (!empty($category_id) && !empty($subcat_id)) {
            $this->db->where('a.category_id', $category_id);
            $this->db->where('a.sub_cat_id', $subcat_id);
        } elseif (!empty($category_id) && !empty($brand_id)) {
            $this->db->where('a.category_id', $category_id)
                ->where('a.brand_id', $brand_id);
        } elseif (!empty($category_id) && !empty($model_id)) {
            $this->db->where('a.category_id', $category_id)
                ->where('a.product_model', $model_id);
        } elseif (!empty($subcat_id) && !empty($brand_id)) {
            $this->db->where('a.sub_cat_id', $subcat_id)
                ->where('a.brand_id', $brand_id);
        } elseif (!empty($subcat_id) && !empty($model_id)) {
            $this->db->where('a.sub_cat_id', $subcat_id)
                ->where('a.product_model', $model_id);
        } elseif (!empty($brand_id) && !empty($model_id)) {
            $this->db->where('a.brand_id', $brand_id)
                ->where('a.product_model', $model_id);
        } elseif (!empty($category_id)) {

            $this->db->where('a.category_id', $category_id);
        } elseif (!empty($subcat_id)) {

            $this->db->where('a.sub_cat_id', $subcat_id);
        } elseif (!empty($brand_id)) {

            $this->db->where('a.brand_id', $brand_id);
        } elseif (!empty($model_id)) {

            $this->db->where('a.product_model', $model_id);
        }

        $this->db->group_start()
            ->like('a.product_name', $product_name, 'both')
            // ->or_like('b.model_name', $product_name, 'both')
            ->or_like('a.parts', $product_name, 'both')
            ->or_like('a.sku', $product_name, 'both')
            ->group_end()
            // ->or_like('c.brand_name', $product_name, 'both')
            ->order_by('product_name', 'asc')
            ->limit(15);
        $query = $this->db->get();



        // echo '<pre>'; print_r($query->result_array()); exit();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function get_approved_rqsn()
    {
        $this->db->select('*');
        $this->db->from('rqsn');
        $this->db->where('is_sold', 0);

        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function approved_rqsn_details($rqsn_id)
    {
        $this->db->select('*');
        $this->db->from('rqsn a');
        $this->db->where('a.rqsn_id', $rqsn_id);
        $this->db->join('rqsn_details c', 'c.rqsn_id = a.rqsn_id');
        $this->db->join('product_information b', 'c.product_id = b.product_id');
        $this->db->join('product_brand d', 'd.brand_id = b.brand_id', 'left');
        $this->db->join('product_model e', 'e.model_id = b.product_model', 'left');
        $this->db->join('customer_information x', 'x.customer_id = a.rqsn_customer_name', 'left');
      //  $this->db->join('customer_vessel y', 'y.customer_id = a.from_id', 'left');
        $query = $this->db->get();

        return $query->result_array();
    }
}
