<?php defined('BASEPATH') or exit('No direct script access allowed');

class Accounts_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('Smsgateway');
        $this->load->library('session');
        $this->auth->check_admin_auth();
    }

    function get_userlist()
    {
        $this->db->select('*');
        $this->db->from('acc_coa');
        $this->db->where('IsActive', 1);
        $this->db->order_by('HeadName');
        $query = $this->db->get();
        if ($query->num_rows() >= 1) {
            return $query->result();
        } else {
            return false;
        }
    }

    function dfs($HeadName, $HeadCode, $oResult, $visit, $d)
    {
        if ($d == 0) echo "<li class=\"jstree-open \">$HeadName";
        else if ($d == 1) echo "<li class=\"jstree-open\"><a href='javascript:' onclick=\"loadCoaData('" . $HeadCode . "')\">$HeadName</a>";
        else echo "<li><a href='javascript:' onclick=\"loadCoaData('" . $HeadCode . "')\">$HeadName</a>";
        $p = 0;
        for ($i = 0; $i < count($oResult); $i++) {

            if (!$visit[$i]) {
                if ($HeadName == $oResult[$i]->PHeadName) {
                    $visit[$i] = true;
                    if ($p == 0) echo "<ul>";
                    $p++;
                    $this->dfs($oResult[$i]->HeadName, $oResult[$i]->HeadCode, $oResult, $visit, $d + 1);
                }
            }
        }
        if ($p == 0)
            echo "</li>";
        else
            echo "</ul>";
    }

    function dfs_t($HeadName, $HeadCode, $oResult, $visit, $d)
    {
        if ($d == 0) echo "<td class=\"jstree-open \">$HeadName";
        else if ($d == 1) echo "<td class=\"jstree-open\"><a href='javascript:' onclick=\"loadCoaData('" . $HeadCode . "')\">$HeadName</a>";
        else echo "<td><a href='javascript:' onclick=\"loadCoaData('" . $HeadCode . "')\">$HeadName</a>";
        $p = 0;
        for ($i = 0; $i < count($oResult); $i++) {

            if (!$visit[$i]) {
                if ($HeadName == $oResult[$i]->PHeadName) {
                    $visit[$i] = true;
                    if ($p == 0) echo "<ul>";
                    $p++;
                    $this->dfs_t($oResult[$i]->HeadName, $oResult[$i]->HeadCode, $oResult, $visit, $d + 1);
                }
            }
        }
        if ($p == 0)
            echo "</td>";
        else
            echo "</td>";
    }
    public function insert_debitvoucher()
    {
        $CI = &get_instance();
        $CI->load->model('Settings');

        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "DV";
        $check_no = $this->input->post('check_no', TRUE);
        $check_date = $this->input->post('chq_date', TRUE);
        $cAID = $this->input->post('cmbDebit', TRUE);
        $dAID = $this->input->post('txtCode', TRUE);
        $Debit = $this->input->post('txtAmount', TRUE);
        $Credit = $this->input->post('grand_total', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

       // $bkash_id = $this->input->post('bkash_id', TRUE);
       // $nagad_id = $this->input->post('nagad_id', TRUE);
        //$bank_id = $this->input->post('bank_id_m', TRUE);
        // if (!empty($bank_id)) {
        //     $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id', $bank_id)->get()->row()->bank_name;
        //     $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', $bankname)->get()->row()->HeadCode;
        // } else {
        //     $bankcoaid = '';
        // }

        // $cc = array(
        //     'VNo'            =>  $voucher_no,
        //     'Vtype'          =>  $Vtype,
        //     'VDate'          =>  $VDate,
        //     'COAID'          =>  1020101,
        //     'Narration'      =>  $Narration,
        //     'Credit'         =>  $Credit,
        //     'Debit'         =>  0,
        //     'IsPosted'       =>  1,
        //     'CreateBy'       =>  $CreateBy,
        //     'CreateDate'     =>  $createdate,
        //     'IsAppove'       =>  0
        // );
        // $bankc = array(
        //     'VNo'            =>  $voucher_no,
        //     'Vtype'          =>  $Vtype,
        //     'VDate'          =>  $VDate,
        //     'COAID'          =>  $bankcoaid,
        //     'Narration'      =>  $Narration,
        //     'Credit'          =>  $Credit,
        //     'Debit'         =>  0,
        //     'IsPosted'       =>  1,
        //     'CreateBy'       =>  $CreateBy,
        //     'CreateDate'     =>  $createdate,
        //     'IsAppove'       =>  0
        // );

        // if (!empty($bkash_id)) {
        //     $bkashname = $this->db->select('bkash_no')->from('bkash_add')->where('bkash_id', $bkash_id)->get()->row()->bkash_no;

        //     $bkashcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', 'BK - ' . $bkashname)->get()->row()->HeadCode;
        // } else {
        //     $bkashcoaid = '';
        // }
        // $bkashc = array(
        //     'VNo'            =>  $voucher_no,
        //     'Vtype'          =>  $Vtype,
        //     'VDate'          =>  $VDate,
        //     'COAID'          =>  $bkashcoaid,
        //     'Narration'      =>  $Narration,
        //     'Credit'          =>  $Credit,
        //     'Debit'         =>  0,
        //     'IsPosted'       =>  1,
        //     'CreateBy'       =>  $CreateBy,
        //     'CreateDate'     =>  $createdate,
        //     'IsAppove'       =>  0,

        // );

        // if (!empty($nagad_id)) {
        //     $nagadname = $this->db->select('nagad_no')->from('nagad_add')->where('nagad_id', $nagad_id)->get()->row()->nagad_no;

        //     $nagadcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', 'NG - ' . $nagadname)->get()->row()->HeadCode;
        // } else {
        //     $nagadcoaid = '';
        // }

        // $nagadc = array(
        //     'VNo'            =>  $voucher_no,
        //     'Vtype'          =>  $Vtype,
        //     'VDate'          =>  $VDate,
        //     'COAID'          =>  $nagadcoaid,
        //     'Narration'      =>  $Narration,
        //     'Credit'          =>  $Credit,
        //     'Debit'         =>  0,
        //     'IsPosted'       =>  1,
        //     'CreateBy'       =>  $CreateBy,
        //     'CreateDate'     =>  $createdate,
        //     'IsAppove'       =>  0,
        // );




        // if ($this->input->post('paytype', TRUE) == 4) {
        //     $this->db->insert('acc_transaction', $bankc);
        // }
        //  if ($this->input->post('paytype', TRUE) == 1) {
        //     $this->db->insert('acc_transaction', $cc);
        //  }
        // if ($this->input->post('paytype', TRUE) == 3) {
        //     $this->db->insert('acc_transaction', $bkashc);
        // }
        // if ($this->input->post('paytype', TRUE) == 5) {
        //     $this->db->insert('acc_transaction', $nagadc);
        // }
        
        for ($i = 0; $i < count($dAID); $i++) {
            $dbtid = $dAID[$i];
            $Damnt = $Debit[$i];

            $debitheadinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dbtid)->get()->row();
           
            $debitinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $dbtid,
                'Narration'      =>  'Customer debit for Paid Amount Customer ' . $debitheadinfo->HeadName . ' ' . $Narration,
                // 'Narration'      =>  $Narration,
                'Debit'          =>  $Damnt,
                'Credit'         =>  0,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $debitinsert);
            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cAID)->get()->row();
            // echo "<pre>";
            // print_r($headinfo);
            // exit();
            if ($cAID > 102010201 && $cAID < 102010299) {
                $CR_Narration = 'Debit voucher from ' . $headinfo->HeadName . ' Check NO. ' . $check_no . ' Check Date - ' . $check_date;
            } else {
                $CR_Narration = 'Debit voucher from ' . $headinfo->HeadName;
            }
            $cinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $cAID,
                'Narration'      =>  $CR_Narration,
                'Debit'          =>  0,
                'Credit'         =>  $Damnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $cinsert);
            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cAID)->get()->row();


        }
        // exit();
        return true;
    }

    // Accounts list
    public function Transacc()
    {
        return  $data = $this->db->select("*")
            ->from('acc_coa')
            ->where('IsTransaction', 1)
            ->where('IsActive', 1)
            ->order_by('HeadName')
            ->get()
            ->result();
    }
    // Credit Account Head
    public function Cracc()
    {
        return  $data = $this->db->select("*")
            ->from('acc_coa')
            ->like('HeadCode', 1020102, 'after')
            ->where('IsTransaction', 1)
            ->order_by('HeadName')
            ->get()
            ->result();
    }

    //Generate Voucher No
    public function voNO()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'DV-', 'after')
            ->order_by('ID', 'desc')
            ->limit(1)
            ->get()
            ->result_array();
    }

    public function Cashvoucher()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'CHV-', 'after')
            ->order_by('ID', 'desc')
            ->get()
            ->result_array();
    }
    // Credit voucher no
    public function crVno()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'CV-', 'after')
            ->order_by('ID', 'desc')
            ->limit(1)
            ->get()
            ->result_array();
    }


    public function mr_no()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'MR-', 'after')
            ->order_by('ID', 'desc')
            ->limit(1)
            ->get()
            ->result_array();
    }

    // Contra voucher

    public function contra()
    {
        return  $data = $this->db->select("Max(VNo) as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'Contra-', 'after')
            ->order_by('ID', 'desc')
            ->get()
            ->result_array();
    }
    public function insert_moneyrecipt()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "MR";

        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $customer_id = $this->input->post('customer_id', TRUE);
        $Credit = $this->input->post('txtAmount', TRUE);
        $debit = $this->input->post('grand_total', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $pay_type = $this->input->post('paytype', TRUE);
        $other_name = $this->input->post('other', TRUE);
        $bank_name = $this->input->post('bank_id', TRUE);
        $bkash_id = $this->input->post('bkash_id', TRUE);
        $nagad_id = $this->input->post('nagad_id', TRUE);
        $cheque_type = $this->input->post('cheque_type', TRUE);
        $cheque_no = $this->input->post('cheque_no', TRUE);
        $cheque_date = $this->input->post('cheque_date', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 1;
        $CreateBy = $this->session->userdata('id');
        $createdate = date('Y-m-d H:i:s');


        if (!empty($bkash_id)) {
            $bkashname = $this->db->select('bkash_no')->from('bkash_add')->where('bkash_id', $bkash_id)->get()->row()->bkash_no;

            $bkashcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', $bkashname)->get()->row()->HeadCode;
        } else {
            $bkashcoaid = '';
        }
        if (!empty($nagad_id)) {
            $nagadname = $this->db->select('nagad_no')->from('nagad_add')->where('nagad_id', $nagad_id)->get()->row()->nagad_no;

            $nagadcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', $nagadname)->get()->row()->HeadCode;
        } else {
            $nagadcoaid = '';
        }


        $debitheadinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cAID)->get()->row();
        //$cusifo = $this->db->select('*')->from('customer_information')->where('customer_id',$cus_id)->get()->row();




        $customer_account = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  $cAID,
            'Narration'      =>  'Money receipt for Paid Amount Customer ' . $debitheadinfo->HeadName . ' ' . $Narration,
            'Debit'          =>  0,
            'Credit'         =>  $Credit,
            'IsPosted'       => $IsPosted,
            'CreateBy'       => $CreateBy,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );

        $this->db->insert('acc_transaction', $customer_account);

        //        $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode',$dAID)->get()->row();
        //
        //        $cinsert = array(
        //            'VNo'            =>  $voucher_no,
        //            'Vtype'          =>  $Vtype,
        //            'VDate'          =>  $VDate,
        //            'COAID'          =>  $dAID,
        //            'Narration'      =>  'Money receipt  from '.$headinfo->HeadName,
        //            'Debit'          =>  $Credit,
        //            'Credit'         =>  0,
        //            'IsPosted'       => $IsPosted,
        //            'CreateBy'       => $CreateBy,
        //            'CreateDate'     => $createdate,
        //            'IsAppove'       => 1
        //        );
        //
        //        $this->db->insert('acc_transaction',$cinsert);
        $cc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  1020101,
            'Narration'      =>  'Cash in Hand for Money Receipt -' . $Vtype . ' Customer ' . $debitheadinfo->HeadName,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );

        $bankc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  1020102,
            'Narration'      =>  'Cash in Bank amount for customer  Money Receipt  No - ' . $Vtype . ' Customer ' . $debitheadinfo->HeadName . ' in ' . $bank_name,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1,
        );
        $bkashc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  $bkashcoaid,
            'Narration'      =>  'Cash in Bkash amount for customer  Money Receipt  No - ' . $Vtype . ' Customer ' . $debitheadinfo->HeadName . ' in ' . $bank_name,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1,
        );
        $nagadc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  $nagadcoaid,
            'Narration'      =>  'Cash in Nagad amount for customer  Money Receipt  No - ' . $Vtype . ' Customer ' . $debitheadinfo->HeadName . ' in ' . $bank_name,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1,
        );


        $data = array(

            'VNo'            =>  $voucher_no,
            'pay_type'          =>  $pay_type,
            'date'          =>  $VDate,
            'COAID'          =>  $cAID,
            'customer_id'          =>  $customer_id,
            'remark'        => $Narration

        );
        $data2 = array(

            'VNo'            =>  $voucher_no,
            'pay_type'          =>  $pay_type,
            'date'          =>  $VDate,
            'COAID'          =>  $cAID,
            'customer_id'          =>  $customer_id,
            'remark'        => $Narration,
            'bank_name'        => $bank_name,
            'cheque_type'        => $cheque_type,
            'cheque_no'        => $cheque_no,
            'cheque_date'        => $cheque_date,

        );
        $data3 = array(

            'VNo'            =>  $voucher_no,
            'pay_type'          =>  $pay_type,
            'date'          =>  $VDate,
            'COAID'          =>  $bkashcoaid,
            'customer_id'    =>  $customer_id,
            'remark'        => $Narration,
            'bkash_id'          =>  $bkashname,

        );
        $data4 = array(

            'VNo'            =>  $voucher_no,
            'pay_type'          =>  $pay_type,
            'date'          =>  $VDate,
            'COAID'          =>  $nagadcoaid,
            'customer_id'          =>  $customer_id,
            'nagad_id'          =>  $nagadname,
            'remark'        => $Narration

        );
        if ($pay_type == 1) {
            $this->db->insert('money_receipt', $data);
            $this->db->insert('acc_transaction', $cc);
        }
        if ($pay_type == 2) {
            $this->db->insert('money_receipt', $data2);
            $this->db->insert('acc_transaction', $bankc);
        }
        if ($pay_type == 3) {
            $this->db->insert('money_receipt', $data3);
            $this->db->insert('acc_transaction', $bkashc);
        }
        if ($pay_type == 4) {
            $this->db->insert('money_receipt', $data4);
            $this->db->insert('acc_transaction', $nagadc);
        }

        //$this->db->insert('money_receipt',$data);

        //$headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode',$dAID)->get()->row();



        return true;
    }
    public function retrieve_mr_html_data($coaid, $id, $user_id)
    {

        //   $sumDebit=query('SELECT SUM(Debit) FROM `acc_transaction` WHERE COAID=\'102030000001\'');

        $this->db->select('a.*,b.COAID,b.Credit,c.customer_name,c.customer_address');
        $this->db->from('money_receipt a');
        $this->db->join('acc_transaction b', 'a.VNo=b.VNo');
        $this->db->join('customer_information c', 'c.customer_id=a.customer_id');

        $this->db->where('b.VNo', $coaid);
        $this->db->where('b.COAID', $id);

        $data = $this->db->get()->result_array();

        $this->db->select('(sum(b.Debit)-sum(b.Credit)) as total');
        $this->db->from('acc_transaction b');

        //   $this->db->where('b.VNo', $coaid);
        $this->db->where('b.COAID', $id);
        $data2 = $this->db->get()->result_array();

        $this->db->select('first_name,last_name');
        $this->db->from('users ');

        //   $this->db->where('b.VNo', $coaid);
        $this->db->where('user_id', $user_id);
        $user = $this->db->get()->result_array();
        //        if ($query->num_rows() > 0) {
        //            return $query->result_array();
        //        }

        $response = array(
            'data' => $data,
            'total' => $data2,
            'user' => $user
        );

        return $response;
    }

    // Insert Credit voucher
    public function insert_creditvoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "CV";

        $dAID = $this->input->post('cmbDebit', TRUE);
        $check_no = $this->input->post('check_no', TRUE);
        $check_date = $this->input->post('chq_date', TRUE);
        $customer_id = $this->input->post('customer_id', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $Credit = $this->input->post('txtAmount', TRUE);
        $debit = $this->input->post('grand_total', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 1;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');


        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $Credit[$i];


            $debitheadinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $crtid)->get()->row();
            //$cusifo = $this->db->select('*')->from('customer_information')->where('customer_id',$cus_id)->get()->row();




            $debitinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  'Customer credit for Paid Amount Customer ' . $debitheadinfo->HeadName . ' ' . $Narration,
                'Debit'          =>  0,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $debitinsert);

            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dAID)->get()->row();

            if ($dAID > 102010201 && $dAID < 102010299) {
                $CR_Narration = 'Credit voucher from ' . $headinfo->HeadName . ' Check NO. ' . $check_no . ' Check Date - ' . $check_date;
            } else {
                $CR_Narration = 'Credit voucher from ' . $headinfo->HeadName;
            }

            $cinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $dAID,
                'Narration'      =>  $CR_Narration,
                'Debit'          =>  $Cramnt,
                'Credit'         =>  0,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $cinsert);


            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dAID)->get()->row();
        }
        return true;
    }

    // update Credit voucher
    public function update_creditvoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "CV";
        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $Credit = $this->input->post('txtAmount', TRUE);
        $debit = $this->input->post('grand_total', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        $this->db->where('VNo', $voucher_no)
            ->delete('acc_transaction');

        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $Credit[$i];

            $debitheadinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $crtid)->get()->row();

            $debitinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  $Narration,
                'Debit'          =>  0,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $debitinsert);
            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dAID)->get()->row();

            $cinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $dAID,
                'Narration'      =>  'Credit Vourcher from ' . $headinfo->HeadName,
                'Debit'          =>  $Cramnt,
                'Credit'         =>  0,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $cinsert);


            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dAID)->get()->row();
        }

        return true;
    }
    // update Debit voucher
    public function update_debitvoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "DV";
        $check_no = $this->input->post('check_no', TRUE);
        $check_date = $this->input->post('chq_date', TRUE);
        $cAID = $this->input->post('cmbDebit', TRUE);
        $dAID = $this->input->post('txtCode', TRUE);
        $Debit = $this->input->post('txtAmount', TRUE);
        $Credit = $this->input->post('grand_total', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        $this->db->where('VNo', $voucher_no)
            ->delete('acc_transaction');

        for ($i = 0; $i < count($dAID); $i++) {
            $dbtid = $dAID[$i];
            $Damnt = $Debit[$i];

            $debitheadinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $dbtid)->get()->row();
            $debitinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $dbtid,
                'Narration'      =>  'Customer debit for Paid Amount Customer ' . $debitheadinfo->HeadName . ' ' . $Narration,
                'Debit'          =>  $Damnt,
                'Credit'         =>  0,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $debitinsert);
            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cAID)->get()->row();
            if ($cAID > 102010201 && $cAID < 102010299) {
                $CR_Narration = 'Debit voucher from ' . $headinfo->HeadName . ' Check NO. ' . $check_no . ' Check Date - ' . $check_date;
            } else {
                $CR_Narration = 'Debit voucher from ' . $headinfo->HeadName;
            }
            $cinsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $cAID,
                'Narration'      =>  $CR_Narration,
                'Debit'          =>  0,
                'Credit'         =>  $Damnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $cinsert);


            $headinfo = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cAID)->get()->row();
        }

        return true;
    }

    // Insert Countra voucher
    public function insert_contravoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "Contra";
        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $debit = $this->input->post('txtAmount', TRUE);
        $credit = $this->input->post('txtAmountcr', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $credit[$i];
            $debits = $debit[$i];

            $contrainsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  $Narration,
                'Debit'          =>  $debits,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 1
            );

            $this->db->insert('acc_transaction', $contrainsert);
        }
        return true;
    }
    // Insert journal voucher
    public function insert_journalvoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "JV";
        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $debit = $this->input->post('txtAmount', TRUE);
        $credit = $this->input->post('txtAmountcr', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $credit[$i];
            $debits = $debit[$i];

            $contrainsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  $Narration,
                'Debit'          =>  $debits,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 1
            );

            $this->db->insert('acc_transaction', $contrainsert);
        }
        return true;
    }

    public function update_journalvoucher()
    {

        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "JV";
        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $debit = $this->input->post('txtAmount', TRUE);
        $credit = $this->input->post('txtAmountcr', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('id');
        $createdate = date('Y-m-d H:i:s');
        $this->db->where(' VNo', $voucher_no);
        $this->db->delete('acc_transaction');

        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $credit[$i];
            $debits = $debit[$i];

            $contrainsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  $Narration,
                'Debit'          =>  $debits,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );

            $this->db->insert('acc_transaction', $contrainsert);
        }

        return true;
    }

    public function update_contravoucher()
    {
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "Contra";
        $dAID = $this->input->post('cmbDebit', TRUE);
        $cAID = $this->input->post('txtCode', TRUE);
        $debit = $this->input->post('txtAmount', TRUE);
        $credit = $this->input->post('txtAmountcr', TRUE);
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 0;
        $CreateBy = $this->session->userdata('id');
        $createdate = date('Y-m-d H:i:s');
        $this->db->where(' VNo', $voucher_no);
        $this->db->delete('acc_transaction');

        for ($i = 0; $i < count($cAID); $i++) {
            $crtid = $cAID[$i];
            $Cramnt = $credit[$i];
            $debits = $debit[$i];

            $contrainsert = array(
                'VNo'            =>  $voucher_no,
                'Vtype'          =>  $Vtype,
                'VDate'          =>  $VDate,
                'COAID'          =>  $crtid,
                'Narration'      =>  $Narration,
                'Debit'          =>  $debits,
                'Credit'         =>  $Cramnt,
                'IsPosted'       => $IsPosted,
                'CreateBy'       => $CreateBy,
                'CreateDate'     => $createdate,
                'IsAppove'       => 0
            );
            $this->db->insert('acc_transaction', $contrainsert);
        }
        return true;
    }


    // journal voucher
    public function journal()
    {
        return  $data = $this->db->select("Max(VNo) as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'Journal-', 'after')
            ->order_by('ID', 'desc')
            ->get()
            ->result_array();
    }

    // voucher Aprove
    public function approve_voucher()
    {
        $values = array("DV", "CV", "JV", "Contra");

        return $approveinfo = $this->db->select('*,sum(Credit) as Credit,sum(Debit) as Debit')
            ->from('acc_transaction')
            ->where_in('Vtype', $values)
            ->where('IsAppove', 0)
            ->group_by('VNo')
            ->get()
            ->result();
    }
    //approved
    public function approved($data = [])
    {
        return $this->db->where('VNo', $data['VNo'])
            ->update('acc_transaction', $data);
    }


    public function delete_voucher($voucher)
    {
        $this->db->where('VNo', $voucher)
            ->delete('acc_transaction');
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }

    //debit update voucher
    public function dbvoucher_updata($id)
    {
        return  $vou_info = $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $id)
            ->where('Credit <', 1)
            ->get()
            ->result();
    }

    public function journal_updata($id)
    {
        return  $vou_info = $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $id)
            ->get()
            ->result_array();
    }

    //credit voucher update
    public function crdtvoucher_updata($id)
    {
        return  $vou_info = $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $id)
            ->where('Debit <', 1)
            ->get()
            ->result();
    }
    //Debit voucher inof

    public function debitvoucher_updata($id)
    {
        return $cr_info = $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $id)
            ->where('Credit<', 1)
            ->get()
            ->result_array();
    }
    // debit update voucher credit info
    public function crvoucher_updata($id)
    {
        return $v_info = $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $id)
            ->where('Debit<', 1)
            ->get()
            ->result_array();
    }



    //Trial Balance Report
    public function trial_balance_report($FromDate, $ToDate, $WithOpening)
    {

        if ($WithOpening)
            $WithOpening = true;
        else
            $WithOpening = false;

        $sql = "SELECT * FROM acc_coa WHERE IsGL=1 AND IsActive=1 AND HeadType IN ('A','L') ORDER BY HeadCode";
        $oResultTr = $this->db->query($sql);

        $sql = "SELECT * FROM acc_coa WHERE IsGL=1 AND IsActive=1 AND HeadType IN ('I','E') ORDER BY HeadCode";
        $oResultInEx = $this->db->query($sql);

        $data = array(
            'oResultTr'   => $oResultTr->result_array(),
            'oResultInEx' => $oResultInEx->result_array(),
            'WithOpening' => $WithOpening
        );

        return $data;
    }

    public  function get_vouchar()
    {

        $date = date('Y-m-d');
        $sql = "SELECT *, VNo, Vtype,VDate, SUM(Debit+Credit)/2 as Amount FROM acc_transaction  WHERE VDate='$date' AND VType IN ('DV','JV','CV') GROUP BY VNO, Vtype, VDate ORDER BY VDate";

        $query = $this->db->query($sql);
        return $query->result();
    }

    public  function get_vouchar_view($date)
    {
        $sql = "SELECT acc_income_expence.COAID,SUM(acc_income_expence.Amount) AS Amount, acc_coa.HeadName FROM acc_income_expence INNER JOIN acc_coa ON acc_coa.HeadCode=acc_income_expence.COAID WHERE Date='$date' AND acc_income_expence.IsApprove=1 AND acc_income_expence.Paymode='Cash' GROUP BY acc_income_expence.COAID, acc_coa.HeadName ORDER BY acc_coa.HeadName";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public  function get_cash()
    {
        $date = date('Y-m-d');


        $sql = "SELECT SUM(Debit) as Amount FROM acc_transaction WHERE VDate='$date' AND COAID ='1020101' AND VType NOT IN ('DV','JV','CV') AND IsAppove='1'";
        $query = $this->db->query($sql);
        return $query->row();
    }

    public  function get_general_ledger()
    {

        $this->db->select('*');
        $this->db->from('acc_coa');
        $this->db->where('IsGL', 1);
        $this->db->order_by('HeadName', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function general_led_get($Headid)
    {

        $sql = "SELECT * FROM acc_coa WHERE HeadCode='$Headid' ";
        $query = $this->db->query($sql);
        $rs = $query->row();


        $sql = "SELECT * FROM acc_coa WHERE IsTransaction=1 AND PHeadName='" . $rs->HeadName . "' ORDER BY HeadName";
        $query = $this->db->query($sql);
        return $query->result();
    }
    public function voucher_report_serach($vouchar)
    {
        $sql = "SELECT SUM(Debit) as Amount FROM acc_transaction WHERE VDate='$vouchar' AND COAID ='1020101' AND VType NOT IN ('DV','JV','CV') AND IsAppove='1'";
        $query = $this->db->query($sql);
        return $query->row();
    }


    public function general_led_report_headname($cmbGLCode)
    {
        $this->db->select('*');
        $this->db->from('acc_coa');
        $this->db->where('HeadCode', $cmbGLCode);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function general_led_report_headname2($cmbGLCode, $cmbCode, $dtpFromDate, $dtpToDate, $chkIsTransction)
    {

        if ($chkIsTransction) {

            $this->db->select('acc_transaction.VNo, acc_transaction.Vtype, acc_transaction.VDate, acc_transaction.Narration, acc_transaction.Debit, acc_transaction.Credit, acc_transaction.IsAppove, acc_transaction.COAID,acc_coa.HeadName, acc_coa.PHeadName, acc_coa.HeadType');
            $this->db->from('acc_transaction');
            $this->db->join('acc_coa', 'acc_transaction.COAID = acc_coa.HeadCode', 'left');
            $this->db->where('acc_transaction.IsAppove', 1);
            $this->db->where('VDate BETWEEN "' . $dtpFromDate . '" and "' . $dtpToDate . '"');
            if($cmbCode && $cmbGLCode)
            {
                $this->db->where('acc_transaction.COAID', $cmbCode);
            }
            else{
                $this->db->like('acc_transaction.COAID', $cmbGLCode);
            }


            $query = $this->db->get();
            return $query->result();
        } else {

            $this->db->select('acc_transaction.COAID,acc_transaction.Debit,acc_transaction.VDate, acc_transaction.Credit,acc_coa.HeadName,acc_transaction.IsAppove, acc_coa.PHeadName, acc_coa.HeadType');
            $this->db->from('acc_transaction');
            $this->db->join('acc_coa', 'acc_transaction.COAID = acc_coa.HeadCode', 'left');
            $this->db->where('acc_transaction.IsAppove', 1);
            $this->db->where('VDate BETWEEN "' . $dtpFromDate . '" and "' . $dtpToDate . '"');
            if($cmbCode && $cmbGLCode)
            {
                $this->db->where('acc_transaction.COAID', $cmbCode);
            }
            else{
                $this->db->like('acc_transaction.COAID', $cmbGLCode);
            }

            $query = $this->db->get();
            return $query->result();
        }
    }
    // prebalance calculation
    public function general_led_report_prebalance($cmbGLCode, $cmbCode, $dtpFromDate)
    {



        $this->db->select('sum(acc_transaction.Debit) as predebit, sum(acc_transaction.Credit) as precredit');
        $this->db->from('acc_transaction');
        $this->db->where('acc_transaction.IsAppove', 1);
        $this->db->where('VDate < ', $dtpFromDate);
        if($cmbGLCode && $cmbCode)
        {
            $this->db->where('acc_transaction.COAID', $cmbCode);
        }
        else{
        $this->db->like('acc_transaction.COAID', $cmbGLCode);
        }


        $query = $this->db->get()->row();

        return $balance = $query->predebit - $query->precredit;
    }

    public function get_status()
    {

        $this->db->select('*');
        $this->db->from('acc_coa');
        $this->db->where('IsTransaction', 1);
        $this->db->like('HeadCode', '1020102', 'after');
        $this->db->order_by('HeadName', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    //Profict loss report search
    //

    //Base Project profit loss
    //    public function profit_loss_serach(){
    //
    //        $sql="SELECT * FROM acc_coa WHERE acc_coa.HeadType='I'";
    //        $sql1 = $this->db->query($sql);
    //
    //        $sql="SELECT * FROM acc_coa WHERE acc_coa.HeadType='E'";
    //        $sql2 = $this->db->query($sql);
    //
    //        $data = array(
    //            'oResultAsset'     => $sql1->result(),
    //            'oResultLiability' => $sql2->result(),
    //        );
    //        return $data;
    //    }


    public function profit_loss_serach()
    {

        $last_date=date('Y-m-d',strtotime("-1 days"));





        $product_sale = $this->db->select('(sum(credit)-sum(debit)) as product_sale')->from('acc_transaction')->where('COAID', 303)->get()->result_array();
        $service_income = $this->db->select('(sum(credit)-sum(debit)) as service_income')->from('acc_transaction')->where('COAID', 304)->get()->result_array();
        $sale_return = $this->db->select('(sum(credit)-sum(debit)) as sale_return')->from('acc_transaction')->where('Vtype', 'Return')->get()->result_array();

        $inventory = $this->db->select('(sum(credit)-sum(debit)) as inventory')->from('acc_transaction')->where('COAID', 10207)->get()->result_array();
        $opening_inventory = $this->db->select('(sum(debit)-sum(credit)) as opening_inventory')->from('acc_transaction')->where('COAID', 10207)->where('VDate <= ',$last_date)->get()->result_array();


        $product_purchase = $this->db->select('(sum(debit)-sum(credit)) as product_purchase')->from('acc_transaction')->where('COAID', 402)->get()->result_array();
        $direct_expense = $this->db->select('(sum(debit)-sum(credit)) as direct_expense')->from('acc_transaction')->like('COAID', '401')->get()->result_array();
        $operating_expense = $this->db->select('(sum(debit)-sum(credit)) as op_expense')->from('acc_transaction')->like('COAID', '403')->get()->result_array();

        $indirect_income = $this->db->select('(sum(credit)-sum(debit)) as indirect_income')->from('acc_transaction')->like('COAID', '304')->get()->result_array();
        $indirect_expense = $this->db->select('(sum(debit)-sum(credit)) as indirect_expense')->from('acc_transaction')->like('COAID', '404')->get()->result_array();

        $expense = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'E')->like('a.HeadCode', '4010')->group_by('a.HeadCode')->get()->result();


        $o_expense = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID','left')->where('a.HeadType', 'E')->like('a.HeadCode', '403')->group_by('a.HeadCode')->get()->result();


        $indirect_expense_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID','left')->where('HeadType', 'E')->like('a.HeadCode', '404')->group_by('a.HeadCode')->get()->result();
        //  $closing_inventory=$this->db->select('sum(grand_total_amount) as closing_inventory')->from('product_purchase')->get()->result_array();

//         echo '<pre>';
//         print_r($o_expense);

        $coa = $this->db->select('*')->from('acc_coa')->where('HeadLevel', '0')->get()->result_array();


        $data = array();
        $sl = 1;

//        $arr_ex = [];
//        $arr_ex_o = [];
        foreach ($expense as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ex[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount,
                'HeadLevel' => $i->HeadLevel,
                'COAID' => $i->HeadCode,


            );
        }
        foreach ($o_expense as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();

          //  $row_total=$this->db->select('sum(debit)-sum(credit) as row_total')->from('acc_transaction')->like('COAID', $i->COAID ,'after')->get()->row();

            $arr_ex_o[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount,
                 'HeadLevel' => $i->HeadLevel,
                 'COAID' => $i->HeadCode,
                // 'row_total' => $row_total->row_total,


            );
        }

        $arr_ind_ex = [];

        foreach ($indirect_expense_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            array_push($arr_ind_ex, array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount,
                'HeadLevel' => $i->HeadLevel,
                'COAID' => $i->HeadCode,
            ));
            // echo '<pre>';
            // print_r($arr_ind_ex);
        }

        $arr_ind_in = [];
        foreach ($indirect_income_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            array_push(
                $arr_ind_in,
                array(
                    'HeadName' => $i->HeadName,
                    'amount' => $amount->amount,
                    'HeadLevel' => $i->HeadLevel,
                    'COAID' => $i->HeadCode,
                )
            );
        }

        //
        $data = array(
            'product_sale' => $product_sale[0]['product_sale'],
            'opening_inventory' => $opening_inventory[0]['opening_inventory'],
            'product_purchase' => $product_purchase[0]['product_purchase'],
            'direct_expense' => $direct_expense[0]['direct_expense'],
            // 'closing_inventory' =>$closing_inventory[0]['closing_inventory'],
            'service_income' => $service_income[0]['service_income'],
            'inventory' => $inventory[0]['inventory'],

            'op_expense' => $operating_expense[0]['op_expense'],
            'indirect_expense' => $indirect_expense[0]['indirect_expense'],
            'indirect_income' => $indirect_income[0]['indirect_income'],
            'sale_return' => $sale_return[0]['sale_return'],
            'expense' => $arr_ex,
            'o_expense' => $arr_ex_o,
            'indirect_expense_c' => $arr_ind_ex,
            'indirect_income_c' => $arr_ind_in,
            'oResultCoa'     => $coa,
            // 'oResultAsset'     => $assets,

        );
        $sl++;

//         echo '<pre>';
//         print_r($o_expense);
//         exit();

        return $data;
    }

    public function balance_sheet()
    {
        $last_date=date('Y-m-d',strtotime("-1 days"));

        $capital = $this->db->select('(sum(credit)-sum(debit)) as capital')->from('acc_transaction')->where('COAID', 2)->get()->result_array();
        $inventory = $this->db->select('(sum(credit)-sum(debit)) as inventory')->from('acc_transaction')->where('COAID', 10207)->get()->result_array();
        $current_liabilities = $this->db->select('(sum(credit)-sum(debit)) as current_liabilities')->from('acc_transaction')->like('COAID', '502')->get()->result_array();
        $equities = $this->db->select('(sum(credit)-sum(debit)) as equities')->from('acc_transaction')->like('COAID', '2','after')->get()->result_array();
        $non_current_liabilities = $this->db->select('(sum(credit)-sum(debit)) as non_current_liabilities')->from('acc_transaction')->like('COAID', '501')->get()->result_array();
        $long_term_l = $this->db->select('(sum(credit)-sum(debit)) as long_term_l')->from('acc_transaction')->like('COAID', '507')->get()->result_array();
        $acc_pay = $this->db->select('(sum(credit)-sum(debit)) as acc_pay')->from('acc_transaction')->like('COAID', '50202')->get()->result_array();
        $emp_led = $this->db->select('(sum(credit)-sum(debit)) as emp_led')->from('acc_transaction')->like('COAID', '50204')->get()->result_array();
        $acc_pay_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('HeadCode', '50202')->group_by('a.HeadCode')->get()->result();
        $emp_led_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('HeadCode', '50204')->group_by('a.HeadCode')->get()->result();
        $non_current_liabilities_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('a.HeadCode', '501','after')->group_by('a.HeadCode')->get()->result();
        $long_term_l_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('a.HeadCode', '501','after')->group_by('a.HeadCode')->get()->result();
        $equities_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID','left')->where('HeadType', 'L')->like('a.HeadCode', '2','after')->group_by('a.HeadCode')->get()->result();

        $fixed_assets = $this->db->select('(sum(debit)-sum(credit)) as fixed_assets')->from('acc_transaction')->like('COAID', '103')->get()->result_array();
        $other_current = $this->db->select('(sum(debit)-sum(credit)) as other_current')->from('acc_transaction')->like('COAID', '10205')->get()->result_array();

        $current_assets = $this->db->select('(sum(debit)-sum(credit)) as current_assets')->from('acc_transaction')->like('COAID', '102')->get()->result_array();
        $current_assets_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '102')->get()->result();
        $acc_rcv = $this->db->select('(sum(debit)-sum(credit)) as acc_rcv')->from('acc_transaction')->like('COAID', '102030')->get()->result_array();

        $fixed_assets_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '103','after')->group_by('a.HeadCode')->get()->result();
        $acc_rcv_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '10203','after')->group_by('a.HeadCode')->get()->result();
        $cash_bank_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020102','after')->group_by('a.HeadCode')->get()->result();
        $cash_bkash_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020103','after')->group_by('a.HeadCode')->get()->result();
        $cash_nagad_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020104','after')->group_by('a.HeadCode')->get()->result();
        $other_current_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '10205','after')->group_by('a.HeadCode')->get()->result();

        $cash_eq = $this->db->select('(sum(debit)-sum(credit)) as cash_eq')->from('acc_transaction')->like('COAID', '102010')->get()->result_array();
        $cash_hand = $this->db->select('(sum(debit)-sum(credit)) as cash_hand')->from('acc_transaction')->like('COAID', '1020101')->get()->result_array();
        $cash_bank = $this->db->select('(sum(debit)-sum(credit)) as cash_bank')->from('acc_transaction')->like('COAID', '1020102')->get()->result_array();
        $cash_bkash = $this->db->select('(sum(debit)-sum(credit)) as cash_bkash')->from('acc_transaction')->like('COAID', '1020103')->get()->result_array();

        $cash_nagad = $this->db->select('(sum(debit)-sum(credit)) as cash_nagad')->from('acc_transaction')->like('COAID', '1020103')->get()->result_array();


        $cash_eq_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('COAID', '10201')->get()->result();
        $cash_hand_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('COAID', '1020101')->get()->result();



        $indirect_expense = $this->db->select('sum(Debit) as indirect_expense')->from('acc_transaction')->like('COAID', '4040')->get()->result_array();
        $indirect_income = $this->db->select('sum(Credit) as indirect_income')->from('acc_transaction')->like('COAID', '3040')->get()->result_array();
        //  $closing_inventory=$this->db->select('sum(grand_total_amount) as closing_inventory')->from('product_purchase')->get()->result_array();

        $expense = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'E')->like('COAID', '4010')->get()->result();
        $indirect_expense_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'E')->like('COAID', '4040')->get()->result();
        $indirect_income_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'I')->like('COAID', '3040')->get()->result();


        $service_income = $this->db->select('sum(credit) as service_income')->from('acc_transaction')->where('COAID', 304)->get()->result_array();
        $sale_return = $this->db->select('sum(credit) as sale_return')->from('acc_transaction')->where('Vtype', 'Return')->get()->result_array();
        $product_sale = $this->db->select('sum(credit) as product_sale')->from('acc_transaction')->where('COAID', 303)->get()->result_array();
        $product_purchase = $this->db->select('sum(debit) as product_purchase')->from('acc_transaction')->where('COAID', 402)->get()->result_array();
        $opening_inventory = $this->db->select('(sum(debit)-sum(credit)) as opening_inventory')->from('acc_transaction')->where('COAID', 10207)->where('VDate <= ',$last_date)->get()->result_array();

        $direct_expense = $this->db->select('sum(Debit) as direct_expense')->from('acc_transaction')->like('COAID', '4010')->get()->result_array();
        $drawing = $this->db->select('(sum(debit)-sum(credit)) as drawing')->from('acc_transaction')->like('COAID', '405')->get()->result_array();


        $data = array();
        $sl = 1;
        foreach ($acc_pay_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ac_pay[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($equities_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_eq[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($emp_led_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_em_led[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($non_current_liabilities_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ncl[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($long_term_l_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_lt[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($acc_rcv_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ac_rcv[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($cash_bank_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_bank[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($cash_bkash_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_bkash[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }


        foreach ($cash_nagad_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_nagad[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($fixed_assets_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_fixed_assets[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($other_current_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_other_assets[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        //
        $data = array(
            'drawing' => $drawing[0]['drawing'],
            'product_sale' => $product_sale[0]['product_sale'],
            'sale_return' => $sale_return[0]['sale_return'],
            'service_income' => $service_income[0]['service_income'],
            'opening_inventory' => $opening_inventory[0]['opening_inventory'],
            'product_purchase' => $product_purchase[0]['product_purchase'],
            // 'closing_inventory' =>$closing_inventory[0]['closing_inventory'],

            'direct_expense' => $direct_expense[0]['direct_expense'],
            'indirect_expense' => $indirect_expense[0]['indirect_expense'],
            'indirect_income' => $indirect_income[0]['indirect_income'],

            'expense' => $expense,
            'indirect_expense_c' => $indirect_expense_c,
            'indirect_income_c' => $indirect_income_c,




            'capital' => $capital[0]['capital'],
            'inventory' => $inventory[0]['inventory'],
            'current_liabilities' => $current_liabilities[0]['current_liabilities'],
            'acc_pay_c' => $arr_ac_pay,
            'other_current_C' => $arr_other_assets,
            'non_current_liabilities' => $non_current_liabilities[0]['non_current_liabilities'],
            'long_term_l' => $long_term_l[0]['long_term_l'],
            'equities' => $equities[0]['equities'],
            'non_current_liabilities_c' => $arr_ncl,
            'equities_c' => $arr_eq,
            'long_term_l_c' => $arr_lt,
            'fixed_assets' => $fixed_assets[0]['fixed_assets'],
            'other_current' => $other_current[0]['other_current'],
            'fixed_assets_c' => $arr_fixed_assets,

            'current_assets' => $current_assets[0]['current_assets'],
            'current_assets_c' => $current_assets_c,
            'acc_rcv' => $acc_rcv[0]['acc_rcv'],
            'acc_pay' => $acc_pay[0]['acc_pay'],
            'emp_led' => $emp_led[0]['emp_led'],
            'cash_eq' => $cash_eq[0]['cash_eq'],
            'cash_hand' => $cash_hand[0]['cash_hand'],
            'cash_bank' => $cash_bank[0]['cash_bank'],
            'cash_bkash' => $cash_bkash[0]['cash_bkash'],
            'cash_nagad' => $cash_nagad[0]['cash_nagad'],
            'cash_eq_c' => $cash_eq_c,
            'cash_hand_c' => $cash_hand_c,
            'cash_bank_c' => $arr_cash_bank,
            'cash_bkash_c' => $arr_cash_bkash,
            'cash_nagad_c' => $arr_cash_nagad,
            'emp_led_c' => $arr_em_led,
            'acc_rcv_c' => $arr_ac_rcv,
        );
        $sl++;

        return $data;
    }

    public function cash_flow($from_date,$to_date)
    {
        $last_date=date('Y-m-d',strtotime("-1 days"));

        $current_assets_to = $this->db->select('(sum(debit)-sum(credit)) as current_assets')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '102')->get()->result_array();
        $current_assets_from = $this->db->select('(sum(debit)-sum(credit)) as current_assets')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '102')->get()->result_array();



       // echo $current_assets_from[0]['current_assets'];
    //   echo '<pre>';print_r($current_assets_to[0]['current_assets']-$current_assets_from[0]['current_assets']);exit();

        $inventory_to = $this->db->select('(sum(credit)-sum(debit)) as inventory')->from('acc_transaction')->where('Vdate',$to_date)->where('COAID', 10207)->get()->result_array();
        $inventory_from = $this->db->select('(sum(credit)-sum(debit)) as inventory')->from('acc_transaction')->where('Vdate',$from_date)->where('COAID', 10207)->get()->result_array();


        $current_liabilities_to = $this->db->select('(sum(credit)-sum(debit)) as current_liabilities')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '502')->get()->result_array();
        $current_liabilities_from = $this->db->select('(sum(credit)-sum(debit)) as current_liabilities')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '502')->get()->result_array();


        $non_current_liabilities_to  = $this->db->select('(sum(credit)-sum(debit)) as non_current_liabilities')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '501')->get()->result_array();
        $non_current_liabilities_from = $this->db->select('(sum(credit)-sum(debit)) as non_current_liabilities')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '501')->get()->result_array();

        $long_term_l_to  = $this->db->select('(sum(credit)-sum(debit)) as long_term_l')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '507')->get()->result_array();
        $long_term_l_from = $this->db->select('(sum(credit)-sum(debit)) as long_term_l')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '507')->get()->result_array();

        $acc_pay_to  = $this->db->select('(sum(credit)-sum(debit)) as acc_pay')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '50202')->get()->result_array();
        $acc_pay_from = $this->db->select('(sum(credit)-sum(debit)) as acc_pay')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '50202')->get()->result_array();

        $acc_pay_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('HeadCode', '50202')->group_by('a.HeadCode')->get()->result();
        $non_current_liabilities_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('a.HeadCode', '501','after')->group_by('a.HeadCode')->get()->result();
        $long_term_l_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'L')->like('a.HeadCode', '501','after')->group_by('a.HeadCode')->get()->result();


        $fixed_assets_to  = $this->db->select('(sum(debit)-sum(credit)) as fixed_assets')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '103')->get()->result_array();
        $fixed_assets_from = $this->db->select('(sum(debit)-sum(credit)) as fixed_assets')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '103')->get()->result_array();

        $other_current_to  = $this->db->select('(sum(debit)-sum(credit)) as other_current')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '10205')->get()->result_array();
        $other_current_from = $this->db->select('(sum(debit)-sum(credit)) as other_current')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '10205')->get()->result_array();

       // $this->db->select("a.*,b.HeadCode,((select ifnull(sum(debit)-sum(credit),0) from acc_transaction where Vdate= `$to_date`)-(select ifnull(sum(debit)-sum(credit),0) from acc_transaction where Vdate= `$from_date`)) as current_assets");

        $current_assets_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '102')->get()->result();


        $acc_rcv_to  = $this->db->select('(sum(debit)-sum(credit)) as acc_rcv')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '102030')->get()->result_array();
        $acc_rcv_from = $this->db->select('(sum(debit)-sum(credit)) as acc_rcv')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '102030')->get()->result_array();

        $fixed_assets_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '103','after')->group_by('a.HeadCode')->get()->result();
        $acc_rcv_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '10203','after')->group_by('a.HeadCode')->get()->result();

        $cash_bank_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020102','after')->group_by('a.HeadCode')->get()->result();
        $cash_bkash_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020103','after')->group_by('a.HeadCode')->get()->result();
        $cash_nagad_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '1020104','after')->group_by('a.HeadCode')->get()->result();
        $other_current_c = $this->db->select('*')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('a.HeadCode', '10205','after')->group_by('a.HeadCode')->get()->result();

        $cash_eq  = $this->db->select('(sum(debit)-sum(credit)) as cash_eq')->from('acc_transaction')->like('COAID', '102010')->get()->result_array();
//        $cash_eq_from = $this->db->select('(sum(debit)-sum(credit)) as cash_eq')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '102010')->get()->result_array();

        $cash_hand_to  = $this->db->select('(sum(debit)-sum(credit)) as cash_hand')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '1020101')->get()->result_array();
        $cash_hand_from = $this->db->select('(sum(debit)-sum(credit)) as cash_hand')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '1020101')->get()->result_array();

        $cash_bank_to  = $this->db->select('(sum(debit)-sum(credit)) as cash_bank')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '1020102')->get()->result_array();
        $cash_bank_from = $this->db->select('(sum(debit)-sum(credit)) as cash_bank')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '1020102')->get()->result_array();

        $cash_bkash_to  = $this->db->select('(sum(debit)-sum(credit)) as cash_bkash')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '1020103')->get()->result_array();
        $cash_bkash_from = $this->db->select('(sum(debit)-sum(credit)) as cash_bkash')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '1020103')->get()->result_array();

        $cash_nagad_to  = $this->db->select('(sum(debit)-sum(credit)) as cash_nagad')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '1020103')->get()->result_array();
        $cash_nagad_from = $this->db->select('(sum(debit)-sum(credit)) as cash_nagad')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '1020103')->get()->result_array();


        $cash_eq_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('COAID', '10201')->get()->result();
        $cash_hand_c = $this->db->select('*,(sum(b.debit)-sum(b.credit)) as total_debit')->from('acc_coa a')->join('acc_transaction b', 'a.HeadCode=b.COAID')->where('HeadType', 'A')->like('COAID', '1020101')->get()->result();



        $service_income_to = $this->db->select('sum(credit) as service_income')->from('acc_transaction')->where('Vdate',$to_date)->where('COAID', 304)->get()->result_array();
        $service_income_from = $this->db->select('sum(credit) as service_income')->from('acc_transaction')->where('Vdate',$from_date)->where('COAID', 304)->get()->result_array();

        $sale_return_to = $this->db->select('sum(credit) as sale_return')->from('acc_transaction')->where('Vdate',$to_date)->where('Vtype', 'Return')->get()->result_array();
        $sale_return_from = $this->db->select('sum(credit) as sale_return')->from('acc_transaction')->where('Vdate',$from_date)->where('Vtype', 'Return')->get()->result_array();
        $product_sale_to = $this->db->select('sum(credit) as product_sale')->from('acc_transaction')->where('Vdate',$to_date)->where('COAID', 303)->get()->result_array();
        $product_sale_from = $this->db->select('sum(credit) as product_sale')->from('acc_transaction')->where('Vdate',$from_date)->where('COAID', 303)->get()->result_array();
        $product_purchase_to = $this->db->select('sum(debit) as product_purchase')->from('acc_transaction')->where('Vdate',$to_date)->where('COAID', 402)->get()->result_array();

        $product_purchase_from = $this->db->select('sum(debit) as product_purchase')->from('acc_transaction')->where('Vdate',$from_date)->where('COAID', 402)->get()->result_array();

//        $opening_inventory = $this->db->select('(sum(debit)-sum(credit)) as opening_inventory')->from('acc_transaction')->where('COAID', 10207)->where('VDate <= ',$last_date)->get()->result_array();

        $opening_inventory_to = $this->db->select('sum(debit) as opening_inventory')->from('acc_transaction')->where('Vdate',$to_date)->where('COAID', 10207)->get()->result_array();
        $opening_inventory_from = $this->db->select('sum(debit) as opening_inventory')->from('acc_transaction')->where('Vdate',$from_date)->where('COAID', 10207)->get()->result_array();
        $direct_expense_to = $this->db->select('sum(Debit) as direct_expense')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '4010')->get()->result_array();
        $direct_expense_from = $this->db->select('sum(Debit) as direct_expense')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '4010')->get()->result_array();
        $operating_expense_to = $this->db->select('(sum(debit)-sum(credit)) as op_expense')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '403')->get()->result_array();
        $operating_expense_from = $this->db->select('(sum(debit)-sum(credit)) as op_expense')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '403')->get()->result_array();
        $indirect_income_to = $this->db->select('(sum(credit)-sum(debit)) as indirect_income')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '304')->get()->result_array();
        $indirect_income_from = $this->db->select('(sum(credit)-sum(debit)) as indirect_income')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '304')->get()->result_array();
        $indirect_expense_to = $this->db->select('(sum(debit)-sum(credit)) as indirect_expense')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '404')->get()->result_array();
        $indirect_expense_from = $this->db->select('(sum(debit)-sum(credit)) as indirect_expense')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '404')->get()->result_array();
        $drawing_to = $this->db->select('(sum(debit)-sum(credit)) as drawing')->from('acc_transaction')->where('Vdate',$to_date)->like('COAID', '405')->get()->result_array();
        $drawing_from = $this->db->select('(sum(debit)-sum(credit)) as drawing')->from('acc_transaction')->where('Vdate',$from_date)->like('COAID', '405')->get()->result_array();

        $data = array();
        $sl = 1;
        foreach ($acc_pay_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ac_pay[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }


        foreach ($non_current_liabilities_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ncl[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($long_term_l_c as $i) {

            $amount = $this->db->select('sum(credit)-sum(debit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_lt[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($acc_rcv_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_ac_rcv[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($cash_bank_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_bank[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($cash_bkash_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_bkash[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }


        foreach ($cash_nagad_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_cash_nagad[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }

        foreach ($fixed_assets_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_fixed_assets[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        foreach ($other_current_c as $i) {

            $amount = $this->db->select('sum(debit)-sum(credit) as amount')->from('acc_transaction')->where('COAID', $i->COAID)->get()->row();


            $arr_other_assets[] = array(
                'HeadName' => $i->HeadName,
                'amount' => $amount->amount


            );
        }
        //
        $data = array(

            'drawing' => $drawing_to[0]['drawing']-$drawing_from[0]['drawing'],
            'product_sale' => $product_sale_to[0]['product_sale']-$product_sale_from[0]['product_sale'],
            'sale_return' => $sale_return_to[0]['sale_return']-$sale_return_from[0]['sale_return'],
            'service_income' => $service_income_to[0]['service_income']-$service_income_from[0]['service_income'],

            'opening_inventory' => $opening_inventory_to[0]['opening_inventory']-$opening_inventory_from[0]['opening_inventory'],
            'product_purchase' => $product_purchase_to[0]['product_purchase']-$product_purchase_from[0]['product_purchase'],
            'direct_expense' => $direct_expense_to[0]['direct_expense']-$direct_expense_from[0]['direct_expense'],
            'op_expense' => $operating_expense_to[0]['op_expense']-$opening_inventory_from[0]['op_expense'],
            'indirect_expense' => $indirect_expense_to[0]['indirect_expense']-$indirect_expense_from[0]['indirect_expense'],
            'indirect_income' => $indirect_income_to[0]['indirect_income']-$indirect_income_from[0]['indirect_income'],

            'inventory' => $inventory_to[0]['inventory']-$inventory_from[0]['inventory'],
            'current_liabilities' => $current_liabilities_to[0]['current_liabilities']-$current_liabilities_from[0]['current_liabilities'],
            'acc_pay_c' => $arr_ac_pay,
            'other_current_C' => $arr_other_assets,
            'non_current_liabilities' => $non_current_liabilities_to[0]['non_current_liabilities']-$non_current_liabilities_from[0]['non_current_liabilities'],
            'long_term_l' => $long_term_l_to[0]['long_term_l']-$long_term_l_from[0]['long_term_l'],

            'non_current_liabilities_c' => $arr_ncl,

            'long_term_l_c' => $arr_lt,
            'fixed_assets' => $fixed_assets_to[0]['fixed_assets']-$fixed_assets_from[0]['fixed_assets'],
            'other_current' => $other_current_to[0]['other_current']-$other_current_from[0]['other_current'],
            'fixed_assets_c' => $arr_fixed_assets,

            'current_assets' => $current_assets_to[0]['current_assets']-$current_assets_from[0]['current_assets'],
            'current_assets_c' => $current_assets_c,
            'acc_rcv' => $acc_rcv_to[0]['acc_rcv']-$acc_rcv_from[0]['acc_rcv'],
            'acc_pay' => $acc_pay_to[0]['acc_pay']-$acc_pay_from[0]['acc_pay'],

            'cash_eq' =>$cash_eq[0]['cash_eq'],
            'cash_hand' => $cash_hand_to[0]['cash_hand']-$cash_hand_from[0]['cash_hand'],
            'cash_bank' =>$cash_bank_to[0]['cash_bank']-$cash_bank_from[0]['cash_bank'],
            'cash_bkash' => $cash_bkash_to[0]['cash_bkash']-$cash_bkash_from[0]['cash_bkash'],
            'cash_nagad' => $cash_nagad_to[0]['cash_nagad']-$cash_nagad_from[0]['cash_nagad'],
            'cash_eq_c' => $cash_eq_c,
            'cash_hand_c' => $cash_hand_c,
            'cash_bank_c' => $arr_cash_bank,
            'cash_bkash_c' => $arr_cash_bkash,
            'cash_nagad_c' => $arr_cash_nagad,
            'acc_rcv_c' => $arr_ac_rcv,
        );

        //echo '<pre>';print_r($data);exit();
        $sl++;

        return $data;
    }


    public function fixed_assets()
    {
        return   $this->db->select('*')
            ->from('acc_coa')
            ->where('PHeadName', 'Assets')
            ->get()
            ->result_array();
    }
    public function liabilities_data()
    {
        return   $this->db->select('*')
            ->from('acc_coa')
            ->where('PHeadName', 'Liabilities')
            ->get()
            ->result_array();
    }

    public function income_fields()
    {
        return   $this->db->select('*')
            ->from('acc_coa')
            ->where('PHeadName', 'Income')
            ->get()
            ->result_array();
    }

    public function expense_fields()
    {
        return   $this->db->select('*')
            ->from('acc_coa')
            ->where('PHeadName', 'Expence')
            ->get()
            ->result_array();
    }

    public function balance_sheet_search()
    {

        $sql = "SELECT * FROM acc_coa WHERE acc_coa.HeadType='A'";
        $sql3 = $this->db->query($sql);

        $sql = "SELECT * FROM acc_coa WHERE acc_coa.HeadType='L' ";
        //$sql="SELECT * FROM acc_coa WHERE acc_coa.HeadType='I'";
        $sql2 = $this->db->query($sql);

        $sql = "SELECT * FROM acc_coa WHERE acc_coa.HeadType='I'";
        $sql1 = $this->db->query($sql);

        $sql = "SELECT * FROM acc_coa WHERE acc_coa.HeadType='E'";
        $sql4 = $this->db->query($sql);

        $total = $this->db->select('a.*,sum(b.Debit) as total_debit,sum(b.Credit) as total_credit')->from('acc_coa a')
            ->join('acc_transaction b', 'b.COAID = a.HeadCode')
            ->get()->result_array();

        $data = array(

            'oResultIncome' => $sql1->result(),
            'oResultExpence' => $sql4->result(),
            'oResultAsset'     => $sql3->result(),
            'oResultLiability' => $sql2->result(),
            'total' => $total,
        );

        // echo '<pre>';print_r($data);exit();
        return $data;
    }

    public function trial_balance_new()
    {


        $coa = $this->db->select('*')->from('acc_coa')->where('HeadLevel', '0')->get()->result_array();
        $assets = $this->db->select('a.*,sum(b.Debit) as total_debit,sum(b.Credit) as total_credit')->from('acc_coa a')
            ->join('acc_transaction b', 'b.COAID = a.HeadCode')
            ->group_by('b.COAID')
            ->get()->result_array();


        $data = array(

            'oResultCoa'     => $coa,
            'oResultAssets'     => $assets,

        );

        // echo '<pre>';print_r($data);exit();
        return $data;
    }
    public function profit_loss_serach_date($dtpFromDate, $dtpToDate)
    {
        $sqlF = "SELECT  acc_transaction.VDate, acc_transaction.COAID, acc_coa.HeadName FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.VDate BETWEEN '$dtpFromDate' AND '$dtpToDate' AND acc_transaction.IsAppove = 1 AND  acc_transaction.COAID LIKE '301%'";
        $query = $this->db->query($sqlF);
        return $query->result();
    }

    public function treeview_selectform($id)
    {
        $data = $this->db->select('*')
            ->from('acc_coa')
            ->where('HeadCode', $id)
            ->get()
            ->row();
        return $data;
    }
    public function get_supplier()
    {
        $this->db->select('*');
        $this->db->from('supplier_information');
        $this->db->where('status', 1);
        $this->db->order_by('supplier_id', 'desc');
        $query = $this->db->get();
        return $query->result();
    }
    // Customer list
    public function get_customer()
    {
        $this->db->select('*');
        $this->db->from('customer_information');
        $query = $this->db->get();
        return $query->result();
    }

    public function Spayment()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'PM-', 'after')
            ->order_by('ID', 'desc')
            ->get()
            ->result_array();
    }
    // customer code
    public function Creceive()
    {
        return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction')
            ->like('VNo', 'CR-', 'after')
            ->order_by('ID', 'desc')
            ->get()
            ->result_array();
    }
    public function supplier_payment_insert()
    {

        $bank_id = $this->input->post('bank_id', TRUE);
        if (!empty($bank_id)) {
            $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id', $bank_id)->get()->row()->bank_name;

            $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', $bankname)->get()->row()->HeadCode;
        } else {
            $bankcoaid = '';
        }
        $this->load->model('Web_settings');
        $currency_details = $this->Web_settings->retrieve_setting_editdata();
        $voucher_no = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype = "PM";
        $cAID = $this->input->post('cmbDebit', TRUE);
        $dAID = $this->input->post('txtCode', TRUE);
        $Debit = $this->input->post('txtAmount', TRUE);
        $Credit = 0;
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 1;
        $sup_id = $this->input->post('supplier_id', TRUE);

        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        $dbtid = $dAID;
        $Damnt = $Debit;
        $supplier_id = $sup_id;
        $supinfo = $this->db->select('*')->from('supplier_information')->where('supplier_id', $supplier_id)->get()->row();
        $supplierdebit = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  $dbtid,
            'Narration'      =>  $Narration,
            'Debit'          =>  $Damnt,
            'Credit'         =>  0,
            'IsPosted'       => $IsPosted,
            'CreateBy'       => $CreateBy,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );
        $cc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  1020101,
            'Narration'      =>  'Paid to ' . $supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $Damnt,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );
        $bankc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  $bankcoaid,
            'Narration'      =>  'Supplier Payment To ' . $supinfo->supplier_name,
            'Debit'          =>  0,
            'Credit'         =>  $Damnt,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );



        $this->db->insert('acc_transaction', $supplierdebit);

        if ($this->input->post('paytype', TRUE) == 2) {
            $this->db->insert('acc_transaction', $bankc);
        }
        if ($this->input->post('paytype', TRUE) == 1) {
            $this->db->insert('acc_transaction', $cc);
        }
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/supplier_paymentreceipt/' . $supplier_id . '/' . $voucher_no . '/' . $dbtid);
    }

    public function insert_cashadjustment()
    {
        $this->load->model('Web_settings');
        $currency_details = $this->Web_settings->retrieve_setting_editdata();
        $voucher_no       = $this->input->post('txtVNo', TRUE);
        $Vtype           = "AD";
        $amount          = $this->input->post('txtAmount', TRUE);
        $type            = $this->input->post('type', TRUE);
        if ($type == 1) {
            $debit = $amount;
            $credit = 0;
        }
        if ($type == 2) {
            $debit = 0;
            $credit = $amount;
        }
        $VDate = $this->input->post('dtpDate', TRUE);
        $Narration = $this->input->post('txtRemarks', TRUE);
        $IsPosted = 1;
        $IsAppove = 1;
        $CreateBy = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');

        $cc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  1020101,
            'Narration'      =>  $Narration,
            'Debit'          =>  $debit,
            'Credit'         =>  $credit,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );

        $this->db->insert('acc_transaction', $cc);

        return true;
    }

    public function supplierinfo($supplier_id)
    {
        return $this->db->select('*')
            ->from('supplier_information')
            ->where('supplier_id', $supplier_id)
            ->get()
            ->result_array();
    }

    public function supplierpaymentinfo($voucher_no, $coaid)
    {
        return   $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $voucher_no)
            ->where('COAID', $coaid)
            ->get()
            ->result_array();
    }

    public function customer_receive_insert()
    {

        $bank_id = $this->input->post('bank_id', TRUE);
        if (!empty($bank_id)) {
            $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id', $bank_id)->get()->row()->bank_name;

            $bankcoaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName', $bankname)->get()->row()->HeadCode;
        } else {
            $bankcoaid = '';
        }
        $this->load->model('Web_settings');
        $currency_details = $this->Web_settings->retrieve_setting_editdata();
        $voucher_no       = addslashes(trim($this->input->post('txtVNo', TRUE)));
        $Vtype           = "CR";
        $cAID            = $this->input->post('cmbDebit', TRUE);
        $dAID            = $this->input->post('txtCode', TRUE);
        $Debit           = 0;
        $Credit          = $this->input->post('txtAmount', TRUE);
        $VDate           = $this->input->post('dtpDate', TRUE);
        $customer_id     = $this->input->post('customer_id', TRUE);
        $Narration       = addslashes(trim($this->input->post('txtRemarks', TRUE)));
        $IsPosted = 1;
        $IsAppove = 1;
        $CreateBy        = $this->session->userdata('user_id');
        $createdate      = date('Y-m-d H:i:s');
        $dbtid           = $dAID;
        $Credit          = $Credit;
        $customerid      = $customer_id;
        $customerinfo = $this->db->select('*')->from('customer_information')->where('customer_id', $customerid)->get()->row();
        $customercredit = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $VDate,
            'COAID'          =>  $dbtid,
            'Narration'      =>  $Narration,
            'Debit'          =>  0,
            'Credit'         =>  $Credit,
            'IsPosted'       => $IsPosted,
            'CreateBy'       => $CreateBy,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );

        $cc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  1020101,
            'Narration'      =>  'Cash in Hand For  ' . $customerinfo->customer_name,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );
        $bankc = array(
            'VNo'            =>  $voucher_no,
            'Vtype'          =>  $Vtype,
            'VDate'          =>  $createdate,
            'COAID'          =>  $bankcoaid,
            'Narration'      =>  'Customer Receive From ' . $customerinfo->customer_name,
            'Debit'          =>  $Credit,
            'Credit'         =>  0,
            'IsPosted'       =>  1,
            'CreateBy'       =>  $CreateBy,
            'CreateDate'     =>  $createdate,
            'IsAppove'       =>  1
        );




        $this->db->insert('acc_transaction', $customercredit);
        if ($this->input->post('paytype', TRUE) == 2) {
            $this->db->insert('acc_transaction', $bankc);
        }
        if ($this->input->post('paytype', TRUE) == 1) {
            $this->db->insert('acc_transaction', $cc);
        }

        $message = 'Mr.' . $customerinfo->customer_name . ',
        ' . 'You have Paid ' . $Credit . ' ' . $currency_details[0]['currency'];

        $config_data = $this->db->select('*')->from('sms_settings')->get()->row();
        if ($config_data->isreceive == 1) {
            $this->smsgateway->send([
                'apiProvider' => 'nexmo',
                'username'    => $config_data->api_key,
                'password'    => $config_data->api_secret,
                'from'        => $config_data->from,
                'to'          => $customerinfo->customer_mobile,
                'message'     => $message
            ]);
        }

        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/customer_receipt/' . $customerid . '/' . $voucher_no . '/' . $dbtid);
    }


    public function custoinfo($customer_id)
    {
        return $this->db->select('*')
            ->from('customer_information')
            ->where('customer_id', $customer_id)
            ->get()
            ->result_array();
    }

    public function customerreceiptinfo($voucher_no, $coaid)
    {
        return   $this->db->select('*')
            ->from('acc_transaction')
            ->where('VNo', $voucher_no)
            ->where('COAID', $coaid)
            ->get()
            ->result_array();
    }
    // =================== Settings data ==============================
    public function software_setting_info()
    {
        $this->db->select('*');
        $this->db->from('web_setting');
        $this->db->where('setting_id', 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result();
        }
        return false;
    }


    public function bankbook_firstqury($FromDate, $HeadCode)
    {

        $sql = "SELECT SUM(Debit) Debit, SUM(Credit) Credit, IsAppove, COAID FROM acc_transaction
              WHERE VDate < '$FromDate 00:00:00' AND COAID = '$HeadCode' AND IsAppove =1 GROUP BY IsAppove, COAID";
        return  $sql;
    }

    public function bankbook_secondqury($FromDate, $HeadCode, $ToDate)
    {
        $sql = "SELECT acc_transaction.VNo, acc_transaction.Vtype, acc_transaction.VDate, acc_transaction.Debit, acc_transaction.Credit, acc_transaction.IsAppove, acc_transaction.COAID, acc_coa.HeadName, acc_coa.PHeadName, acc_coa.HeadType, acc_transaction.Narration
     FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode
         WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '$FromDate 00:00:00' AND '$ToDate 00:00:00' AND acc_transaction.COAID='$HeadCode' ORDER BY  acc_transaction.VDate, acc_transaction.VNo";

        return $sql;
    }

    public function cashbook_firstqury($FromDate, $HeadCode)
    {
        $sql = "SELECT SUM(Debit) Debit, SUM(Credit) Credit, IsAppove, COAID FROM acc_transaction
              WHERE VDate < '$FromDate' AND COAID LIKE '$HeadCode%' AND IsAppove =1 GROUP BY IsAppove, COAID";
        return  $sql;
    }


    public function cashbook_secondqury($FromDate, $HeadCode, $ToDate)
    {
        $sql = "SELECT acc_transaction.ID,acc_transaction.VNo, acc_transaction.Vtype, acc_transaction.VDate, SUM(acc_transaction.Debit) as Debit, SUM(acc_transaction.Credit) as Credit, acc_transaction.IsAppove, acc_transaction.COAID, acc_coa.HeadName, acc_coa.PHeadName, acc_coa.HeadType, acc_transaction.Narration
        FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode
        WHERE acc_transaction.IsAppove =1 AND acc_transaction.VDate BETWEEN '$FromDate' AND '$ToDate' AND acc_transaction.COAID LIKE '$HeadCode%' GROUP BY acc_transaction.VNo, acc_transaction.Vtype, acc_transaction.VDate, acc_transaction.IsAppove, acc_transaction.COAID, acc_coa.HeadName, acc_coa.PHeadName, acc_coa.HeadType, acc_transaction.Narration
               HAVING SUM(acc_transaction.Debit)-SUM(acc_transaction.Credit)<>0
               ORDER BY  acc_transaction.VDate, acc_transaction.VNo";

        return $sql;
    }


    public function inventoryledger_firstqury($FromDate, $HeadCode)
    {
        $sql = "SELECT SUM(Debit) Debit, SUM(Credit) Credit, IsAppove, COAID FROM acc_transaction
              WHERE VDate < '$FromDate 00:00:00' AND COAID = '$HeadCode' AND IsAppove =1 GROUP BY IsAppove, COAID";
        return  $sql;
    }


    public function inventoryledger_secondqury($FromDate, $HeadCode, $ToDate)
    {
        $sql = "SELECT acc_transaction.VNo, acc_transaction.Vtype, acc_transaction.VDate, acc_transaction.Debit, acc_transaction.Credit, acc_transaction.IsAppove, acc_transaction.COAID, acc_coa.HeadName, acc_coa.PHeadName, acc_coa.HeadType, acc_transaction.Narration
     FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode
         WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '$FromDate 00:00:00' AND '$ToDate 00:00:00' AND acc_transaction.COAID='$HeadCode' ORDER BY  acc_transaction.VDate, acc_transaction.VNo";
        return  $sql;
    }


    public function trial_balance_firstquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT SUM(acc_transaction.Debit) AS Debit, SUM(acc_transaction.Credit) AS Credit FROM acc_transaction WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '$COAID%' ";
        return $sql;
    }


    public function trial_balance_secondquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT SUM(acc_transaction.Debit) AS Debit, SUM(acc_transaction.Credit) AS Credit FROM acc_transaction WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '$COAID%' ";

        return $sql;
    }

    public function profitloss_firstquery($dtpFromDate, $dtpToDate, $COAID)
    {

        $sql = "SELECT SUM(acc_transaction.Debit)-SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE  COAID LIKE '$COAID%'";

        return $sql;
    }
    public function profitloss_secondquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT SUM(acc_transaction.Credit)-SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND  COAID LIKE '$COAID%'";

        return $sql;
    }

    public function trial_firstquery($dtpFromDate, $dtpToDate, $COAID)
    {

        $sql = "SELECT SUM(acc_transaction.Debit) as total_debit FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE  COAID LIKE '$COAID%'";

        return $sql;
    }

    public function trial_secondquery($dtpFromDate, $dtpToDate, $COAID, $outlet_id = null)
    {
        $CI = &get_instance();
        // $CI->load->model('Warehouse');
        // $outlet = $CI->Warehouse->get_outlet_user();


        // if (!$outlet_id) {
        //     $outlet_id = $outlet[0]['outlet_id'];
        // }
        // if ($outlet_id != 1) {
        //     if ($outlet_id == 'HK7TGDT69VFMXB7') {
        //         $sql = "SELECT SUM(acc_transaction.Credit) as total_credit , SUM(acc_transaction.Debit) as total_debit FROM acc_transaction LEFT JOIN outlet_warehouse ON acc_transaction.CreateBy = outlet_warehouse.user_id
        //         INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND outlet_warehouse.id IS NULL AND acc_coa.IsActive = 1 AND  COAID LIKE '$COAID%'";
        //     } else {
        //         $sql = "SELECT SUM(acc_transaction.Credit) as total_credit , SUM(acc_transaction.Debit) as total_debit FROM acc_transaction LEFT JOIN outlet_warehouse ON acc_transaction.CreateBy = outlet_warehouse.user_id
        //     INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND outlet_warehouse.outlet_id = '$outlet_id' AND acc_coa.IsActive = 1 AND  COAID LIKE '$COAID%'";
        //     }
        // } else {
        $sql = "SELECT SUM(acc_transaction.Credit) as total_credit , SUM(acc_transaction.Debit) as total_debit FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND acc_coa.IsActive = 1 AND  COAID LIKE '$COAID%'";
        // }

        return $sql;
    }


    public function cashflow_firstquery()
    {
        $sql = "SELECT * FROM acc_coa WHERE acc_coa.IsTransaction=1 AND acc_coa.HeadType='A' AND acc_coa.IsActive=1 AND acc_coa.HeadCode LIKE '1020101%'";

        return $sql;
    }

    public function cashflow_secondquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT SUM(acc_transaction.Debit)- SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '$COAID%'";

        return $sql;
    }

    public function cashflow_thirdquery()
    {
        $sql = "SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '102%' AND IsActive=1 AND HeadCode NOT LIKE '1020101%' AND HeadCode!='102' ";

        return $sql;
    }

    public function cashflow_forthquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '1020101%') ";

        return $sql;
    }


    public function cashflow_fifthquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '4%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '1020101%') ";

        return $sql;
    }


    public function cashflow_sixthquery()
    {
        $sql = "SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '3%' AND IsActive=1 ";
        return $sql;
    }

    public function cashflow_seventhquery($dtpFromDate, $dtpToDate, $COAID)
    {
        $sql = "SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '" . $dtpFromDate . "' AND '" . $dtpToDate . "' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '1020101%') ";
        return $sql;
    }

    public function get_v_details($v_no)
    {
        $res = $this->db->select('a.*, b.HeadName')
            ->from('acc_transaction a')
            ->where('a.VNo', $v_no)
            ->join('acc_coa b', 'b.HeadCode = a.COAID')
            ->get()
            ->result_array();

        return $res;
    }
}
