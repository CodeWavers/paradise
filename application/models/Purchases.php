<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Purchases extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    //Count purchase
    public function count_purchase() {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->order_by('purchase_id', 'desc');
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }


     public function getPurchaseList($postData=null){
         $this->load->library('occational');
         $this->load->model('Web_settings');
         $currency_details = $this->Web_settings->retrieve_setting_editdata();
         $response = array();
         $fromdate = $this->input->post('fromdate');
         $todate   = $this->input->post('todate');
         if(!empty($fromdate)){
            $datbetween = "(a.purchase_date BETWEEN '$fromdate' AND '$todate')";
         }else{
            $datbetween = "";
         }
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
            $searchQuery = " (b.supplier_name like '%".$searchValue."%' or a.chalan_no like '%".$searchValue."%' or a.purchase_id like '%".$searchValue."%' or a.purchase_date like'%".$searchValue."%')";
         }

         ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id','left');
          if(!empty($fromdate) && !empty($todate)){
             $this->db->where($datbetween);
         }
          if($searchValue != '')
          $this->db->where($searchQuery);

         $records = $this->db->get()->result();
         $totalRecords = $records[0]->allcount;

         ## Total number of record with filtering
         $this->db->select('count(*) as allcount');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id','left');
         if(!empty($fromdate) && !empty($todate)){
             $this->db->where($datbetween);
         }
         if($searchValue != '')
            $this->db->where($searchQuery);

         $records = $this->db->get()->result();
         $totalRecordwithFilter = $records[0]->allcount;

         ## Fetch records
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id','left');
          if(!empty($fromdate) && !empty($todate)){
             $this->db->where($datbetween);
         }
         if($searchValue != '')
         $this->db->where($searchQuery);

         $this->db->order_by($columnName, $columnSortOrder);
         $this->db->limit($rowperpage, $start);
         $records = $this->db->get()->result();
         $data = array();
         $sl =1;
         foreach($records as $record ){
          $button = '';
          $base_url = base_url();
          $jsaction = "return confirm('Are You Sure ?')";

           $button .='  <a href="'.$base_url.'Cpurchase/purchase_details_data/'.$record->purchase_id.'" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="'.display('purchase_details').'"><i class="fa fa-window-restore" aria-hidden="true"></i></a>';
      if($this->permission1->method('manage_purchase','update')->access()){
         $button .=' <a href="'.$base_url.'Cpurchase/purchase_update_form/'.$record->purchase_id.'" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="'. display('update').'"><i class="fa fa-pencil" aria-hidden="true"></i></a> ';
     }



         $purchase_ids ='<a href="'.$base_url.'Cpurchase/purchase_details_data/'.$record->purchase_id.'">'.$record->purchase_id.'</a>';

            $data[] = array(
                'sl'               =>$sl,
                'chalan_no'        =>$record->chalan_no,
                'purchase_id'      =>$purchase_ids,
                'supplier_name'    =>$record->supplier_name,
                'purchase_date'    =>$this->occational->dateConvert($record->purchase_date),
                'total_amount'     =>$record->grand_total_amount,
                'button'           =>$button,

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




    //purchase List
    public function purchase_list($per_page, $page) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->order_by('purchase_id', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // purchase search by suppplier
    public function purchase_search($supplier_id, $per_page, $page) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.supplier_id', $supplier_id);
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // purchase search count
    public function count_purchase_seach($supplier_id) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.supplier_id', $supplier_id);
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

//purchase info by invoice id
    public function purchase_list_invoice_id($invoice_no) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('a.chalan_no', $invoice_no);
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->order_by('purchase_id', 'desc');
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Select All Supplier List
    public function select_all_supplier() {
        $query = $this->db->select('*')
                ->from('supplier_information')
                ->where('status', '1')
                ->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //purchase Search  List
    public function purchase_by_search($supplier_id) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->where('b.supplier_id', $supplier_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Count purchase
    public function purchase_entry() {
        $purchase_id = date('YmdHis');


        $p_id = $this->input->post('product_id',TRUE);
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
        $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
        $receive_by=$this->session->userdata('user_id');
        $receive_date=date('Y-m-d');
        $createdate=date('Y-m-d H:i:s');
        $paid_amount = $this->input->post('paid_amount',TRUE);
        $due_amount = $this->input->post('due_amount',TRUE);
        $discount = $this->input->post('discount',TRUE);
        $bank_id = $this->input->post('bank_id',TRUE);
        if(!empty($bank_id)){
            $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id',$bank_id)->get()->row()->bank_name;

            $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$bankname)->get()->row()->HeadCode;
        }else{
            $bankcoaid = '';
        }

        //supplier & product id relation ship checker.
        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $product_id = $p_id[$i];
            $value = $this->product_supplier_check($product_id, $supplier_id);
            if ($value == 0) {
                $this->session->set_flashdata('error_message', display('product_and_supplier_did_not_match'));
                redirect(base_url('Cpurchase'));
                exit();
            }
        }

        if($this->input->post('paid_amount')<=0){

            $data = array(
                'purchase_id'        => $purchase_id,
                'chalan_no'          => $this->input->post('chalan_no',TRUE),
                'supplier_id'        => $this->input->post('supplier_id',TRUE),
                'grand_total_amount' => $this->input->post('grand_total_price',TRUE),
                'total_discount'     => $this->input->post('discount',TRUE),
                'purchase_date'      => $this->input->post('purchase_date',TRUE),
                'cheque_date'      => $this->input->post('cheque_date',TRUE),
                //'rn_number'      => $this->input->post('rn_number',TRUE),
                'purchase_details'   => $this->input->post('purchase_details',TRUE),
                'paid_amount'        => $paid_amount,
                'due_amount'         => $due_amount,
                'status'             => 2,
                'bank_id'            =>  $this->input->post('bank_id',TRUE),
                'cheque_no'            =>  $this->input->post('cheque_no',TRUE),
                'payment_type'       =>  $this->input->post('paytype',TRUE),
            );
            $this->db->insert('product_purchase', $data);
        }else{
            $data = array(
                'purchase_id'        => $purchase_id,
                'chalan_no'          => $this->input->post('chalan_no',TRUE),
                'supplier_id'        => $this->input->post('supplier_id',TRUE),
                'grand_total_amount' => $this->input->post('grand_total_price',TRUE),
                'total_discount'     => $this->input->post('discount',TRUE),
                'purchase_date'      => $this->input->post('purchase_date',TRUE),
                'cheque_date'      => $this->input->post('cheque_date',TRUE),
                //'rn_number'      => $this->input->post('rn_number',TRUE),
                'purchase_details'   => $this->input->post('purchase_details',TRUE),
                'paid_amount'        => $paid_amount,
                'due_amount'         => $due_amount,
                'status'             => 1,
                'bank_id'            =>  $this->input->post('bank_id',TRUE),
                'cheque_no'            =>  $this->input->post('cheque_no',TRUE),
                'payment_type'       =>  $this->input->post('paytype',TRUE),
            );
            $this->db->insert('product_purchase', $data);
        }
        //Supplier Credit
        $purchasecoatran = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $sup_coa->HeadCode,
            'Narration'      =>  'Supplier .'.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $this->input->post('grand_total_price',TRUE),
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $receive_date,
            'IsAppove'       =>  1
        );
        ///Inventory Debit
        $coscr = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  10107,
            'Narration'      =>  'Inventory Debit For Supplier '.$supinfo->supplier_name,
            'Debit'          =>  $this->input->post('grand_total_price',TRUE),
            'Credit'         =>  0,//purchase price asbe
            'IsPosted'       => 1,
            'CreateBy'       => $receive_by,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );



        // Expense for company
        $expense = array(
            'VNo'            => $purchase_id,
            'Vtype'          => 'Purchase',
            'VDate'          => $this->input->post('purchase_date',TRUE),
            'COAID'          => 402,
            'Narration'      => 'Company Credit For  '.$supinfo->supplier_name,
            'Debit'          => $this->input->post('grand_total_price',TRUE),
            'Credit'         => 0,//purchase price asbe
            'IsPosted'       => 1,
            'CreateBy'       => $receive_by,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );
        $cashinhand = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  1020101,
            'Narration'      =>  'Cash in Hand For Supplier '.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $paid_amount,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );

        $supplierdebit = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $sup_coa->HeadCode,
            'Narration'      =>  'Supplier .'.$supinfo->supplier_name,
            'Debit'          =>  $paid_amount,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $receive_date,
            'IsAppove'       =>  1
        );

        // bank ledger
        $bankc = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $bankcoaid,
            'Narration'      =>  'Paid amount for Supplier  '.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $paid_amount,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );
        // Bank summary for credit

        //new end

        //$this->db->insert('product_purchase', $data);

        $this->db->insert('acc_transaction',$coscr);
        $this->db->insert('acc_transaction',$purchasecoatran);
        $this->db->insert('acc_transaction',$expense);
        if($this->input->post('paytype') == 2){
            if(!empty($paid_amount)){
                $this->db->insert('acc_transaction',$bankc);

                $this->db->insert('acc_transaction',$supplierdebit);
            }
        }
        if($this->input->post('paytype') == 1){
            if(!empty($paid_amount)){
                $this->db->insert('acc_transaction',$cashinhand);
                $this->db->insert('acc_transaction',$supplierdebit);
            }
        }

        $rate = $this->input->post('product_rate',TRUE);
        $quantity = $this->input->post('product_quantity',TRUE);
        $lot = $this->input->post('lot_number',TRUE);
        $sn = $this->input->post('sn',TRUE);
        $origin = $this->input->post('origin',TRUE);
        $warehouse = $this->input->post('warehouse',TRUE);
        $warrenty = $this->input->post('warrenty_date',TRUE);
        $expired = $this->input->post('expired_date',TRUE);
        $t_price = $this->input->post('total_price',TRUE);
        $discount = $this->input->post('discount',TRUE);

        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $product_quantity = $quantity[$i];
            $lot_number = $lot[$i];
            $sn_number = $sn[$i];
            $origin_t = $origin[$i];
            $warehouse = $warehouse[$i];
            $warrenty_date = $warrenty[$i];
            $expired_date= $expired[$i];
            $product_rate = $rate[$i];
            $product_id = $p_id[$i];
            $total_price = $t_price[$i];
            $disc = $discount[$i];

            $data1 = array(
                'purchase_detail_id' => $this->generator(15),
                'purchase_id'        => $purchase_id,
                'product_id'         => $product_id,
                'quantity'           => $product_quantity,
                'sn'           => $sn_number,
                 'qty'           => $product_quantity,
                'lot_number'         => $lot_number,
                'origin'             => $origin_t,
                'warehouse'          => $warehouse,
                'warrenty_date'      => $warrenty_date,
                'expired_date'       => $expired_date,
                'rate'               => $product_rate,
                'total_amount'       => $total_price,
                'discount'           => $disc,
                'status'             => 1
            );

            if (!empty($quantity)) {
                $this->db->insert('product_purchase_details', $data1);
            }
        }

        return true;
    }


    public function po_entry() {
        $purchase_id = date('YmdHis');


        $p_id = $this->input->post('p_id',TRUE);
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
        $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
        $receive_by=$this->session->userdata('user_id');
        $receive_date=date('Y-m-d');
        $createdate=date('Y-m-d H:i:s');
        $paid_amount = $this->input->post('paid_amount',TRUE);
        $due_amount = $this->input->post('due_amount',TRUE);
        $discount = $this->input->post('discount',TRUE);
        $bank_id = $this->input->post('bank_id',TRUE);
        if(!empty($bank_id)){
            $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id',$bank_id)->get()->row()->bank_name;

            $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$bankname)->get()->row()->HeadCode;
        }else{
            $bankcoaid = '';
        }

        //supplier & product id relation ship checker.
        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $product_id = $p_id[$i];
            $value = $this->product_supplier_check($product_id, $supplier_id);
            if ($value == 0) {
                $this->session->set_flashdata('error_message', display('product_and_supplier_did_not_match'));
                redirect(base_url('Cpurchase/purchase_order'));
                exit();
            }
        }

        if($this->input->post('paid_amount')<=0){

            $data = array(
                'purchase_id'        => $purchase_id,
               // 'chalan_no'          => $this->input->post('chalan_no',TRUE),
                'supplier_id'        => $this->input->post('supplier_id',TRUE),
                'grand_total_amount' => $this->input->post('grand_total_price',TRUE),
                'total_discount'     => $this->input->post('discount',TRUE),
                'purchase_date'      => $this->input->post('purchase_date',TRUE),
                'cheque_date'      => $this->input->post('cheque_date',TRUE),
                //'rn_number'      => $this->input->post('rn_number',TRUE),
                'purchase_details'   => $this->input->post('purchase_details',TRUE),
                'paid_amount'        => $paid_amount,
                'due_amount'         => $due_amount,
                'status'             => 2,
                'bank_id'            =>  $this->input->post('bank_id',TRUE),
                'cheque_no'            =>  $this->input->post('cheque_no',TRUE),
                'payment_type'       =>  $this->input->post('paytype',TRUE),
            );
            $this->db->insert('product_purchase', $data);
        }else{
            $data = array(
                'purchase_id'        => $purchase_id,
               // 'chalan_no'          => $this->input->post('chalan_no',TRUE),
                'supplier_id'        => $this->input->post('supplier_id',TRUE),
                'grand_total_amount' => $this->input->post('grand_total_price',TRUE),
                'total_discount'     => $this->input->post('discount',TRUE),
                'purchase_date'      => $this->input->post('purchase_date',TRUE),
                'cheque_date'      => $this->input->post('cheque_date',TRUE),
                //'rn_number'      => $this->input->post('rn_number',TRUE),
                'purchase_details'   => $this->input->post('purchase_details',TRUE),
                'paid_amount'        => $paid_amount,
                'due_amount'         => $due_amount,
                'status'             => 1,
                'bank_id'            =>  $this->input->post('bank_id',TRUE),
                'cheque_no'            =>  $this->input->post('cheque_no',TRUE),
                'payment_type'       =>  $this->input->post('paytype',TRUE),
            );
            $this->db->insert('product_purchase', $data);
        }
        //Supplier Credit
        $purchasecoatran = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $sup_coa->HeadCode,
            'Narration'      =>  'Supplier .'.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $this->input->post('grand_total_price',TRUE),
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $receive_date,
            'IsAppove'       =>  1
        );
        ///Inventory Debit
        $coscr = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  10107,
            'Narration'      =>  'Inventory Debit For Supplier '.$supinfo->supplier_name,
            'Debit'          =>  $this->input->post('grand_total_price',TRUE),
            'Credit'         =>  0,//purchase price asbe
            'IsPosted'       => 1,
            'CreateBy'       => $receive_by,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );



        // Expense for company
        $expense = array(
            'VNo'            => $purchase_id,
            'Vtype'          => 'Purchase',
            'VDate'          => $this->input->post('purchase_date',TRUE),
            'COAID'          => 402,
            'Narration'      => 'Company Credit For  '.$supinfo->supplier_name,
            'Debit'          => $this->input->post('grand_total_price',TRUE),
            'Credit'         => 0,//purchase price asbe
            'IsPosted'       => 1,
            'CreateBy'       => $receive_by,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );
        $cashinhand = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  1020101,
            'Narration'      =>  'Cash in Hand For Supplier '.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $paid_amount,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );

        $supplierdebit = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $sup_coa->HeadCode,
            'Narration'      =>  'Supplier .'.$supinfo->supplier_name,
            'Debit'          =>  $paid_amount,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $receive_date,
            'IsAppove'       =>  1
        );

        // bank ledger
        $bankc = array(
            'VNo'            =>  $purchase_id,
            'Vtype'          =>  'Purchase',
            'VDate'          =>  $this->input->post('purchase_date',TRUE),
            'COAID'          =>  $bankcoaid,
            'Narration'      =>  'Paid amount for Supplier  '.$supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $paid_amount,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $receive_by,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );
        // Bank summary for credit

        //new end

        //$this->db->insert('product_purchase', $data);

        $this->db->insert('acc_transaction',$coscr);
        $this->db->insert('acc_transaction',$purchasecoatran);
        $this->db->insert('acc_transaction',$expense);
        if($this->input->post('paytype') == 2){
            if(!empty($paid_amount)){
                $this->db->insert('acc_transaction',$bankc);

                $this->db->insert('acc_transaction',$supplierdebit);
            }
        }
        if($this->input->post('paytype') == 1){
            if(!empty($paid_amount)){
                $this->db->insert('acc_transaction',$cashinhand);
                $this->db->insert('acc_transaction',$supplierdebit);
            }
        }

        $rate = $this->input->post('product_rate',TRUE);
        $purchase_order = $this->input->post('product_id',TRUE);
        $quantity = $this->input->post('product_quantity',TRUE);
      //  $lot = $this->input->post('lot_number',TRUE);
        //$sn = $this->input->post('sn',TRUE);
       // $origin = $this->input->post('origin',TRUE);
       // $warehouse = $this->input->post('warehouse',TRUE);
        $warrenty = $this->input->post('warrenty_date',TRUE);
        $expired = $this->input->post('expired_date',TRUE);
        $t_price = $this->input->post('total_price',TRUE);
        $discount = $this->input->post('discount',TRUE);

        $number=mt_rand();

        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $product_quantity = $quantity[$i];
          //  $lot_number = $lot[$i];
          //  $sn_number = $sn[$i];
          //  $origin_t = $origin[$i];
            $po = $purchase_order[$i];
          //  $warrenty_date = $warrenty[$i];
          //  $expired_date= $expired[$i];
            $product_rate = $rate[$i];
            $product_id = $p_id[$i];
            $total_price = $t_price[$i];
            $disc = $discount[$i];

            $data1 = array(
                'purchase_detail_id' => $this->generator(15),
                'chalan_id'=> 'CH'.mt_rand(),
                'purchase_id'        => $purchase_id,
                'product_id'         => $product_id,
                'quantity'           => $product_quantity,
                'purchase_order'           => $po,
                 'qty'           => $product_quantity,
             //   'lot_number'         => $lot_number,
             //   'origin'             => $origin_t,
             //   'warehouse'          => $warehouse,
            //    'warrenty_date'      => $warrenty_date,
            //    'expired_date'       => $expired_date,
                'rate'               => $product_rate,
                'total_amount'       => $total_price,
                'discount'           => $disc,
                'status'             => 2
            );


            if (!empty($quantity)) {
                $this->db->insert('product_purchase_details', $data1);

            }
            $this->db->set('status', 5);
            $this->db->where('rqsn_detail_id',$po);
            $this->db->update('rqsn_details');
        }

        return true;
    }

    //Retrieve purchase Edit Data
    public function retrieve_purchase_editdata($purchase_id) {
        $this->db->select('a.*,
						b.*,
						c.product_id,
						c.product_name,
						c.product_model,
						d.supplier_id,
						d.supplier_name'
        );
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id =a.purchase_id');
        $this->db->join('product_information c', 'c.product_id =b.product_id');
        $this->db->join('supplier_information d', 'd.supplier_id = a.supplier_id');
        $this->db->where('a.purchase_id', $purchase_id);
        $this->db->order_by('a.purchase_details', 'asc');
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

    //Update Categories
    public function update_purchase() {
          $purchase_id  = $this->input->post('purchase_id',TRUE);
          $paid_amount  = $this->input->post('paid_amount',TRUE);
          $due_amount   = $this->input->post('due_amount',TRUE);
          $bank_id      = $this->input->post('bank_id',TRUE);
        if(!empty($bank_id)){
       $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id',$bank_id)->get()->row()->bank_name;

       $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$bankname)->get()->row()->HeadCode;
   }
        $p_id = $this->input->post('product_id',TRUE);
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
        $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
        $receive_by=$this->session->userdata('user_id');
        $receive_date=date('Y-m-d');
        $createdate=date('Y-m-d H:i:s');


        $data = array(
            'purchase_id'        => $purchase_id,
            'chalan_no'          => $this->input->post('chalan_no',TRUE),
            'supplier_id'        => $this->input->post('supplier_id',TRUE),
            'grand_total_amount' => $this->input->post('grand_total_price',TRUE),
            'total_discount'     => $this->input->post('discount',TRUE),
            'purchase_date'      => $this->input->post('purchase_date',TRUE),
            'purchase_details'   => $this->input->post('purchase_details',TRUE),
            'paid_amount'        => $paid_amount,
            'due_amount'         => $due_amount,
             'bank_id'           =>  $this->input->post('bank_id',TRUE),
            'payment_type'       =>  $this->input->post('paytype',TRUE),
        );
         $cashinhand = array(
      'VNo'            =>  $purchase_id,
      'Vtype'          =>  'Purchase',
      'VDate'          =>  $this->input->post('purchase_date',TRUE),
      'COAID'          =>  1020101,
      'Narration'      =>  'Cash in Hand For Supplier '.$supinfo->supplier_name,
      'Debit'          =>  0,
      'Credit'         =>  $paid_amount,
      'IsPosted'       =>  1,
      'CreateBy'       =>  $receive_by,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    );
                  // bank ledger
 $bankc = array(
      'VNo'            =>  $purchase_id,
      'Vtype'          =>  'Purchase',
      'VDate'          =>  $this->input->post('purchase_date',TRUE),
      'COAID'          =>  $bankcoaid,
      'Narration'      =>  'Paid amount for Supplier  '.$supinfo->supplier_name,
      'Debit'          =>  0,
      'Credit'         =>  $paid_amount,
      'IsPosted'       =>  1,
      'CreateBy'       =>  $receive_by,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    );


         $purchasecoatran = array(
          'VNo'            =>  $purchase_id,
          'Vtype'          =>  'Purchase',
          'VDate'          =>  $this->input->post('purchase_date',TRUE),
          'COAID'          =>  $sup_coa->HeadCode,
          'Narration'      =>  'Supplier -'.$supinfo->supplier_name,
          'Debit'          =>  0,
          'Credit'         =>  $this->input->post('grand_total_price',TRUE),
          'IsPosted'       =>  1,
          'CreateBy'       =>  $receive_by,
          'CreateDate'     =>  $receive_date,
          'IsAppove'       =>  1
        );
          ///Inventory credit
       $coscr = array(
      'VNo'            =>  $purchase_id,
      'Vtype'          =>  'Purchase',
      'VDate'          =>  $this->input->post('purchase_date',TRUE),
      'COAID'          =>  10107,
      'Narration'      =>  'Inventory Devit Supplier '.$supinfo->supplier_name,
      'Debit'          =>  $this->input->post('grand_total_price',TRUE),
      'Credit'         =>  0,//purchase price asbe
      'IsPosted'       => 1,
      'CreateBy'       => $receive_by,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    );
          // Expense for company
         $expense = array(
      'VNo'            => $purchase_id,
      'Vtype'          => 'Purchase',
      'VDate'          => $this->input->post('purchase_date',TRUE),
      'COAID'          => 402,
      'Narration'      => 'Company Credit For Supplier'.$supinfo->supplier_name,
      'Debit'          => $this->input->post('grand_total_price',TRUE),
      'Credit'         => 0,//purchase price asbe
      'IsPosted'       => 1,
      'CreateBy'       => $receive_by,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    );

         $supplier_debit = array(
          'VNo'            =>  $purchase_id,
          'Vtype'          =>  'Purchase',
          'VDate'          =>  $this->input->post('purchase_date',TRUE),
          'COAID'          =>  $sup_coa->HeadCode,
          'Narration'      =>  'Supplier . '.$supinfo->supplier_name,
          'Debit'          =>  $paid_amount,
          'Credit'         =>  0,
          'IsPosted'       =>  1,
          'CreateBy'       =>  $receive_by,
          'CreateDate'     =>  $receive_date,
          'IsAppove'       =>  1
        );

        if ($purchase_id != '') {
            $this->db->where('purchase_id', $purchase_id);
            $this->db->update('product_purchase', $data);
            //account transaction update
            $this->db->where('VNo', $purchase_id);
            $this->db->update('acc_transaction');

            //supplier ledger update

            $this->db->where('purchase_id', $purchase_id);
            $this->db->update('product_purchase_details');
        }

        $this->db->insert('acc_transaction',$coscr);
        $this->db->insert('acc_transaction',$purchasecoatran);
        $this->db->insert('acc_transaction',$expense);
        if($this->input->post('paytype') == 2){
          if(!empty($paid_amount)){
        $this->db->insert('acc_transaction',$bankc);
        $this->db->insert('acc_transaction',$supplier_debit);
      }
        }
        if($this->input->post('paytype') == 1){
          if(!empty($paid_amount)){
        $this->db->insert('acc_transaction',$cashinhand);
        $this->db->insert('acc_transaction',$supplier_debit);
        }
        }

        $rate = $this->input->post('product_rate',TRUE);
        $quantity = $this->input->post('product_quantity',TRUE);
        $lot = $this->input->post('lot_number',TRUE);
        $sn = $this->input->post('sn',TRUE);
        $origin = $this->input->post('origin',TRUE);
        $warehouse_t = $this->input->post('warehouse',TRUE);
        $warrenty = $this->input->post('warrenty_date',TRUE);
        $expired = $this->input->post('expired_date',TRUE);
        $t_price = $this->input->post('total_price',TRUE);
        $discount = $this->input->post('discount',TRUE);
        $this->db->where('purchase_id', $purchase_id);
        $this->db->delete('product_purchase_details');
        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $product_quantity = $quantity[$i];
            $lot_number = $lot[$i];
            $sn_number = $sn[$i];
            $origin_t = $origin[$i];
            $warehouse = $warehouse_t[$i];
            $warrenty_date = $warrenty[$i];
            $expired_date= $expired[$i];
            $product_rate = $rate[$i];
            $product_id = $p_id[$i];
            $total_price = $t_price[$i];
            $disc = $discount[$i];

            $data1 = array(
                'purchase_detail_id' => $this->generator(15),
                'purchase_id'        => $purchase_id,
                'product_id'         => $product_id,
                'quantity'           => $product_quantity,
                'sn'           => $sn_number,
                'qty'           => $product_quantity,
                'lot_number'         => $lot_number,
                'origin'             => $origin_t,
                'warehouse'          => $warehouse,
                'warrenty_date'      => $warrenty_date,
                'expired_date'       => $expired_date,
                'rate'               => $product_rate,
                'total_amount'       => $total_price,
                'discount'           => $disc,
                'status'             => 1
            );


            if ((isset($quantity))) {

                $this->db->insert('product_purchase_details', $data1);
            }
        }
        //echo "<pre>";print_r($data1);exit();
        return true;
    }

    public function update_po() {
          date_default_timezone_set("Asia/Dhaka");
          $purchase_id  = $this->input->post('purchase_id',TRUE);
          $po_no  = $this->input->post('pur_order_no',TRUE);
          $invoice_no  = $this->input->post('invoice_no',TRUE);
          $paid_amount  = $this->input->post('paid_amount',TRUE);
          $due_amount   = $this->input->post('due_amount',TRUE);
          $grand_total   = $this->input->post('grand_total',TRUE);
          $total_discount   = $this->input->post('total_dis',TRUE);
          $purchase_date   = $this->input->post('purchase_date',TRUE);
          $pay_type   = $this->input->post('pay_type',TRUE);
          $bank_id      = $this->input->post('bank_id',TRUE);
        if(!empty($bank_id)){
       $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id',$bank_id)->get()->row()->bank_name;

       $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$bankname)->get()->row()->HeadCode;
   }
        $p_id = $this->input->post('product_id',TRUE);
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
        $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
        $receive_by=$this->session->userdata('user_id');
        $receive_date=date('Y-m-d');
        $createdate=date('Y-m-d H:i:s');


        $data = array(

            'invoice_no'=>$invoice_no,
           // 'supplier_id'=>$supplier_id,
            'grand_total_amount'=>$grand_total,
            'paid_amount'=>$paid_amount,
            'due_amount'=>$due_amount,
            'total_discount'=>$total_discount,
            'payment_type'=>$pay_type,
            //'isaprv' =>1,
        );

            $this->db->where('purchase_order', $po_no);
            $this->db->update('product_purchase',$data);


        $this->db->set('isAprv',1);
        $this->db->where('purchase_id',$purchase_id);
        $this->db->where('supplier_id',$supplier_id);
        $this->db->update('product_purchase_details');


//         $cashinhand = array(
//      'VNo'            =>  $purchase_id,
//      'Vtype'          =>  'Purchase',
//      'VDate'          =>  $this->input->post('purchase_date',TRUE),
//      'COAID'          =>  1020101,
//      'Narration'      =>  'Cash in Hand For Supplier '.$supinfo->supplier_name,
//      'Debit'          =>  0,
//      'Credit'         =>  $paid_amount,
//      'IsPosted'       =>  1,
//      'CreateBy'       =>  $receive_by,
//      'CreateDate'     =>  $createdate,
//      'IsAppove'       =>  1
//    );
//                  // bank ledger
// $bankc = array(
//      'VNo'            =>  $purchase_id,
//      'Vtype'          =>  'Purchase',
//      'VDate'          =>  $this->input->post('purchase_date',TRUE),
//      'COAID'          =>  $bankcoaid,
//      'Narration'      =>  'Paid amount for Supplier  '.$supinfo->supplier_name,
//      'Debit'          =>  0,
//      'Credit'         =>  $paid_amount,
//      'IsPosted'       =>  1,
//      'CreateBy'       =>  $receive_by,
//      'CreateDate'     =>  $createdate,
//      'IsAppove'       =>  1
//    );
//
//
//         $purchasecoatran = array(
//          'VNo'            =>  $purchase_id,
//          'Vtype'          =>  'Purchase',
//          'VDate'          =>  $this->input->post('purchase_date',TRUE),
//          'COAID'          =>  $sup_coa->HeadCode,
//          'Narration'      =>  'Supplier -'.$supinfo->supplier_name,
//          'Debit'          =>  0,
//          'Credit'         =>  $this->input->post('grand_total_price',TRUE),
//          'IsPosted'       =>  1,
//          'CreateBy'       =>  $receive_by,
//          'CreateDate'     =>  $receive_date,
//          'IsAppove'       =>  1
//        );
//          ///Inventory credit
//       $coscr = array(
//      'VNo'            =>  $purchase_id,
//      'Vtype'          =>  'Purchase',
//      'VDate'          =>  $this->input->post('purchase_date',TRUE),
//      'COAID'          =>  10107,
//      'Narration'      =>  'Inventory Devit Supplier '.$supinfo->supplier_name,
//      'Debit'          =>  $this->input->post('grand_total_price',TRUE),
//      'Credit'         =>  0,//purchase price asbe
//      'IsPosted'       => 1,
//      'CreateBy'       => $receive_by,
//      'CreateDate'     => $createdate,
//      'IsAppove'       => 1
//    );
//          // Expense for company
//         $expense = array(
//      'VNo'            => $purchase_id,
//      'Vtype'          => 'Purchase',
//      'VDate'          => $this->input->post('purchase_date',TRUE),
//      'COAID'          => 402,
//      'Narration'      => 'Company Credit For Supplier'.$supinfo->supplier_name,
//      'Debit'          => $this->input->post('grand_total_price',TRUE),
//      'Credit'         => 0,//purchase price asbe
//      'IsPosted'       => 1,
//      'CreateBy'       => $receive_by,
//      'CreateDate'     => $createdate,
//      'IsAppove'       => 1
//    );
//
//         $supplier_debit = array(
//          'VNo'            =>  $purchase_id,
//          'Vtype'          =>  'Purchase',
//          'VDate'          =>  $this->input->post('purchase_date',TRUE),
//          'COAID'          =>  $sup_coa->HeadCode,
//          'Narration'      =>  'Supplier . '.$supinfo->supplier_name,
//          'Debit'          =>  $paid_amount,
//          'Credit'         =>  0,
//          'IsPosted'       =>  1,
//          'CreateBy'       =>  $receive_by,
//          'CreateDate'     =>  $receive_date,
//          'IsAppove'       =>  1
//        );
//
//        if ($purchase_id != '') {
//            $this->db->where('purchase_id', $purchase_id);
//            $this->db->update('product_purchase', $data);
//            //account transaction update
//             $this->db->where('VNo', $purchase_id);
//            $this->db->update('acc_transaction');
//
//            //supplier ledger update
//
//            $this->db->where('purchase_id', $purchase_id);
//            $this->db->update('product_purchase_details');
//        }
//
//        $this->db->insert('acc_transaction',$coscr);
//        $this->db->insert('acc_transaction',$purchasecoatran);
//        $this->db->insert('acc_transaction',$expense);
//        if($this->input->post('paytype') == 2){
//          if(!empty($paid_amount)){
//        $this->db->insert('acc_transaction',$bankc);
//        $this->db->insert('acc_transaction',$supplier_debit);
//      }
//        }
//        if($this->input->post('paytype') == 1){
//          if(!empty($paid_amount)){
//        $this->db->insert('acc_transaction',$cashinhand);
//        $this->db->insert('acc_transaction',$supplier_debit);
//        }
//        }
//
        $rate = $this->input->post('price',TRUE);

        for ($i = 0, $n = count($p_id); $i < $n; $i++) {

            $product_rate = $rate[$i];
            $product_id = $p_id[$i];

            $data1 = array(
                'supplier_id' => $supplier_id,
                'product_id'         => $product_id,
                'update_price'         => $product_rate,
                'date'         => $purchase_date,
                'time'=>date("h:i:sa"),
                'status'             => 1
            );

                $this->db->insert('supplier_product_price', $data1);


                $this->db->set('supplier_price',$product_rate);
                $this->db->where(array('product_id'=>$product_id,'supplier_id'=>$supplier_id));
                $this->db->update('supplier_product');

        }
       // echo "<pre>";print_r($data1);exit();
        return true;
    }

    // Delete purchase Item

    public function purchase_search_list($cat_id, $company_id) {
        $this->db->select('a.*,b.sub_category_name,c.category_name');
        $this->db->from('purchases a');
        $this->db->join('purchase_sub_category b', 'b.sub_category_id = a.sub_category_id');
        $this->db->join('purchase_category c', 'c.category_id = b.category_id');
        $this->db->where('a.sister_company_id', $company_id);
        $this->db->where('c.category_id', $cat_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Retrieve purchase_details_data
    public function purchase_details_data($purchase_id) {
        $this->db->select('a.*,b.*,c.*,e.purchase_details,d.product_id,d.product_name,d.product_model');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->join('product_purchase_details c', 'c.purchase_id = a.purchase_id');
        $this->db->join('product_information d', 'd.product_id = c.product_id');
        $this->db->join('product_purchase e', 'e.purchase_id = c.purchase_id');
        $this->db->where('a.purchase_id', $purchase_id);
        $this->db->group_by('d.product_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //This function will check the product & supplier relationship.
    public function product_supplier_check($product_id, $supplier_id) {
        $this->db->select('*');
        $this->db->from('supplier_product');
        $this->db->where('product_id', $product_id);
        $this->db->where('supplier_id', $supplier_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return true;
        }
        return 0;
    }

    //This function is used to Generate Key
    public function generator($lenth) {
        $number = array("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "N", "M", "O", "P", "Q", "R", "S", "U", "V", "T", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0");

        for ($i = 0; $i < $lenth; $i++) {
            $rand_value = rand(0, 61);
            $rand_number = $number["$rand_value"];

            if (empty($con)) {
                $con = $rand_number;
            } else {
                $con = "$con" . "$rand_number";
            }
        }
        return $con;
    }

    public function purchase_delete($purchase_id = null) {
        //Delete product_purchase table
        $this->db->where('VNo', $purchase_id);
        $this->db->delete('acc_transaction');
        //Delete acc transaction
        $this->db->where('purchase_id', $purchase_id);
        $this->db->delete('product_purchase');
        //Delete product_purchase_details table
        $this->db->where('purchase_id', $purchase_id);
        $this->db->delete('product_purchase_details');
        return true;
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }

//purchase list date to date
    public function purchase_list_date_to_date($start, $end) {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $this->db->where('a.purchase_date >=', $start);
        $this->db->where('a.purchase_date <=', $end);
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
// purchase list for pdf
     public function pdf_purchase_list() {
        $this->db->select('a.*,b.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('supplier_information b', 'b.supplier_id = a.supplier_id');
        $this->db->order_by('a.purchase_date', 'desc');
        $query = $this->db->get();

        $last_query = $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    // csv upload purchase list
        public function purchase_csv_file() {
         $query = $this->db->select('a.chalan_no,a.purchase_id,b.supplier_name,a.purchase_date,a.grand_total_amount')
                ->from('product_purchase a')
                ->join('supplier_information b', 'b.supplier_id = a.supplier_id', 'left')
                ->order_by('a.purchase_date','desc')
                ->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function purchase_entry_new() {

        $purchase_id = date('YmdHis');


        $p_id = $this->input->post('product_id',TRUE);
        // $supinfo =$this->db->select('*')->from('supplier_information')->where('supplier_id',$supplier_id)->get()->row();
        // $sup_head = $supinfo->supplier_id.'-'.$supinfo->supplier_name;
        // $sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
        $receive_by=$this->session->userdata('user_id');
        $receive_date=date('Y-m-d');
        $createdate=date('Y-m-d H:i:s');
        $paid_amount = $this->input->post('paid_amount',TRUE);
        $due_amount = $this->input->post('due_amount',TRUE);
        $discount = $this->input->post('discount',TRUE);
        $bank_id = $this->input->post('bank_id',TRUE);
        $pur_order_no = $this->input->post('pur_order_no', TRUE);


        //supplier & product id relation ship checker.
        // for ($i = 0, $n = count($p_id); $i < $n; $i++) {
        //     $product_id = $p_id[$i];
        //     $value = $this->product_supplier_check($product_id, $supplier_id);
        //     if ($value == 0) {
        //         $this->session->set_flashdata('error_message', display('product_and_supplier_did_not_match'));
        //         redirect(base_url('Cpurchase'));
        //         exit();
        //     }
        // }


    //    $this->db->insert('product_purchase', $data);
    //    echo '<pre>';print_r($data);exit();
        $data=array(
            'purchase_id'        => $purchase_id,
            'grand_total_amount' => $this->input->post('total',TRUE),
            'purchase_order'     => $pur_order_no,
            'purchase_date'      => $receive_date,
            'paid_amount'        => $paid_amount,
            'due_amount'         => $due_amount,
            'status'             => 2,
        );
        // echo '<pre>';print_r($data);exit();
        $this->db->insert('product_purchase', $data);


       // echo '<pre>';print_r($data);exit();



        $supplier_id = $this->input->post('supplier_name',TRUE);
        $rate = $this->input->post('price',TRUE);
        $quantity = $this->input->post('order_quantity',TRUE);
        $proposed_quantity = $this->input->post('proposed_quantity',TRUE);
        $sn = $this->input->post('sn',TRUE);
        $origin = $this->input->post('origin',TRUE);
        // $warehouse = $this->input->post('warehouse',TRUE);
        $warrenty = $this->input->post('warrenty_date',TRUE);
        // $expired = $this->input->post('expired_date',TRUE);
         $t_price = $this->input->post('row_total',TRUE);
        $discount = $this->input->post('discount',TRUE);

        for ($i = 0, $n = count($p_id); $i < $n; $i++) {
            $supp_id = $supplier_id[$i];
            $product_quantity = $quantity[$i];
            $prop_qty = $proposed_quantity[$i];
            // $sn_number = $sn[$i];
            $origin_t = isset($origin[$i]) ? $origin[$i]: "";
            $warrenty_date = $warrenty[$i];
            $product_rate = $rate[$i];
            $product_id = $p_id[$i];
            $disc = $discount[$i];
            $t_price = $t_price[$i];
         //   $t_price = ($product_rate * $product_quantity) - $disc;

          //  $old_rate=$this->db->select('*')->from('supplier_product')->where('supplier_id',$supp_id)->where('product_id',$product_id)->get()->row()->supplier_price;

            $data1 = array(
                'purchase_detail_id' => $this->generator(15),
                'purchase_id'        => $purchase_id,
                'supplier_id'        => $supp_id,
                'product_id'         => $product_id,
                'quantity'           => $prop_qty,
                'qty'                => $product_quantity,
                'origin'             => $origin_t,
                'warrenty_date'      => $warrenty_date,
                'rate'               => $product_rate,
                'total_amount'       => $t_price,
                'discount'           => $disc,
                'status'             => 1,
                'isAprv'             => 2,

            );


         //   echo '<pre>';print_r($data1);

            if (!empty($quantity)) {
                $this->db->insert('product_purchase_details', $data1);
            }
        }

        $this->db->empty_table('purchase_order_cart');


        return true;
    }

    public function number_generator() {
        $this->db->select('purchase_order')->order_by('purchase_order', 'desc');
        $query = $this->db->get('product_purchase');
        $result = $query->result_array();
        $order_no = substr($result[0]['purchase_order'], -4);
        if ($order_no != '') {
            $order_no = $order_no + 1;
        } else {
            $order_no = 1000;
        }
        return 'PO'.$order_no;
    }

    public function purchase_list_by_po_no()
    {
        $this->db->select('*');
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information d', 'd.supplier_id = b.supplier_id');
        $this->db->where('b.isAprv',2)->order_by('a.purchase_order', 'desc')->group_by('b.supplier_id');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function purchase_list_details_by_po_no($PO_no,$supplier_id)
    {
        $this->db->select('a.*, b.*, c.product_name, c.parts, d.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('product_information c', 'c.product_id = b.product_id');
        $this->db->join('supplier_information d', 'd.supplier_id = b.supplier_id');
        $this->db->where('a.purchase_order', $PO_no);
        $this->db->where('b.supplier_id', $supplier_id);

        $query = $this->db->get();

        // echo '<pre>'; print_r($query->result_array()); die();


        if ($query->num_rows() > 0) {
            return $query->result_array();
        }

        return false;

    }

    public function get_rqsn_approved_list()
    {
        $this->db->select('a.*, sum(b.quantity)as qty, b.*, c.*,d.*, e.*, f.*, g.*');
        $this->db->from('rqsn a');
        $this->db->join('rqsn_details b', 'b.rqsn_id = a.rqsn_id');
        $this->db->join('product_information c', 'c.product_id = b.product_id');
        $this->db->join('product_category d', 'd.category_id = c.category_id','left');
        $this->db->join('product_subcat e', 'e.sub_cat_id = c.sub_cat_id','left');
        $this->db->join('product_brand f', 'f.brand_id = c.brand_id','left');
        $this->db->join('product_model g', 'g.model_id = c.product_model','left');
        $this->db->where('a.status', 3);
        $this->db->where('b.purchase_status', 1);
        $this->db->group_by('b.product_id');

        // $this->db->join('supplier_information d', 'd.supplier_id = b.supplier_id');

        $query = $this->db->get();

        // echo '<pre>'; print_r($query->result_array()); die();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }

        return false;


    }

    public function purchase_cart_data()
    {
        $this->db->select('*');
        $this->db->from('purchase_order_cart');
        $this->db->order_by('id', 'desc');

        $query = $this->db->get();
        // echo '<pre>'; print_r($query->result_array()); die();
        return $query->result_array();
    }

    public function PO_cart_update()
    {
        $p_id = $this->input->post('product_id',TRUE);
        $qty = $this->input->post('order_quantity',TRUE);
        $supp_id= $this->input->post('supplier_name',TRUE);
        $warrenty_date = $this->input->post('warrenty_date',TRUE);
        $price= $this->input->post('price',TRUE);
        $discount= $this->input->post('discount',TRUE);
        $row_total = $this->input->post('row_total',TRUE);




        for ($i = 0, $n = count($p_id); $i < $n; $i++) {

            $item_pid = $p_id[$i];
            $item_qty = $qty[$i];
            $item_supp = $supp_id[$i];
            $item_warr = $warrenty_date[$i];
            $item_price = $price[$i];
            $item_dis = $discount[$i];
            $total = $row_total[$i];

            $sq = "UPDATE purchase_order_cart
            SET order_qty = ".$item_qty.", supplier_id = ".$item_supp.", warrenty_date = ".$item_warr.", rate = ".$item_price.", discount = ".$item_dis.", total = ".$total."
            WHERE product_id = ".$item_pid.";";

            $this->db->query($sq);

        }


    }

}
