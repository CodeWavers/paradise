<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class reports extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    //Count report
    public function count_stock_report() {
        $this->db->select("a.unit,a.product_name,a.product_id,a.price,a.product_model,(select sum(quantity) from invoice_details where product_id= `a`.`product_id`) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->where(array('a.status' => 1));
        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        $stock = 0;
        $i = 0;
        foreach ($result as $stockproduct) {
            $stokqty = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
            if($stokqty < 10){

                $stock =$stock+1;

            }
            $i++;
        }
        return $stock;
    }

    //Out of stock
    public function out_of_stock() {

        $this->db->select("a.unit,a.product_name,a.product_id,a.price,a.product_model,(select sum(quantity) from invoice_details where product_id= `a`.`product_id`) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->where(array('a.status' => 1));
        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        $stock = [];
        $i = 0;
        foreach ($result as $stockproduct) {
            $stokqty = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
            if($stokqty < 10){

                $stock[$i]['stock']         = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
                $stock[$i]['product_id']    = $stockproduct['product_id'];
                $stock[$i]['product_name']  = $stockproduct['product_name'];
                $stock[$i]['product_model'] = $stockproduct['product_model'];
                $stock[$i]['unit']          = $stockproduct['unit'];
            }
            $i++;
        }
        return $stock;
    }




    public function trash_hold_count() {
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model
                ");
        $this->db->from('product_information a');

        //$this->db->order_by($columnName, $columnSortOrder);
        $this->db->group_by('a.product_id');
        // $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();
        $stock=0;
        $sl =0;





        foreach($records as $record ){
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')
                ->from('invoice_details')
                ->where('product_id',$record->product_id)
                ->where('status',1)
                ->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id',$record->product_id)->get()->row();
            $wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('rqsn_return')->where('product_id',$record->product_id)->where('usablity',3)->get()->row();
            $return_rcv = $this->db->select('sum(ret_qty) as totalReturnQnty')->from('rqsn_return')->where('product_id',$record->product_id)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id',$record->product_id)->where('status',1)->get()->row();



            $stock_r = $this->db->select('sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn b','a.rqsn_id=b.rqsn_id')
                ->where('a.product_id',$record->product_id)
                //  ->where('b.to_id','HK7TGDT69VFMXB7')
                ->where('a.iscw',1)->get()->row();


            $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            $sprice = (!empty($record->price)?$record->price:0);
            $pprice = (!empty($stockout->purchaseprice)?sprintf('%0.2f',$stockout->purchaseprice):0);
            $stock =  (!empty($stockout->totalPurchaseQnty)?$stockout->totalPurchaseQnty:0)-$out_qty;
            $newStock=(!empty($warrenty_stock->totalWarrentyQnty)?$warrenty_stock->totalWarrentyQnty:0);

            $main_stock=$stock-$newStock-($wastage_stock->totalWastageQnty);




            if($main_stock < $record->re_order_level) {

                $sl=$sl+1;
            }



        }
        return $sl;
    }

    public function trash_hold() {
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model
                ");
        $this->db->from('product_information a');

        //$this->db->order_by($columnName, $columnSortOrder);
        $this->db->group_by('a.product_id');
        // $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();

        $sl =1;





        foreach($records as $record ){
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')
                ->from('invoice_details')
                ->where('product_id',$record->product_id)
                ->where('status',1)
                ->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id',$record->product_id)->get()->row();
            $wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('rqsn_return')->where('product_id',$record->product_id)->where('usablity',3)->get()->row();
            $return_rcv = $this->db->select('sum(ret_qty) as totalReturnQnty')->from('rqsn_return')->where('product_id',$record->product_id)->get()->row();
            $stockout = $this->db->select('sum(qty) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id',$record->product_id)->where('status',1)->get()->row();



            $stock_r = $this->db->select('sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn b','a.rqsn_id=b.rqsn_id')
                ->where('a.product_id',$record->product_id)
                //  ->where('b.to_id','HK7TGDT69VFMXB7')
                ->where('a.iscw',1)->get()->row();


            $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            $sprice = (!empty($record->price)?$record->price:0);
            $pprice = (!empty($stockout->purchaseprice)?sprintf('%0.2f',$stockout->purchaseprice):0);
            $stock =  (!empty($stockout->totalPurchaseQnty)?$stockout->totalPurchaseQnty:0)-$out_qty;
            $newStock=(!empty($warrenty_stock->totalWarrentyQnty)?$warrenty_stock->totalWarrentyQnty:0);

            $main_stock=$stock-$newStock-($wastage_stock->totalWastageQnty);




            if($main_stock < $record->re_order_level) {
                $data[] = array(

                    'product_name' => $record->product_name,
                    'product_model' => $record->product_model,
                    'unit' => $record->unit,

                    'stok_quantity' => sprintf('%0.2f', $main_stock),

                );
            }
            $sl++;


        }
        return $data;
    }

    public function birthday_noti() {

        $month=date("m");
        $day=date("d");

        $this->db->select("a.*,b.designation as des");
        $this->db->from('employee_history a');
        $this->db->join('designation b','a.designation=b.id');

        $this->db->where('DATE_FORMAT(dob,"%m")',$month);
        $this->db->where('DATE_FORMAT(dob,"%d")',$day);
//        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        // $stock = [];
        $i = 0;
        foreach ($result as $r) {
            // $stokqty = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];


            //  $stock[$i]['stock']         = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
            $data[$i]['id']    = $r['id'];
            $data[$i]['first_name']  = $r['first_name'];
            $data[$i]['designation'] = $r['des'];
            $data[$i]['dob']          = $r['dob'];
            $data[$i]['month']          = $month;
            $data[$i]['date']          = $day;

            $i++;
        }
        return $data;
    }

    public function expired_stock() {

        $this->db->select("b.*,a.*");
        $this->db->from('product_purchase_details b');
        $this->db->join('product_information a','a.product_id=b.product_id');
        $this->db->where(array('a.status' => 1));
        // $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        $stock = [];
        $i = 0;
        foreach ($result as $stockproduct) {
            date_default_timezone_set("Asia/Dhaka");
            $today = date('Y-m-d');
            $expired_date = $stockproduct['expired_date'];
            if($expired_date && $expired_date < $today){

                //   $stock[$i]['stock']         = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
                $stock[$i]['product_id']    = $stockproduct['product_id'];
                $stock[$i]['product_name']  = $stockproduct['product_name'];
                $stock[$i]['product_model'] = $stockproduct['product_model'];
                $stock[$i]['unit']          = $stockproduct['unit'];
                $stock[$i]['expired_date']          = $stockproduct['expired_date'];
                $stock[$i]['barcode']          = $stockproduct['barcode'];
            }
            $i++;
        }
        return $stock;
    }

    public function product_price_led() {

        $this->db->select("a.*,b.*,c.*");
        $this->db->from('supplier_product_price a');
        $this->db->join('product_information b','a.product_id=b.product_id');
        $this->db->join('supplier_information c','c.supplier_id=a.supplier_id');
        $this->db->where(array('a.status' => 2));
        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    public function product_price($product_id) {

        $this->db->select("a.*,  b.*,c.*");
        $this->db->from('supplier_product_price a');
        $this->db->join('product_information b','a.product_id=b.product_id');
        $this->db->join('supplier_information c','c.supplier_id=a.supplier_id');
        $this->db->where(array('a.status' => 2,'a.product_id'=>$product_id));
        //    $this->db->order_by('a.date', 'DESC');
        // $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    public function product_price_date_wise($start_date = null,$end_date = null) {
        //  $datbetween = "(a.date BETWEEN '$start_date' AND '$end_date')";
        $this->db->select("a.*,b.*,c.*");
        $this->db->from('supplier_product_price a');
        $this->db->join('product_information b','a.product_id=b.product_id');
        $this->db->join('supplier_information c','c.supplier_id=a.supplier_id');
        $this->db->where('a.status', 1);
        $this->db->where('a.date >=',$start_date);
        $this->db->where('a.date <=',$end_date);
        $this->db->order_by('a.date','desc');
//
//        if($start_date){
//            $this->db->where('a.date',$start_date);
//        }
//        if($end_date){
//            $this->db->where('a.date',$end_date);
//        }
//        if ($start_date && $end_date){
//            $this->db->where('a.date >=',$start_date);
//            $this->db->where('a.date <=',$end_date);
//        }

        // $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    public function expired_stock_count() {

        $this->db->select("b.*,a.*");
        $this->db->from('product_purchase_details b');
        $this->db->join('product_information a','a.product_id=b.product_id');
        $this->db->where(array('a.status' => 1));
        // $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        $stock = [];
        $i = 0;
        foreach ($result as $stockproduct) {
            date_default_timezone_set("Asia/Dhaka");
            $today = date('Y-m-d');
            $expired_date = $stockproduct['expired_date'];
            if($expired_date && $expired_date < $today){

                $i++;
            }

        }
        return $i;
    }

    //Out of stock count
    public function out_of_stock_count() {



        $this->db->select("a.unit,a.product_name,a.product_id,a.price,a.product_model,(select sum(quantity) from invoice_details where product_id= `a`.`product_id`) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->where(array('a.status' => 1));
        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        $result = $query->result_array();
        $stock = 0;
        $i = 0;
        foreach ($result as $stockproduct) {
            $stokqty = $stockproduct['totalBuyQnty']-$stockproduct['totalSalesQnty'];
            if($stokqty < 10){

                $stock =$stock+1;

            }
            $i++;
        }
        return $stock;

    }


    public function birthday_noti_count() {
        $month=date("m");
        $day=date("d");
        $this->db->select("a.*,b.designation as des");
        $this->db->from('employee_history a');
        $this->db->join('designation b','a.designation=b.id');
        $this->db->where('DATE_FORMAT(dob,"%m")',$month);
        $this->db->where('DATE_FORMAT(dob,"%d")',$day);
//        $this->db->where(array('a.status' => 1));
//        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        if ($query->num_rows() >= 0) {
            return $query->num_rows();
        }
        return $query;

    }

    //Retrieve Single Item Stock Stock Report
    public function stock_report($limit, $page) {
        $this->db->select("a.product_name,a.product_id,a.cartoon_quantity,a.price, a.product_model,sum(b.quantity) as 'totalSalesQnty',(select sum(product_purchase_details.quantity) from product_purchase_details where product_id= `a`.`product_id`) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->join('invoice_details b', 'b.product_id = a.product_id');
        $this->db->where(array('a.status' => 1, 'b.status' => 1));
        $this->db->group_by('a.product_id');
        $this->db->order_by('a.product_id', 'desc');
        $this->db->limit($limit, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve Single Item Stock Stock Report
    public function stock_report_single_item($product_id) {
        $this->db->select("a.product_name,a.cartoon_quantity,a.price,a.product_model,sum(b.quantity) as 'totalSalesQnty',sum(c.quantity) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->join('invoice_details b', 'b.product_id = a.product_id');
        $this->db->join('product_purchase_details c', 'c.product_id = a.product_id');
        $this->db->where(array('a.product_id' => $product_id, 'a.status' => 1, 'b.status' => 1));
        $this->db->group_by('a.product_id');
        $this->db->order_by('a.product_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Stock Report by date
    public function stock_report_bydate($product_id, $date, $limit, $page) {

        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model,
                sum(b.sell) as 'totalSalesQnty',
                sum(b.Purchase) as 'totalPurchaseQnty',
                AVG(c.supplier_price) as 'purchasprice'
                ");
        $this->db->from('product_information a');

        $this->db->join('stock_history b', 'b.product_id = a.product_id', 'left');
        $this->db->join('supplier_product c', 'c.product_id = a.product_id', 'left');
        if (empty($product_id)) {
            $this->db->where(array('a.status' => 1));
        } else {
            //Single product information
            $this->db->where(array('a.status' => 1, 'b.vdate <= ' => $date, 'a.product_id' => $product_id));
        }

        $this->db->group_by('a.product_id');
        $this->db->order_by('a.product_name', 'asc');
        $this->db->limit($limit, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }


    public function totalnumberof_product(){
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model,
                c.supplier_price
                ");
        $this->db->from('product_information a');

        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->group_by('a.product_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;

    }



    public function getCheckList($postData=null){

        $response = array();

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
        if($searchValue != ''){
            $searchQuery = " (a.product_name like '%".$searchValue."%' or b.model_name like '%".$searchValue."%') ";
        }

        ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('product_model b','a.product_model=b.model_id');
        if($searchValue != ''){
            $this->db->where($searchQuery);
        }
        $this->db->group_by('a.product_id');
        $records = $this->db->get()->num_rows();
        $totalRecords = $records;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('product_model b','a.product_model=b.model_id');
        if($searchValue != ''){
            $this->db->where($searchQuery);
        }
        $this->db->group_by('a.product_id');
        $records = $this->db->get()->num_rows();
        $totalRecordwithFilter = $records;

        ## Fetch records
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                b.model_name
                ");
        $this->db->from('product_information a');
        $this->db->join('product_model b','a.product_model=b.model_id');
        if($searchValue != '')
            $this->db->where($searchQuery);
        $this->db->order_by($columnName, $columnSortOrder);
        $this->db->group_by('a.product_id');
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();

        $sl =1;





        foreach($records as $record ){
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')
                ->from('invoice_details')
                ->where('product_id',$record->product_id)
                ->where('status',1)
                ->get()->row();
            $warrenty_stock = $this->db->select('sum(ret_qty) as totalWarrentyQnty')->from('warrenty_return')->where('product_id',$record->product_id)->get()->row();
            $wastage_stock = $this->db->select('sum(ret_qty) as totalWastageQnty')->from('rqsn_return')->where('product_id',$record->product_id)->where('usablity',3)->get()->row();
            $return_rcv = $this->db->select('sum(ret_qty) as totalReturnQnty')->from('rqsn_return')->where('product_id',$record->product_id)->get()->row();
            $stockout = $this->db->select('sum(c.quantity) as totalPurchaseQnty,Avg(a.rate) as purchaseprice')
                ->from('product_purchase_details a')
                ->join('erp_entry_details c','a.product_id=c.product_id')
                ->join('product_purchase b','a.purchase_id=b.purchase_id')
                ->where('a.product_id',$record->product_id)
                ->where('a.isaprv',1)->get()->row();



            $stock_r = $this->db->select('sum(a.a_qty) as totalQty')
                ->from('rqsn_details a')
                ->join('rqsn b','a.rqsn_id=b.rqsn_id')
                ->where('a.product_id',$record->product_id)
                //  ->where('b.to_id','HK7TGDT69VFMXB7')
                ->where('a.iscw',1)->get()->row();


            $out_qty=(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0)+(!empty($stock_r->totalQty)?$stock_r->totalQty:0);
            $sprice = (!empty($record->price)?$record->price:0);
            $pprice = (!empty($stockout->purchaseprice)?sprintf('%0.2f',$stockout->purchaseprice):0);
            $stock =  (!empty($stockout->totalPurchaseQnty)?$stockout->totalPurchaseQnty:0)-$out_qty;
            $newStock=(!empty($warrenty_stock->totalWarrentyQnty)?$warrenty_stock->totalWarrentyQnty:0);

            $main_stock=$stock-$newStock-($wastage_stock->totalWastageQnty);





            $data[] = array(
                'sl'            =>   $sl,
                'product_name'  =>  $record->product_name,
                'product_model' =>  $record->model_name,
                'sales_price'   =>  sprintf('%0.2f',$sprice),
                'purchase_p'    =>  $pprice,
                'totalPurchaseQnty'=>$stockout->totalPurchaseQnty,
                'totalSalesQnty'=>  $out_qty,
                'warrenty_stock'=>  $warrenty_stock->totalWarrentyQnty,
                'wastage_stock'=>  $wastage_stock->totalWastageQnty,
                'return_rcv'=>  $return_rcv->totalReturnQnty,
                'stok_quantity' => sprintf('%0.2f',$main_stock),
                'total_sale_price'=> ($stockout->totalPurchaseQnty-$out_qty)*$sprice,
                'purchase_total' =>  ($stockout->totalPurchaseQnty-$out_qty)*$pprice,
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



// supplier wise stock list
    public function getSupplierStockList($postData=null){

        $response = array();

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
        if($searchValue != ''){
            $searchQuery = " (a.product_name like '%".$searchValue."%' or a.product_model like '%".$searchValue."%' or a.price like'%".$searchValue."%' or c.supplier_price like'%".$searchValue."%' or m.supplier_name like'%".$searchValue."%') ";
        }

        ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
        if($searchValue != ''){
            $this->db->where($searchQuery);
        }
        $records = $this->db->get()->result();
        $totalRecords = $records[0]->allcount;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
        if($searchValue != ''){
            $this->db->where($searchQuery);
        }
        $records = $this->db->get()->result();
        $totalRecordwithFilter = $records[0]->allcount;

        ## Fetch records
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model,
                c.supplier_price,
                m.supplier_name,
                m.supplier_id,
                ");
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
        if($searchValue != '')
            $this->db->where($searchQuery);
        $this->db->order_by($columnName, $columnSortOrder);
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();
        $sl =1;
        foreach($records as $record ){
            $stockin = $this->db->select('sum(quantity) as totalSalesQnty')->from('invoice_details')->where('product_id',$record->product_id)->get()->row();
            $stockout = $this->db->select('sum(quantity) as totalPurchaseQnty,Avg(rate) as purchaseprice')->from('product_purchase_details')->where('product_id',$record->product_id)->get()->row();


            $data[] = array(
                'sl'            =>   $sl,
                'product_name'  =>  $record->product_name,
                'supplier_name' =>  $record->supplier_name,
                'product_model' =>  $record->product_model,
                'sales_price'   =>  $record->price,
                'purchase_p'    =>   number_format($stockout->purchaseprice,2),
                'totalPurchaseQnty'=>$stockout->totalPurchaseQnty,
                'totalSalesQnty'=>  $stockin->totalSalesQnty,
                'stok_quantity' =>  $stockout->totalPurchaseQnty-$stockin->totalSalesQnty,
                'total_sale_price'=> ($stockout->totalPurchaseQnty-$stockin->totalSalesQnty)*$record->price,
                'purchase_total' =>  ($stockout->totalPurchaseQnty-$stockin->totalSalesQnty)*$record->supplier_price,
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

    //Retrieve todays_total_sales_report
    public function todays_total_sales_report() {
        $today = date('Y-m-d');
        $this->db->select("a.date,a.invoice,b.invoice_id, sum(a.total_amount) as total_amt, sum(b.total_price) as total_sale,sum(`quantity`*`supplier_rate`) as total_supplier_rate,(SUM(total_price) - SUM(`quantity`*`supplier_rate`)) AS total_profit");
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->where('a.date', $today);
        $this->db->order_by('a.invoice_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function todays_total_sales_amount() {
        $today = date('Y-m-d');
        $this->db->select("sum(total_amount) as total_amount");
        $this->db->from('invoice');
        $this->db->where('date', $today);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve todays_total_sales_report
    public function todays_total_purchase_report() {
        $today = date('Y-m-d');
        $this->db->select("sum(grand_total_amount) as ttl_purchase_amount");
        $this->db->from('product_purchase ');
        $this->db->where('purchase_date', $today);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // todays sales product
    public function todays_sale_product() {
        $today = date('Y-m-d');
        $this->db->select("c.product_name,c.price");
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->join('product_information c', 'c.product_id = b.product_id');
        $this->db->order_by('a.date', 'desc');
        $this->db->where('a.date', $today);
        $this->db->limit('3');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve todays_sales_report
    public function todays_sales_report($per_page, $page) {
        $today = date('Y-m-d');
        $this->db->select("a.*,b.customer_id,b.customer_name");
        $this->db->from('invoice a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date', $today);
        $this->db->limit($per_page, $page);
        $this->db->order_by('a.invoice_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    // ======================= user sales report ================
    public function user_sales_report($per_page, $page,$from_date,$to_date,$user_id) {
        $this->db->select("sum(total_amount) as amount,count(a.invoice_id) as toal_invoice,a.*,b.first_name,b.last_name");
        $this->db->from('invoice a');
        $this->db->join('users b', 'b.user_id = a.sales_by','left');
        if(!empty($user_id)){
            $this->db->where('a.sales_by', $user_id);
        }
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->limit($per_page, $page);
        $this->db->group_by('a.sales_by');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    // ====================== user sales count ==========================
    public function user_sales_count($from_date,$to_date,$user_id){
        $this->db->select("sum(a.total_amount) as amount,count(a.invoice_id) as toal_invoice,a.*,b.first_name,b.last_name");
        $this->db->from('invoice a');
        $this->db->join('users b', 'b.user_id = a.sales_by','left');
        if(!empty($user_id)){
            $this->db->where('a.sales_by', $user_id);
        }
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->group_by('a.sales_by');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

    //Retrieve todays_sales_report_count
    public function todays_sales_report_count() {
        $today = date('Y-m-d');
        $this->db->select("a.*,b.customer_id,b.customer_name");
        $this->db->from('invoice a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date', $today);
        $this->db->order_by('a.invoice_id', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }

//     =============== its for purchase_report_category_wise_count =============
    public function purchase_report_category_wise_count() {

    }

    public function purchase_report_supplier_wise_count() {

    }
    public function purchase_report_shelf_wise_count() {


    }
    public function supplier_payment_count() {


    }
    public function customer_recieve_count() {


    }

//    ============= its for purchase_report_category_wise ===============
    public function purchase_report_category_wise($per_page = null, $page = null) {
        $this->db->select('b.product_name, b.product_model, SUM(a.quantity) as quantity, SUM(a.total_amount) as total_amount, d.purchase_date, c.category_name');
        $this->db->group_by('b.product_id, c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');

        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }

    public function purchase_report_supplier_wise($per_page = null, $page = null) {
        $this->db->select('f.supplier_name,f.supplier_id,b.product_name, b.product_model, SUM(a.quantity) as quantity, SUM(a.total_amount) as total_amount, d.purchase_date, c.category_name');
        $this->db->group_by('b.product_id, c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');
        $this->db->join('supplier_product e', 'e.product_id = a.product_id');
        $this->db->join('supplier_information f', 'f.supplier_id = e.supplier_id');

        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }
    public function purchase_report_shelf_wise() {
        $this->db->select('b.product_name, b.product_model,a.rate as purchase_price,b.price as sales_price,SUM(a.quantity) as quantity,SUM(a.total_amount) as total_amount,a.warehouse, c.category_name');
        $this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        //$this->db->join('invoice_details e', 'e.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        // $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');
        //$this->db->where()

        $this->db->limit('500');
        //$product_id = $this->input->post('product_id',TRUE);


//        $available_qty=$quantity-$sell_qty;
        $query = $this->db->get();
        return $query->result();
    }


    public function supplier_payment_report() {
        $this->db->select('a.VNo,a.Vtype,a.VDate,a.Narration,a.Debit as debit,a.Credit as credit');
        //$this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('acc_transaction a');
        $this->db->where('a.Vtype','PM');
        $this->db->limit('500');
        //$product_id = $this->input->post('product_id',TRUE);


//        $available_qty=$quantity-$sell_qty;
        $query = $this->db->get();
        return $query->result();
    }
    public function customer_recieve_report() {
        $this->db->select('a.VNo,a.Vtype,a.VDate,a.Narration,a.Debit as debit,a.Credit as credit');
        //$this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('acc_transaction a');
        $this->db->where('a.Vtype','CR');
        $this->db->limit('500');
        //$product_id = $this->input->post('product_id',TRUE);


//        $available_qty=$quantity-$sell_qty;
        $query = $this->db->get();
        return $query->result();
    }

//    ============= its for purchase_report_category_wise ===============
    public function filter_purchase_report_category_wise($category = null, $from_date = null, $to_date = null, $per_page = null, $page = null) {
        $dateRange = "d.purchase_date BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('b.product_name, b.product_model,SUM(a.quantity) as quantity, SUM(a.total_amount) as total_amount, d.purchase_date, c.category_name');
        $this->db->group_by('b.product_id, c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');

        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');

        if ($category) {
            $this->db->where('b.category_id', $category);
        }
        if ($category && $from_date && $to_date) {
            $this->db->where('b.category_id', $category);
            $this->db->where($dateRange);
        }
        if ($from_date && $to_date) {
            $this->db->where($dateRange);
        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }

    public function filter_purchase_report_supplier_wise($supplier = null, $from_date = null, $to_date = null, $per_page = null, $page = null) {
        $dateRange = "d.purchase_date BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('f.supplier_name,f.supplier_id,b.product_name, b.product_model,SUM(a.quantity) as quantity, SUM(a.total_amount) as total_amount, d.purchase_date, c.category_name');
        $this->db->group_by('b.product_id, c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');

        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');
        $this->db->join('supplier_product e', 'e.product_id = a.product_id');
        $this->db->join('supplier_information f', 'f.supplier_id = e.supplier_id');

        if ($supplier) {
            $this->db->where('f.supplier_id', $supplier);
        }
        if ($supplier && $from_date && $to_date) {
            $this->db->where('f.supplier_id', $supplier);
            $this->db->where($dateRange);
        }
        if ($from_date && $to_date) {
            $this->db->where($dateRange);
        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }

//    public function filter_purchase_report_shelf_wise($product=null,$category = null, $from_date = null, $to_date = null, $per_page = null, $page = null) {
//        $dateRange = "d.purchase_date BETWEEN '$from_date' AND '$to_date'";
//        $this->db->select('b.product_name, b.product_model,SUM(a.quantity) as quantity, SUM(a.total_amount) as total_amount,a.shelf_id, d.purchase_date, c.category_name');
//        $this->db->group_by('a.product_id','a.shelf_id');
//        $this->db->from('product_purchase_details a');
//        $this->db->join('product_information b', 'b.product_id = a.product_id');
//       // $this->db->join('invoice_details e', 'e.product_id = a.product_id');
//        $this->db->join('product_category c', 'c.category_id = b.category_id');
//        $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');
//       // $this->db->where(array('a.product_id' => $product , 'a.shelf_id' => $category));
//
//        if ($product) {
//            $this->db->where('a.product_id', $product);
//        } if ($category) {
//            $this->db->where('a.shelf_id', $category);
//        }
//        if ($product && $category) {
//            $this->db->where('a.shelf_id', $category);
//            $this->db->where('a.product_id', $product);
//
//        }
//        if ($product && $category && $from_date && $to_date) {
//            $this->db->where('a.product_id', $product);
//            $this->db->where('a.shelf_id', $category);
//
//            $this->db->where($dateRange);
//        }
//        if ($from_date && $to_date) {
//            $this->db->where($dateRange);
//        }
//        $this->db->limit($per_page, $page);
//        $query = $this->db->get();
//        return $query->result();
//
//    }

    public function filter_purchase_report_shelf_wise($product=null,$category = null, $from_date = null, $to_date = null, $per_page = null, $page = null) {
        // $dateRange = "d.purchase_date BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('b.product_name, b.product_model,SUM(a.quantity) as quantity,a.rate as purchase_price,b.price as sales_price,SUM(a.total_amount) as total_amount,a.warehouse, c.category_name');
        $this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        //$this->db->join('invoice_details d', 'd.product_id = a.product_id');
        // $this->db->join('invoice_details e', 'e.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        // $this->db->join('product_purchase d', 'd.purchase_id = a.purchase_id');
        // $this->db->where(array('a.product_id' => $product , 'a.shelf_id' => $category));

        if ($product) {
            $this->db->where('a.product_id', $product);
            $this->db->or_where('a.product_id_two', $product);

        } if ($category) {
            $this->db->where('a.warehouse', $category);
        }
        if ($product && $category) {
            $this->db->where('a.warehouse', $category);
            $this->db->where('a.product_id', $product);
            $this->db->or_where('a.product_id_two', $product);

        }
//        if ($product && $category && $from_date && $to_date) {
//            $this->db->where('a.product_id', $product);
//            $this->db->where('a.product_id_two', $product);
//            $this->db->where('a.shelf_id', $category);
//
//            //$this->db->where($dateRange);
//        }
//        if ($from_date && $to_date) {
//            $this->db->where($dateRange);
//        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();

    }
    public function filter_sp_report_date_wise($from_date = null, $to_date = null, $per_page = null, $page = null) {
        $dateRange = "a.VDate BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('a.VNo,a.Vtype,a.VDate,a.Narration,a.Debit as debit,a.Credit as credit');
        //$this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('acc_transaction a');
        $this->db->where('a.Vtype','PM');
        $this->db->limit('500');


        if ($from_date && $to_date) {
            $this->db->where($dateRange);
        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();

    }
    public function filter_cr_report_date_wise($from_date = null, $to_date = null, $per_page = null, $page = null) {
        $dateRange = "a.VDate BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('a.VNo,a.Vtype,a.VDate,a.Narration,a.Debit as debit,a.Credit as credit');
        //$this->db->group_by('a.warehouse,b.id,c.category_id');
        $this->db->from('acc_transaction a');
        $this->db->where('a.Vtype','CR');
        $this->db->limit('500');


        if ($from_date && $to_date) {
            $this->db->where($dateRange);
        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();

    }

//    =============== its for sales_report_category_wise_count =============
    public function sales_report_category_wise_count() {

    }

    //    ============= its for sales_report_category_wise ===============
    public function sales_report_category_wise($per_page = null, $page = null) {
        $this->db->select('b.product_name, b.product_model, sum(a.quantity) as quantity, sum(a.total_price) as total_price, d.date, c.category_name');
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('invoice d', 'd.invoice_id = a.invoice_id');
        $this->db->group_by('b.product_id, c.category_id');

        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }

    //    ============= its for filter_sales_report_category_wise ===============
    public function filter_sales_report_category_wise($category = null, $from_date = null, $to_date = null, $per_page = null, $page = null) {
        $dateRange = "d.date BETWEEN '$from_date' AND '$to_date'";
        $this->db->select('b.product_name, b.product_model, sum(a.quantity) as quantity, sum(a.total_price) as total_price, d.date, c.category_name');
        $this->db->group_by('b.product_id, c.category_id');
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_category c', 'c.category_id = b.category_id');
        $this->db->join('invoice d', 'd.invoice_id = a.invoice_id');
        if ($category) {
            $this->db->where('b.category_id', $category);
        }
        if ($category && $from_date && $to_date) {
            $this->db->where('b.category_id', $category);
            $this->db->where($dateRange);
        }
        if ($from_date && $to_date) {
            $this->db->where($dateRange);
        }
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->result();
    }




//    =============== its for sales_report_category_wise_count =============
    public function sales_warrenty_report_count() {

    }




    //Retrieve todays_purchase_report
    public function todays_purchase_report($per_page = null, $page = null) {
        $today = date('Y-m-d');
        $this->db->select("a.*,b.supplier_id,b.supplier_name");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.purchase_date', $today);
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function purchase_warrenty_report($per_page = null, $page = null) {
        //$today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        $this->db->where('a.purchase_date');
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function purchase_expiry_report($per_page = null, $page = null) {
        //$today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        $this->db->where('a.purchase_date');
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function purchase_cheque_report($per_page = null, $page = null) {
        //$today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        $this->db->where('a.purchase_date');
        $this->db->where('a.status',2);
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve todays_purchase_report count
    public function todays_purchase_report_count() {
        $today = date('Y-m-d');
        $this->db->select("a.*,b.supplier_id,b.supplier_name");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.purchase_date', $today);
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit('500');
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function purchase_warrenty_report_count() {
        // $today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');

        $this->db->where('a.purchase_date');
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit('500');
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function purchase_expiry_report_count() {
        // $today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');

        $this->db->where('a.purchase_date');
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit('500');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function purchase_cheque_report_count() {
        // $today = date('Y-m-d');
        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');

        $this->db->where('a.purchase_date');
        $this->db->order_by('a.purchase_id', 'desc');
        $this->db->limit('500');
        $query = $this->db->get();
        return $query->num_rows();
        // return $query;
    }

    //Total profit report
    public function total_profit_report($perpage, $page) {

        $this->db->select("a.date,a.invoice,b.invoice_id,
            CAST(sum(total_price) AS DECIMAL(16,2)) as total_sale");
        $this->db->select('CAST(sum(`quantity`*`supplier_rate`) AS DECIMAL(16,2)) as total_supplier_rate', FALSE);
        $this->db->select("CAST(SUM(total_price) - SUM(`quantity`*`supplier_rate`) AS DECIMAL(16,2)) AS total_profit");
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->group_by('b.invoice_id');
        $this->db->order_by('a.invoice', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Total profit report
    public function total_profit_report_count() {

        $this->db->select("a.date,a.invoice,b.invoice_id,sum(total_price) as total_sale");
        $this->db->select('sum(`quantity`*`supplier_rate`) as total_supplier_rate', FALSE);
        $this->db->select("(SUM(total_price) - SUM(`quantity`*`supplier_rate`)) AS total_profit");
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->group_by('b.invoice_id');
        $this->db->order_by('a.invoice', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }

    //Retrieve Monthly Sales Report
    public function monthly_sales_report() {
        $query1 = $this->db->query("
            SELECT
                date,
                EXTRACT(MONTH FROM STR_TO_DATE(date,'%Y-%m-%d')) as month,
                COUNT(invoice_id) as total
            FROM
                invoice
            WHERE
                EXTRACT(YEAR FROM STR_TO_DATE(date,'%Y-%m-%d'))  >= EXTRACT(YEAR FROM NOW())
            GROUP BY
                EXTRACT(YEAR_MONTH FROM STR_TO_DATE(date,'%Y-%m-%d'))
            ORDER BY
                month ASC
        ")->result();

        $query2 = $this->db->query("
            SELECT
                purchase_date,
                EXTRACT(MONTH FROM STR_TO_DATE(purchase_date,'%Y-%m-%d')) as month,
                COUNT(purchase_id) as total_month
            FROM
                product_purchase
            WHERE
                EXTRACT(YEAR FROM STR_TO_DATE(purchase_date,'%Y-%m-%d'))  >= EXTRACT(YEAR FROM NOW())
            GROUP BY
                EXTRACT(YEAR_MONTH FROM STR_TO_DATE(purchase_date,'%Y-%m-%d'))
            ORDER BY
                month ASC
        ")->result();
        return [$query1, $query2];
    }

    //Retrieve all Report
    public function retrieve_dateWise_SalesReports($from_date, $to_date, $per_page, $page) {
        $this->db->select("a.*,b.*");
        $this->db->from('invoice a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->order_by('a.date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }



    //due report
    //Retrieve all Report
    public function retrieve_dateWise_DueReports($from_date, $to_date, $per_page, $page) {
        $this->db->select("a.*,b.*,c.*");
        $this->db->from('invoice a');
        $this->db->join('invoice_details c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->group_by('a.invoice_id');
        $this->db->order_by('a.invoice', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // count sales report data
    public function count_retrieve_dateWise_SalesReports($from_date, $to_date) {
        $this->db->select("a.*,b.*");
        $this->db->from('invoice a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }




    //Retrieve all Report
    public function retrieve_dateWise_PurchaseReports($start_date, $end_date, $per_page, $page) {

        $this->db->select("a.*,b.supplier_id,b.supplier_name");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.purchase_date >=', $start_date);
        $this->db->where('a.purchase_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function retrieve_warrenty_dateWise_PurchaseReports($start_date, $end_date, $per_page, $page) {

        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        //  $this->db->join('product_information c', 'c.product_id = a.product_id');
        $this->db->where('c.warrenty_date >=', $start_date);
        $this->db->where('c.warrenty_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function retrieve_expiry_dateWise_PurchaseReports($start_date, $end_date, $per_page, $page) {

        $this->db->select("a.*,b.*,c.*,d.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        //  $this->db->join('product_information c', 'c.product_id = a.product_id');
        $this->db->where('c.expired_date >=', $start_date);
        $this->db->where('c.expired_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function retrieve_cheque_dateWise_PurchaseReports($start_date, $end_date, $per_page, $page) {

        $this->db->select("a.*,b.*,c.*,d.*,e.bank_name");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        $this->db->join('bank_add e', 'e.bank_id = a.bank_id');
        //  $this->db->join('product_information c', 'c.product_id = a.product_id');
        $this->db->where('a.cheque_date >=', $start_date);
        $this->db->where('a.cheque_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // count purchase report data
    public function count_retrieve_dateWise_PurchaseReports($start_date, $end_date) {
        $this->db->select("a.*,b.supplier_id,b.supplier_name");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.purchase_date >=', $start_date);
        $this->db->where('a.purchase_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }
    public function count_retrieve_expiry_dateWise_PurchaseReports($start_date, $end_date) {
        $this->db->select("a.*,b.*,c.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->where('c.expired_date >=', $start_date);
        $this->db->where('c.expired_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }
    public function count_retrieve_cheque_dateWise_PurchaseReports($start_date, $end_date) {
        $this->db->select("a.*,b.*,c.*");
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('bank_add d', 'd.bank_id = a.bank_id');
        $this->db->where('a.cheque_date >=', $start_date);
        $this->db->where('a.cheque_date <=', $end_date);
        $this->db->group_by('a.purchase_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

    //Retrieve date wise profit report
    public function retrieve_dateWise_profit_report($start_date, $end_date, $per_page, $page) {
        $this->db->select("a.date,a.invoice,b.invoice_id,
            CAST(sum(total_price) AS DECIMAL(16,2)) as total_sale");
        $this->db->select('CAST(sum(`quantity`*`supplier_rate`) AS DECIMAL(16,2)) as total_supplier_rate', FALSE);
        $this->db->select("CAST(SUM(total_price) - SUM(`quantity`*`supplier_rate`) AS DECIMAL(16,2)) AS total_profit");

        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->where('a.date >=', $start_date);
        $this->db->where('a.date <=', $end_date);

        $this->db->group_by('b.invoice_id');
        $this->db->order_by('a.invoice', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve date wise profit report
    public function retrieve_dateWise_profit_report_count($start_date, $end_date) {
        $this->db->select("a.date,a.invoice,b.invoice_id,sum(total_price) as total_sale");
        $this->db->select('sum(`quantity`*`supplier_rate`) as total_supplier_rate', FALSE);
        $this->db->select("(SUM(total_price) - SUM(`quantity`*`supplier_rate`)) AS total_profit");
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->where('a.date >=', $start_date);
        $this->db->where('a.date <=', $end_date);
        $this->db->group_by('b.invoice_id');
        $this->db->order_by('a.invoice', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }

    //Product wise sales report
    public function product_wise_report() {
        $today = date('Y-m-d');
        $this->db->select("a.*,b.customer_id,b.customer_name");
        $this->db->from('invoice a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('a.date', $today);
        $this->db->order_by('a.invoice_id', 'desc');
        $this->db->limit('500');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //RETRIEVE DATE WISE SINGE PRODUCT REPORT
    public function retrieve_product_sales_report($perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.invoice,c.total_amount,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function retrieve_product_purchase_report($perpage, $page) {
        $this->db->select("a.*,b.*,c.purchase_date,c.grand_total_amount,c.rn_number");
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_purchase c', 'c.purchase_id = a.purchase_id');
        // $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        //$this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function supplier_report($perpage, $page) {
        $this->db->select("a.*,b.*,c.*,d.*,e.*");
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information c', 'c.supplier_id = a.supplier_id');
        $this->db->join('product_information d', 'd.product_id = b.product_id');
        $this->db->join('product_category e', 'e.category_id = d.category_id');
        // $this->db->group_by('d.product_id');
//        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
//        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
//        $this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function reorder_report($perpage, $page) {
        //$this->db->select ("sum(quantity) from product_purchase_details where product_id= product_information.product_id");
        $this->db->select("a.*,b.*,((select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`)-(select sum(quantity) from invoice_details where product_id= `a`.`product_id`)) as stock");
        //  $this->db->select("a.*,b.*");
        // $this->db->select("a.*,b.*,((select sum(quantity) from product_purchase_details)-(invoice_details.sum(quantity) from invoice_details)) as stock ");
        $this->db->from('product_information a');
        $this->db->join('product_category b', 'b.category_id = a.category_id');
        $this->db->join('invoice_details ', 'invoice_details.product_id = a.product_id');
        $this->db->join('product_purchase_details ', 'product_purchase_details.product_id = a.product_id');
        $this->db->group_by('a.product_id');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();


        if ($query->num_rows() > 0) {
            return $query->result_array();
        }

        return false;
    }


    public function retrieve_sales_warrenty_reports($perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.invoice,c.total_amount,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function retrieve_sales_cheque_reports($perpage, $page) {
//        $this->db->select("c.*,e.invoice_id,d.customer_name");
//        $this->db->from('cus_cheque c');
//        //  $this->db->join('bank_add e', 'e.bank_id = c.bank_id');
//        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
//        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
//        //$this->db->where('c.status', 2);
//       // $this->db->where('c.payment_type', 2);
//        $this->db->order_by('c.cheque_date', 'desc');
//        $this->db->limit($perpage, $page);
//        $query = $this->db->get();
//        if ($query->num_rows() > 0) {
//            return $query->result_array();
//        }
//        return false;
    }

    public  function update_cheque_date($id){

        // Update
        $data=array($field => $value);
        $this->db->where('invoice_id',$id);
        $this->db->update('invoice',$data);
    }



    //RETRIEVE DATE WISE SINGE PRODUCT REPORT
    public function retrieve_product_sales_report_count() {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.total_amount,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->order_by('c.date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_product_purchase_report_count() {
        $this->db->select("a.*,b.*,c.purchase_date,c.grand_total_amount,c.rn_number");
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_purchase c', 'c.purchase_id = a.purchase_id');
        //$this->db->order_by('c.date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function supplier_report_count() {
        $this->db->select("a.*,b.*,c.*,d.*,e.*");
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information c', 'c.supplier_id = a.supplier_id');
        $this->db->join('product_information d', 'd.product_id = b.product_id');
        $this->db->join('product_category e', 'e.category_id = d.category_id');
        //$this->db->group_by('d.product_id');
//        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
//        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        // $this->db->order_by('c.date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function reorder_report_count() {

        $this->db->select("a.*,b.*,((select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`)-(select sum(quantity) from invoice_details where product_id= `a`.`product_id`)) as stock");
        // $this->db->select("a.*,b.*,(select sum(quantity) from invoice_details where product_id=a.product_id) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= a.product_id) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->join('invoice_details', 'invoice_details.product_id = a.product_id');
        $this->db->join('product_purchase_details', 'product_purchase_details.product_id = a.product_id');
        $this->db->join('product_category b', 'b.category_id = a.category_id');
        $this->db->group_by('a.product_id');

        $query = $this->db->get();
//        $stockin = $this->db->select('sum(quantity) as totalSalesQnty')->from('invoice_details')->where('product_id',$query->product_id)->get()->row();
//        $stockout = $this->db->select('sum(qty) as totalPurchaseQnty')->from('product_purchase_details')->where('product_id',$query->product_id)->get()->row();
//        $stock =  (!empty($stockout->totalPurchaseQnty)?$stockout->totalPurchaseQnty:0)-(!empty($stockin->totalSalesQnty)?$stockin->totalSalesQnty:0);
        return $query->num_rows();
    }
    public function retrieve_product_sales_cheque_report_count() {
//        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.total_amount,c.cheque_no,c.cheque_no,d.customer_name,e.bank_name");
//        $this->db->from('invoice_details a');
//        $this->db->join('product_information b', 'b.product_id = a.product_id');
//        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
//        $this->db->join('bank_add e', 'e.bank_id = c.bank_id');
//        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
//        $this->db->order_by('c.cheque_date', 'desc');
//        $query = $this->db->get();
//        return $query->num_rows();F
    }


    //RETRIEVE DATE WISE SEARCH SINGLE PRODUCT REPORT
    public function retrieve_product_search_sales_report($start_date, $end_date,$product_id, $perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,c.invoice,c.date,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->where('b.product_id', $product_id);
        $this->db->where('c.date >=', $start_date);
        $this->db->where('c.date <=', $end_date);
        $this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_product_id_search_sales_report($customer_id,$product_id, $perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,c.invoice,c.date,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        if ($customer_id) {
            $this->db->where('c.customer_id', $customer_id);
        } if ($product_id) {
            $this->db->where('a.product_id', $product_id);
            $this->db->or_where('a.product_id_two', $product_id);
        }
        if($customer_id && $product_id){
            $this->db->where('c.customer_id', $customer_id);
            $this->db->where('a.product_id', $product_id);
            $this->db->or_where('a.product_id_two', $product_id);

        }
        //  $this->db->where('d.customer_id', $customer_id);
        //  $this->db->where('b.product_id', $product_id);

//        $this->db->where('c.date >=', $start_date);
//        $this->db->where('c.date <=', $end_date);
        $this->db->order_by('c.date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_supplier_id_report($supplier_id,$perpage, $page) {
        $this->db->select("a.*,b.*,c.*,d.*,e.*");
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information c', 'c.supplier_id = a.supplier_id');
        $this->db->join('product_information d', 'd.product_id = b.product_id');
        $this->db->join('product_category e', 'e.category_id = d.category_id');
        $this->db->where('a.supplier_id', $supplier_id);
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_purchase_product_id_report($supplier_id,$perpage, $page) {
        $this->db->select("a.*,b.*,c.purchase_date,c.grand_total_amount,c.rn_number");
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_purchase c', 'c.purchase_id = a.purchase_id');;
        $this->db->where('a.product_id', $supplier_id);
        $this->db->or_where('a.product_id_two', $supplier_id);
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_sales_product_id_report($customer_id,$supplier_id,$perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.total_amount,c.invoice,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->order_by('c.date', 'desc');
        if($customer_id){
            $this->db->where('c.customer_id', $customer_id);
        }
        if ($supplier_id){
            $this->db->where('a.product_id', $supplier_id);
            $this->db->or_where('a.product_id_two', $supplier_id);
        }
        if($customer_id && $supplier_id){
            $this->db->where('c.customer_id', $customer_id);
            $this->db->where('a.product_id', $supplier_id);
            $this->db->or_where('a.product_id_two', $supplier_id);

        }


        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_reorder_report($supplier_id,$perpage, $page) {
        $this->db->select("a.*,b.*,((select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`)-(select sum(quantity) from invoice_details where product_id= `a`.`product_id`)) as stock");
        // $this->db->select("a.*,b.*,(select sum(quantity) from invoice_details where product_id=a.product_id) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= a.product_id) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->join('invoice_details', 'invoice_details.product_id = a.product_id');
        $this->db->join('product_purchase_details', 'product_purchase_details.product_id = a.product_id');
        $this->db->join('product_category b', 'b.category_id = a.category_id');
        $this->db->group_by('a.product_id');
        $this->db->where('a.re_order_level', $supplier_id);

//        if('stock' <= $reorder){
//            $this->db->limit($perpage, $page);
//            $query = $this->db->get();
//            if ($query->num_rows() > 0) {
//                return $query->result_array();
//            }
//
//        }
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }

        return false;

        //    $this->db->where('a.stock', $supplier_id);


    }


    //RETRIEVE DATE WISE SEARCH SINGLE PRODUCT REPORT
    public function retrieve_product_search_sales_report_count($start_date, $end_date,$product_id) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->where('b.product_id',$product_id);
        $this->db->where('c.date >=', $start_date);
        $this->db->where('c.date <=', $end_date);
        $this->db->order_by('c.date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_product_id_search_sales_report_count($customer_id,$product_id) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        if ($customer_id) {
            $this->db->where('c.customer_id', $customer_id);
        } if ($product_id) {
            $this->db->where('a.product_id', $product_id);
            $this->db->or_where('a.product_id_two', $product_id);
        } if($customer_id && $product_id){
            $this->db->where('c.customer_id', $customer_id);
            $this->db->where('a.product_id', $product_id);
            $this->db->or_where('a.product_id_two', $product_id);

        }
//        $this->db->where('d.customer_id',$customer_id);
//        $this->db->where('b.product_id',$product_id);

//        $this->db->where('c.date >=', $start_date);
//        $this->db->where('c.date <=', $end_date);
        $this->db->order_by('c.date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_supplier_id_count($supplier_id) {
        $this->db->select("a.*,b.*,c.*,d.*,e.*");
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information c', 'c.supplier_id = a.supplier_id');
        $this->db->join('product_information d', 'd.product_id = b.product_id');
        $this->db->join('product_category e', 'e.category_id = d.category_id');
        $this->db->where('a.supplier_id', $supplier_id);
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_purchase_product_id_count($supplier_id) {
        $this->db->select("a.*,b.*,c.purchase_date,c.grand_total_amount,c.rn_number");
        $this->db->from('product_purchase_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('product_purchase c', 'c.purchase_id = a.purchase_id');;
        $this->db->where('a.product_id', $supplier_id);
        $this->db->or_where('a.product_id_two', $supplier_id);
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_sales_product_id_count($customer_id,$supplier_id) {
        $this->db->select("a.*,b.product_name,b.product_model,c.date,c.total_amount,c.invoice,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
        $this->db->order_by('c.date', 'desc');
        if($customer_id){
            $this->db->where('c.customer_id', $customer_id);
        }
        if ($supplier_id){
            $this->db->where('a.product_id', $supplier_id);
            $this->db->or_where('a.product_id_two', $supplier_id);
        }
        if($customer_id && $supplier_id){
            $this->db->where('c.customer_id', $customer_id);
            $this->db->where('a.product_id', $supplier_id);
            $this->db->or_where('a.product_id_two', $supplier_id);

        }
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function reorder_count($supplier_id) {
        $this->db->select("a.*,b.*,((select sum(quantity) from product_purchase_details where product_id= `a`.`product_id`)-(select sum(quantity) from invoice_details where product_id= `a`.`product_id`)) as stock");
        // $this->db->select("a.*,b.*,(select sum(quantity) from invoice_details where product_id=a.product_id) as 'totalSalesQnty',(select sum(quantity) from product_purchase_details where product_id= a.product_id) as 'totalBuyQnty'");
        $this->db->from('product_information a');
        $this->db->join('invoice_details', 'invoice_details.product_id = a.product_id');
        $this->db->join('product_purchase_details', 'product_purchase_details.product_id = a.product_id');
        $this->db->join('product_category b', 'b.category_id = a.category_id');
        $this->db->group_by('a.product_id');
        $this->db->where('a.re_order_level', $supplier_id);
        // $this->db->where($data->stock, $supplier_id);
//        if('stock' <= $reorder){
//            $query = $this->db->get();
//
//        }
        $query = $this->db->get();
        return $query->num_rows();

    }

    //RETRIEVE DATE WISE SEARCH SINGLE PRODUCT REPORT
    public function retrieve_product_search_sales_warrenty_report($start_date, $end_date,$product_id, $perpage, $page) {
        $this->db->select("a.*,b.product_name,b.product_model,d.customer_name");
        $this->db->from('invoice_details a');
        $this->db->join('product_information b', 'b.product_id = a.product_id');
        //$this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');

        $this->db->where('a.warrenty_date >=', $start_date);
        $this->db->where('a.warrenty_date <=', $end_date);
        $this->db->order_by('a.warrenty_date', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function retrieve_product_search_sales_cheque_report_count($start_date, $end_date) {
        $this->db->select("c.*,e.invoice_id,e.bank_id,e.payment_type,e.customer_id,d.customer_name");
        $this->db->from('cus_cheque c');
        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        $this->db->where('c.status', 2);
        $this->db->where('e.payment_type', 2);
        $this->db->where('c.cheque_date >=', $start_date);
        $this->db->where('c.cheque_date <=', $end_date);
        $this->db->order_by('c.cheque_date', 'desc');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function retrieve_product_search_sales_cheque_report($from_date, $to_date) {

        $this->db->select("c.*,e.invoice_id,e.bank_id,e.payment_type,e.customer_id,d.customer_name");
        $this->db->from('cus_cheque c');
        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        $this->db->where('c.status', 2);
        $this->db->where('e.payment_type', 2);
        $this->db->where('c.cheque_date >=', $from_date);
        $this->db->where('c.cheque_date <=', $to_date);
        $this->db->order_by('c.cheque_date', 'desc');
        //   $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;

    }
    public function getChequeList($postData=null){
        $this->load->library('occational');
        $this->load->model('Web_settings');
        $currency_details = $this->Web_settings->retrieve_setting_editdata();
        $response = array();
        $draw = $postData['draw'];
        $start = $postData['start'];
        $rowperpage = $postData['length']; // Rows display per page
        $columnIndex = $postData['order'][0]['column']; // Column index
        $columnName = $postData['columns'][$columnIndex]['data']; // Column name
        $columnSortOrder = $postData['order'][0]['dir']; // asc or desc
        $searchValue = $postData['search']['value']; // Search value

        $fromdate = $postData['fromdate'];
        $todate   = $postData['todate'];
        $customer_id   = $postData['customer_id'];
        if(!empty($fromdate)){
            $datbetween = "(c.cheque_date BETWEEN '$fromdate' AND '$todate')";
        }else if (!empty($customer_id)){

            $customer="(d.customer_id)";
        }else{
            $datbetween = "";

        }
        ## Read value

        ## Search
        $searchQuery = "";
        if($searchValue != ''){
            $searchQuery = " (c.invoice_id like '%".$searchValue."%' or d.customer_name like '%".$searchValue."%' or d.customer_id like '%".$searchValue."%' or e.bank_id like '%".$searchValue."%' or c.cheque_date like'%".$searchValue."%'or c.cheque_no like'%".$searchValue."%'or c.status like'%".$searchValue."%')";
        }

        ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        // $this->db->select("c.*,e.invoice_id,e.bank_id,e.payment_type,d.customer_name");
        $this->db->from('cus_cheque c');
        //$this->db->join('bank_add e', 'e.bank_id = c.bank_id');
        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        $this->db->where('c.status', 2);
        $this->db->where('e.payment_type', 2);
        $this->db->order_by('c.cheque_date', 'desc');
        if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);
        }
        if($searchValue != '')
            $this->db->where($searchQuery);

        $records = $this->db->get()->result();
        $totalRecords = $records[0]->allcount;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        //    $this->db->select("c.*,e.invoice_id,e.bank_id,e.payment_type,d.customer_name");
        $this->db->from('cus_cheque c');
        //$this->db->join('bank_add e', 'e.bank_id = c.bank_id');
        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        $this->db->where('c.status', 2);
        $this->db->where('e.payment_type', 2);
        $this->db->order_by('c.cheque_date', 'desc');
        if(!empty($customer_id)){
            $this->db->where('d.customer_id',$customer_id);
        }
        if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);

        }
        if(!empty($fromdate) && !empty($todate) && !empty($customer_id)){
            $this->db->where($datbetween);
            $this->db->where('d.customer_id',$customer_id);
        }


        if($searchValue != '')
            $this->db->where($searchQuery);

        $records = $this->db->get()->result();
        $totalRecordwithFilter = $records[0]->allcount;

        ## Fetch records
        $this->db->select("c.*,e.invoice_id,e.bank_id,e.payment_type,d.customer_name");
        $this->db->from('cus_cheque c');
        //$this->db->join('bank_add e', 'e.bank_id = c.bank_id');
        $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        $this->db->where('c.status', 2);
        $this->db->where('e.payment_type', 2);
        $this->db->order_by('c.cheque_date', 'desc');
        if(!empty($customer_id)){
            $this->db->where('d.customer_id',$customer_id);
        }
        if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);

        }
        if(!empty($fromdate) && !empty($todate) && !empty($customer_id)){
            $this->db->where($datbetween);
            $this->db->where('d.customer_id',$customer_id);
        }
        if($searchValue != '')
            $this->db->where($searchQuery);

        $this->db->order_by($columnName, $columnSortOrder);
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();
        $sl =1;
        foreach($records as $r) {

//            $nestedData['invoice_id']=$r->invoice_id;
//            // $nestedData['cheque_id']=$r->cheque_id;
//            $nestedData['customer_name']=$r->customer_name;
//            $nestedData['bank_id']=$r->bank_id;
//            $nestedData['cheque_no']=$r->cheque_no;
//
            if( $r->status==2){
                $status = '<div style="color: red"><b>Pending</b></div>';
            }
//            $nestedData['status']=$status;
//            $nestedData['cheque_date']=$r->cheque_date;
            //          $nestedData['action']='<div><a href="javascript:;" class="glyphicon glyphicon-edit date-edit" data="'.$r->cheque_id.'" style="font-size:22px; color: #1bc9f5"></a></div>';
            $action='<div><a href="javascript:;" class="glyphicon glyphicon-edit date-edit" data="'.$r->cheque_id.'" style="font-size:22px; color: #1bc9f5"></a></div>';
//            $data[] = $nestedData;

            $data[] = array(
                'invoice_id'  =>   $r->invoice_id,
                'customer_name' =>   $r->customer_name,
                'bank_id'  => $r->bank_id,
                'cheque_type' =>  $r->cheque_type,
                'cheque_no' =>  $r->cheque_no,
                'status' =>$status,
                'cheque_date'=> $r->cheque_date,
                'amount'=>number_format($r->amount, 2, '.', ',') ,
                'action' =>$action


            );
        }

        ## Response
        $response = array(
            "draw" => intval($draw),
            "recordsTotal" =>$totalRecords,
            "recordsFiltered" => $totalRecordwithFilter,
            "data" => $data
        );

        //echo '<pre>';print_r($result);

        return $response;
    }

    //RETRIEVE DATE WISE SEARCH SINGLE PRODUCT REPORT
    public function retrieve_product_search_sales_warrenty_report_count($start_date, $end_date,$product_id) {
//        $this->db->select("a.*,b.product_name,b.product_model,c.date,d.customer_name");
//        $this->db->from('invoice_details a');
//        $this->db->join('product_information b', 'b.product_id = a.product_id');
//        $this->db->join('invoice c', 'c.invoice_id = a.invoice_id');
//        $this->db->join('customer_information d', 'd.customer_id = c.customer_id');
//
//        $this->db->where('a.warrenty_date >=', $start_date);
//        $this->db->where('a.warrenty_date <=', $end_date);
//        $this->db->order_by('a.warrenty_date', 'desc');
//        $query = $this->db->get();
//        return $query->num_rows();
    }


    public function product_list(){
        $this->db->select('*');
        $this->db->from('product_information');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function customer_list(){
        $this->db->select('*');
        $this->db->from('customer_information');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function supplier_list(){
        $this->db->select('*');
        $this->db->from('supplier_information');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve company Edit Data
    public function retrieve_company() {
        $this->db->select('*');
        $this->db->from('company_information');
        $this->db->limit('1');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // date to date product stock report



//BANKING ENTRY
    public function daily_closing_entry($data) {
        $this->db->insert('daily_closing', $data);
    }

    // This function will find out all closing information of daily closing.
    public function accounts_closing_data() {
        $last_closing_amount = $this->get_last_closing_amount();
        $cash_in = $this->cash_data_receipt();
        $cash_out = $this->cash_data();
        if ($last_closing_amount != null) {
            $last_closing_amount = $last_closing_amount[0]['amount'];
            $cash_in_hand = ($last_closing_amount+$cash_in) - $cash_out;
        } else {
            $last_closing_amount = 0;
            $cash_in_hand = $cash_in - $cash_out;
        }

        $company_info = $this->Reports->retrieve_company();
        return array(
            "last_day_closing" => number_format($last_closing_amount, 2, '.', ','),
            "cash_in"          => number_format($cash_in, 2, '.', ','),
            "cash_out"         => number_format($cash_out, 2, '.', ','),
            "company_info"     => $company_info,
            "cash_in_hand"     => number_format($cash_in_hand, 2, '.', ',')
        );
    }
    public function get_last_closing_amount() {
        $sql = "SELECT amount FROM daily_closing WHERE date = (SELECT MAX(date) FROM daily_closing)";
        $query = $this->db->query($sql);
        $result = $query->result_array();
        if ($result) {
            return $result;
        } else {
            return FALSE;
        }
    }

    public function cash_data_receipt() {
        //-----------
        $cash = 0;
        $datse = date('Y-m-d');
        $this->db->select('sum(Debit) as amount');
        $this->db->from('acc_transaction');
        $this->db->where('COAID', 1020101);
        $this->db->where('VDate', $datse);
        $result_amount = $this->db->get();
        $amount = $result_amount->result_array();
        $cash += $amount[0]['amount'];
        return $cash;
    }
    public function cash_data() {
        //-----------
        $cash = 0;
        $datse = date('Y-m-d');
        $this->db->select('sum(Credit) as amount');
        $this->db->from('acc_transaction');
        $this->db->where('COAID', 1020101);
        $this->db->where('VDate', $datse);
        $result_amount = $this->db->get();
        $amount = $result_amount->result_array();
        $cash += $amount[0]['amount'];
        return $cash;
    }

    // ================= Shipping cost ===========================
    public function retrieve_dateWise_Shippingcost($from_date, $to_date, $per_page, $page) {
        $this->db->select("a.*");
        $this->db->from('invoice a');
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->group_by('a.invoice_id');
        $this->db->order_by('a.date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    //stock report pdg

// sales return data
    public function sales_return_list($perpage, $page,$start,$end) {
        $this->db->select('a.net_total_amount,a.*,b.customer_name');
        $this->db->from('product_return a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('usablity', 1);
        $this->db->where('a.date_return >=', $start);
        $this->db->where('a.date_return <=', $end);
        $this->db->group_by('a.invoice_id', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    // count sales return
    public function sales_return_count($start,$end) {
        $this->db->select('a.net_total_amount,a.*,b.customer_name');
        $this->db->from('product_return a');
        $this->db->join('customer_information b', 'b.customer_id = a.customer_id');
        $this->db->where('usablity', 1);
        $this->db->where('a.date_return >=', $start);
        $this->db->where('a.date_return <=', $end);
        $this->db->group_by('a.invoice_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }
    // return supplier
    public function supplier_return($perpage, $page,$start,$end) {
        $this->db->select('a.net_total_amount,a.*,b.supplier_name');
        $this->db->from('product_return a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('usablity', 2);
        $this->db->where('a.date_return >=', $start);
        $this->db->where('a.date_return <=', $end);
        $this->db->group_by('a.purchase_id', 'desc');
        $this->db->limit($perpage, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    // count supplier return list
    public function count_supplier_return($start,$end) {
        $this->db->select('a.net_total_amount,a.*,b.supplier_name');
        $this->db->from('product_return a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('usablity', 2);
        $this->db->where('a.date_return >=', $start);
        $this->db->where('a.date_return <=', $end);
        $this->db->group_by('a.purchase_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

// tax report query
    public function retrieve_dateWise_tax($from_date, $to_date, $per_page, $page) {
        $this->db->select("a.*");
        $this->db->from('invoice a');
        $this->db->where('a.date >=', $from_date);
        $this->db->where('a.date <=', $to_date);
        $this->db->group_by('a.invoice_id');
        $this->db->order_by('a.date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }


    public function userList(){
        $this->db->select("*");
        $this->db->from('users');
        $this->db->order_by('first_name', 'asc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }


    public function yearly_invoice_report($month=null){

        $result = $this->db->query("
                            SELECT sum(total_amount) as total_sale FROM `invoice`
                            WHERE MONTH(date)  = $month
                                AND YEAR(date) = YEAR(CURRENT_TIMESTAMP);
                            ");

        return $result->row();
    }

    public function yearly_purchase_report($month=null){

        $result = $this->db->query("
                            SELECT sum(grand_total_amount) as total_purchase FROM `product_purchase`
                            WHERE MONTH(purchase_date)  = $month
                                AND YEAR(purchase_date) = YEAR(CURRENT_TIMESTAMP);
                            ");

        return $result->row();
    }

    /// Total Report part

    public function total_sales_amount($date=null) {
        $date = (!empty($date)?$date:date('F Y'));
        $days = $this->yearmonthval($date);
        $this->db->select("sum(total_amount) as totalsales");
        $this->db->from('invoice');
        $this->db->where('date >=',$days['start_date']);
        $this->db->where('date <=',$days['end_date']);
        $query = $this->db->get()->row();
        return $query->totalsales;
    }
    public function yearmonthval($date){
        list($month,$year) = explode(' ',$date);
        switch ($month)
        {
            case "January":
                $month = '01';
                break;
            case "February":
                $month = '02';
                break;
            case "March":
                $month = '03';
                break;
            case "April":
                $month = '04';
                break;
            case "May":
                $month = '05';
                break;
            case "June":
                $month = '06';
                break;
            case "July":
                $month = '07';
                break;
            case "August":
                $month = '08';
                break;
            case "September":
                $month = '9';
                break;
            case "October":
                $month = '10';
                break;
            case "November":
                $month = '11';
                break;
            case "December":
                $month = '12';
                break;
        }
        $fdate = $year.'-'.$month.'-'.'01';
        $lastday = date('t',strtotime($fdate));
        $edate = $year.'-'.$month.'-'.$lastday;
        $startd    = $fdate;
        $data['start_date']=$startd;
        $data['end_date'] =$edate;
        return $data;
    }


    public function total_purchase_amount($date=null) {
        $date = (!empty($date)?$date:date('F Y'));
        $days = $this->yearmonthval($date);
        $this->db->select("sum(grand_total_amount) as totalpurchase");
        $this->db->from('product_purchase');
        $this->db->where('purchase_date >=',$days['start_date']);
        $this->db->where('purchase_date <=',$days['end_date']);
        $query = $this->db->get();
        if(!empty($query->row()->totalpurchase)){
            return $query->row()->totalpurchase;
        }else{
            return 1;
        }
    }

    public function total_expense_amount($date=null) {
        $date = (!empty($date)?$date:date('F Y'));
        $days = $this->yearmonthval($date);
        $this->db->select("*");
        $this->db->where('PHeadName','Expence');
        $this->db->from('acc_coa');
        $query = $this->db->get();
        $result =  $query->result_array();
        $totalamount = 0;
        foreach ($result as $expense) {
            $amount = $this->db->select('ifnull(sum(Debit),0) as amount')->from('acc_transaction')->where('VDate >=',$days['start_date'])->where('VDate <=',$days['end_date'])->where('COAID',$expense['HeadCode'])->get()->row();
            $totalamount = $totalamount+$amount->amount;
        }

        return $totalamount;
    }

// Total Employee Salary
    public function total_employee_salary($date=null) {
        $date = (!empty($date)?$date:date('F Y'));
        $days = $this->yearmonthval($date);
        $this->db->select("sum(total_salary) as totalsalary");
        $this->db->from('employee_salary_payment');
        $this->db->where('payment_date >=',$days['start_date']);
        $this->db->where('payment_date <=',$days['end_date']);
        $query = $this->db->get();
        if(!empty($query->row()->totalsalary)){
            return $query->row()->totalsalary;
        }else{
            return 0.00;
        }
    }

    // Total Employee Salary
    public function total_service_amount($date=null) {
        $date = (!empty($date)?$date:date('F Y'));
        $days = $this->yearmonthval($date);
        $this->db->select("sum(total_amount) as totalservice");
        $this->db->from('service_invoice');
        $this->db->where('date >=',$days['start_date']);
        $this->db->where('date <=',$days['end_date']);
        $query = $this->db->get();
        if(!empty($query->row()->totalservice)){
            return $query->row()->totalservice;
        }else{
            return 0.00;
        }
    }


    public function dashboard_query1($invoice_id,$customer_id){
        $sql =  "SELECT (SELECT SUM(total_price) FROM invoice_details a JOIN invoice b ON b.invoice_id = a.invoice_id WHERE a.invoice_id = '" . $invoice_id . "' AND b.customer_id = '" . $customer_id . "') as total_amount,
    (SELECT SUM(paid_amount) FROM invoice_details a JOIN invoice b ON b.invoice_id = a.invoice_id WHERE a.invoice_id = '" . $invoice_id . "' AND b.customer_id = '" . $customer_id . "') as total_paid,
    (SELECT SUM(due_amount) FROM invoice_details a JOIN invoice b ON b.invoice_id = a.invoice_id WHERE a.invoice_id = '" . $invoice_id . "' AND b.customer_id = '" . $customer_id . "') as total_due,
    (SELECT SUM(total_discount) FROM invoice_details a JOIN invoice b ON b.invoice_id = a.invoice_id WHERE a.invoice_id = '" . $invoice_id . "' AND b.customer_id = '" . $customer_id . "') as total_discount";
        return $sql;

    }

    public function get_data(){

        // $query=$this->db->query("SELECT invoice_id,cheque_date
        //                         FROM invoice
        //                         WHERE invoice_id = $invoice_id");
        // return $query->result();
        $cheque_id = $this->input->get('cheque_id');
        $this->db->select('a.*,a.status as st,b.*');
        $this->db->from('cus_cheque a');
        $this->db->join('invoice b', 'b.invoice_id = a.invoice_id');
        $this->db->where('cheque_id', $cheque_id);
        $this->db->where('a.status', 2);
        $query = $this->db->get();


        // $this->db->select("c.*,e.*");
        //  $this->db->from('cus_cheque c');
        //$this->db->join('bank_add e', 'e.bank_id = c.bank_id');
        // $this->db->join('invoice e', 'e.invoice_id = c.invoice_id');
        //  $this->db->where('invoice_id', $invoice_id);
        // $this->db->join('customer_information d', 'd.customer_id = e.customer_id');
        // $this->db->where('c.status', 2);
        ///  $this->db->where('e.payment_type', 2);
        //  $this->db->order_by('c.cheque_date', 'desc');
        //$query = $this->db->get();



        if($query->num_rows() > 0){
            return $query->row();
        }else {
            return false;
        }

    }

    public function get_puchase_cheque_data(){
        $purchase_id = $this->input->get('purchase_id');
        $this->db->where('purchase_id', $purchase_id);
        $query = $this->db->get('product_purchase');
        if($query->num_rows() > 0){
            return $query->row();
        }else {
            return false;
        }
    }

    public function update_data()
    {
        $invoice_id=$this->input->post('invoice_id');
        $cheque_id=$this->input->post('cheque_id');
        $invoice_no=$this->input->post('invoice');
        $cheque_date=$this->input->post('cheque_date');
        $payment_date=$this->input->post('payment_date');
        $cheque_number=$this->input->post('cheque_no');
        $status=$this->input->post('hidden_status');
        $credit=$this->input->post('credit_amount');
        $due=$this->input->post('due_amount');
        $paid_amount=$this->input->post('paid_amount');
        $customer_id=$this->input->post('customer_id');


        $createby=$this->session->userdata('user_id');
        $createdate=date('Y-m-d H:i:s');

        $cusifo = $this->db->select('*')->from('customer_information')->where('customer_id',$customer_id)->get()->row();
        // echo '<pre>';print_r($cusifo);exit();
        $headn = $customer_id.'-'.$cusifo->customer_name;
        $coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
        $customer_headcode = $coainfo->HeadCode;
        if($status==1){
            $data=array(
                'VNo'            =>  $invoice_id,
                'cheque_id' => $cheque_id,
                'Vtype'          =>  'INV',
                'VDate'          =>  $createdate,
                'COAID'          =>  $customer_headcode,
                'Narration'      =>  'Customer credit for Paid Amount For Customer Invoice NO- '.$invoice_no.' Customer- '.$cusifo->customer_name,
                'Debit'          =>  0,
                'Credit'         =>  $credit,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1
            );
            $dd=$this->db->insert('acc_transaction', $data);
        }else{

            $data2=array(
                'VNo'            =>  $invoice_id,
                'cheque_id' => $cheque_id,
                'Vtype'          =>  'INV',
                'VDate'          =>  $createdate,
                'COAID'          =>  $customer_headcode,
                'Narration'      =>  'Customer credit for Paid Amount For Customer Invoice NO- '.$invoice_no.' Customer- '.$cusifo->customer_name,
                'Debit'          =>  0,
                'Credit'         =>  $credit,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1

            );
            $dd=$this->db->insert('acc_transaction', $data2);

            $data3=array(
                'VNo'            =>  $invoice_id,
                'cheque_id' => $cheque_id,
                'Vtype'          =>  'INV',
                'VDate'          =>  $createdate,
                'COAID'          =>  1020101,
                'Narration'      =>  'Customer credit for Paid Amount For Customer Invoice NO- '.$invoice_no.' Customer- '.$cusifo->customer_name,
                'Debit'          =>  0,
                'Credit'         =>  $credit,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1

            );
            $ddd=$this->db->insert('acc_transaction', $data3);
        }


        //$this->db->set('cheque_date', $cheque_date);
        // $this->db->set('cheque_no', $cheque_number);
        //$this->db->set('status', $status);
        $this->db->set('paid_amount', $credit+$paid_amount);
        $this->db->where('invoice_id',$invoice_id);
        $result=$this->db->update('invoice');

        $this->db->set('payment_date', $payment_date);
        $this->db->set('cheque_date', $cheque_date);
        $this->db->set('cheque_no', $cheque_number);
        $this->db->set('status', $status);
        //  $this->db->set('paid_amount', $credit+$paid_amount);
        $this->db->where('cheque_id',$cheque_id);
        $cheque=$this->db->update('cus_cheque');


        return array(
            'result' => $result,
            'cheque' => $cheque,
            'dd' => $dd,
            'ddd' => $ddd,
        );
    }





    public function wastage_entry(){
        $this->load->model('Web_settings');
      //  $wastage_id=date('YmdHis');

        $quantity            = $this->input->post('product_quantity',true);
        $p_id             = $this->input->post('product_id',true);
        //  $unit             = $this->input->post('unit',true);


        for ($i = 0, $n   = count($p_id); $i < $n; $i++) {
            $qty  = $quantity[$i];
            //   $un  = $unit[$i];
            $product_id   = $p_id[$i];

//            $supplier_price=$this->db->select('supplier_price')->from('supplier_product')->where('product_id',$product_id)->get()->row();

          //  $price=$qty*($supplier_price->supplier_price);
            $data = array(

//                'wastage_id'=>$wastage_id,
                'product_id'=>$product_id,
                'wastage_quantity'=>$qty,
                'status'=>1


            );
            if (!empty($quantity)) {
                $this->db->insert('wastage_dec', $data);


            }


        }

        return $data;
    }




    public function update_purchase_data(){
        // $purchase_id=$this->input->post('purchase_id');
        // $cheque_date=$this->input->post('cheque_date');
        // $cheque_no=$this->input->post('cheque_no');
        // // $paid_amount=$this->input->post('paid_amount');
        // // $due_amount=$this->input->post('due_amount');
        // $status=$this->input->post('hidden_status');

        $purchase_id=$this->input->post('purchase_id');
        $supplier_id=$this->input->post('supplier_id');
        $cheque_date=$this->input->post('cheque_date');
        $cheque_no=$this->input->post('cheque_no');
        $paid_amount=$this->input->post('paid_amount');
        $debit_amount=$this->input->post('debit_amount');
        $due_amount=$this->input->post('due_amount');
        $status=$this->input->post('hidden_status');

        $createby=$this->session->userdata('user_id');
        $createdate=date('Y-m-d H:i:s');

        $cusifo = $this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        // echo '<pre>';print_r($cusifo);exit();
        $headn = $supplier_id.'-'.$cusifo->supplier_name;
        $coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
        $customer_headcode = $coainfo->HeadCode;

        if($status==1){
            $data=array(
                'VNo'            =>  $purchase_id,
                'Vtype'          =>  'Purchase',
                'VDate'          =>  $createdate,
                'COAID'          =>  $customer_headcode,
                'Narration'      =>  'Supplier credit for Paid Amount For Chalan NO- '.$chalan_no.' Supplier '.$cusifo->supplier_name,
                'Debit'          =>  0,
                'Credit'         =>  $debit_amount,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1
            );
            $dd=$this->db->insert('acc_transaction', $data);
        }else{

            $data2=array(
                'VNo'            =>  $purchase_id,
                'Vtype'          =>  'Purchase',
                'VDate'          =>  $createdate,
                'COAID'          =>  $customer_headcode,
                'Narration'      =>  'Supplier debit for Paid Amount For Chalan NO- '.$chalan_no.' Supplier '.$cusifo->supplier_name,
                'Debit'          =>  0,
                'Credit'         =>  $debit_amount,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1

            );
            $dd=$this->db->insert('acc_transaction', $data2);

            $data3=array(
                'VNo'             =>  $purchase_id,
                'Vtype'          =>  'Purchase',
                'VDate'          =>  $createdate,
                'COAID'          =>  1020101,
                'Narration'      =>   'Cash in  debit for Paid Amount For Chalan NO- '.$chalan_no.'Supplier '.$cusifo->supplier_name,
                'Debit'          =>  $debit_amount,
                'Credit'         =>  0,
                'IsPosted'       => 1,
                'CreateBy'       => $createby,
                'CreateDate'     => $createdate ,
                'IsAppove'       => 1

            );
            $ddd=$this->db->insert('acc_transaction', $data3);
        }


        $this->db->set('cheque_date', $cheque_date);
        $this->db->set('cheque_no', $cheque_no);
        $this->db->set('status', $status);
        $this->db->set('paid_amount', $debit_amount+$paid_amount);
        $this->db->where('purchase_id',$purchase_id);
        $result=$this->db->update('product_purchase');

        return array(
            'result' => $result,
            'dd' => $dd,
            'ddd' => $ddd,
        );
    }

    public function get_approved_purchase()
    {
        $this->db->select('*');
        $this->db->from('product_purchase_details a');
        $this->db->join('product_purchase b', 'b.purchase_id=a.purchase_id');
        $this->db->join('product_information c', 'c.product_id=a.product_id');
        $this->db->where('a.isAprv', 1);
        $this->db->order_by('b.purchase_date', 'ASC');
        $query = $this->db->get();
        // echo '<pre>';print_r($query->result_array());exit();
        if($query->num_rows() > 0){
            return $query->result_array();
        }
        return false;

    }

}