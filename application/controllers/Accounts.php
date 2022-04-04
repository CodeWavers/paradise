<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Accounts extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->db->query('SET SESSION sql_mode = ""');
    $this->load->model(array(
      'accounts_model', 'Web_settings'
    ));
    $this->load->library('laccounting');
    $this->auth->check_admin_auth();
  }


  public function C_O_A()
  {
    $content = $this->laccounting->coa_form();
    $this->template->full_admin_html_view($content);
  }


  // tree view controller
  public function show_tree($id = null)
  {
    $content = $this->laccounting->treeview_form();
    $this->template->full_admin_html_view($content);
  }


  public function selectedform($id)
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $role_reult = $CI->Accounts_model->treeview_selectform($id);
    $baseurl = base_url() . 'accounts/insert_coa';


    if ($role_reult) {
      $html = "";
      $html .= form_open_multipart('accounts/insert_coa', 'id="form"');
      $html .= "<div id=\"newData\">
   <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">
      <tr>
        <td>Head Code</td>
        <td><input type=\"text\" name=\"txtHeadCode\" id=\"txtHeadCode\" class=\"form_input\"  value=\"" . $role_reult->HeadCode . "\" readonly=\"readonly\"/></td>
      </tr>
      <tr>
        <td>Head Name</td>
        <td><input type=\"text\" name=\"txtHeadName\" id=\"txtHeadName\" class=\"form_input\" value=\"" . $role_reult->HeadName . "\"/>
<input type=\"hidden\" name=\"HeadName\" id=\"HeadName\" class=\"form_input\" value=\"" . $role_reult->HeadName . "\"/>
        </td>
      </tr>
      <tr>
        <td>Parent Head</td>
        <td><input type=\"text\" name=\"txtPHead\" id=\"txtPHead\" class=\"form_input\" readonly=\"readonly\" value=\"" . $role_reult->PHeadName . "\"/></td>
      </tr>
      <tr>

        <td>Head Level</td>
        <td><input type=\"text\" name=\"txtHeadLevel\" id=\"txtHeadLevel\" class=\"form_input\" readonly=\"readonly\" value=\"" . $role_reult->HeadLevel . "\"/></td>
      </tr>
       <tr>
        <td>Head Type</td>
        <td><input type=\"text\" name=\"txtHeadType\" id=\"txtHeadType\" class=\"form_input\" readonly=\"readonly\" value=\"" . $role_reult->HeadType . "\"/></td>
      </tr>

       <tr>
         <td>&nbsp;</td>
         <td><input type=\"checkbox\" name=\"IsTransaction\" value=\"1\" id=\"IsTransaction\" size=\"28\"  onchange=\"IsTransaction_change()\"";
      if ($role_reult->IsTransaction == 1) {
        $html .= "checked";
      }
      $html .= "/><label for=\"IsTransaction\"> IsTransaction</label>
         <input type=\"checkbox\" value=\"1\" name=\"IsActive\" id=\"IsActive\" size=\"28\"";
      if ($role_reult->IsActive == 1) {
        $html .= "checked";
      }
      $html .= "/><label for=\"IsActive\"> IsActive</label>
         <input type=\"checkbox\" value=\"1\" name=\"IsGL\" id=\"IsGL\" size=\"28\" onchange=\"IsGL_change();\"";
      if ($role_reult->IsGL == 1) {
        $html .= "checked";
      }
      $html .= "/><label for=\"IsGL\"> IsGL</label>

        </td>";
      $html .= "</tr>
       <tr>
                    <td>&nbsp;</td>
                    <td>";
      $html .= "<input type=\"button\" name=\"btnNew\" id=\"btnNew\" value=\"New\" onClick=\"newHeaddata(" . $role_reult->HeadCode . ")\" />
                      <input type=\"submit\" name=\"btnSave\" id=\"btnSave\" value=\"Save\" disabled=\"disabled\"/>";

      $html .= " <input type=\"submit\" name=\"btnUpdate\" id=\"btnUpdate\" value=\"Update\" />";
      $html .= "</tr></table>
 </form>
			";
    }

    echo json_encode($html);
  }

  public function newform($id)
  {

    $newdata = $this->db->select('*')
      ->from('acc_coa')
      ->where('HeadCode', $id)
      ->get()
      ->row();


    $newidsinfo = $this->db->select('*,count(HeadCode) as hc')
      ->from('acc_coa')
      ->where('PHeadName', $newdata->HeadName)
      ->get()
      ->row();

    $nid  = $newidsinfo->hc;
    $n = $nid + 1;
    if ($n / 10 < 1)
      $HeadCode = $id . "0" . $n;
    else
      $HeadCode = $id . $n;

    $info['headcode'] =  $HeadCode;
    $info['rowdata'] =  $newdata;
    $info['headlabel'] =  $newdata->HeadLevel + 1;
    echo json_encode($info);
  }

  public function insert_coa()
  {
    $headcode    = $this->input->post('txtHeadCode', TRUE);
    $HeadName    = $this->input->post('txtHeadName', TRUE);
    $PHeadName   = $this->input->post('txtPHead', TRUE);
    $HeadLevel   = $this->input->post('txtHeadLevel', TRUE);
    $txtHeadType = $this->input->post('txtHeadType', TRUE);
    $isact       = $this->input->post('IsActive', TRUE);
    $IsActive    = (!empty($isact) ? $isact : 0);
    $trns        = $this->input->post('IsTransaction', TRUE);
    $IsTransaction = (!empty($trns) ? $trns : 0);
    $isgl        = $this->input->post('IsGL', TRUE);
    $IsGL       = (!empty($isgl) ? $isgl : 0);
    $createby = $this->session->userdata('user_id');
    $createdate = date('Y-m-d H:i:s');
    $postData = array(
      'HeadCode'       =>  $headcode,
      'HeadName'       =>  $HeadName,
      'PHeadName'      =>  $PHeadName,
      'HeadLevel'      =>  $HeadLevel,
      'IsActive'       =>  $IsActive,
      'IsTransaction'  =>  $IsTransaction,
      'IsGL'           =>  $IsGL,
      'HeadType'       => $txtHeadType,
      'IsBudget'       => 0,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
    );


    $upinfo = $this->db->select('*')
      ->from('acc_coa')
      ->where('HeadCode', $headcode)
      ->get()
      ->num_rows();
   // echo '<pre>';print_r($postData);exit();

        if ($upinfo > 0){
            $hname = $this->input->post('HeadName', TRUE);
            $updata = array(
                'PHeadName'      =>  $HeadName,
            );
            $this->db->where('HeadCode', $headcode)
                ->update('acc_coa', $postData);
            $this->db->where('PHeadName', $hname)
                ->update('acc_coa', $updata);
        }else{
            $this->db->insert('acc_coa', $postData);
        }


    redirect($_SERVER['HTTP_REFERER']);
  }

  // Debit voucher Create
  public function debit_voucher()
  {
    $data['title'] = display('debit_voucher');
    $data['acc'] = $this->accounts_model->Transacc();
    $data['voucher_no'] = $this->accounts_model->voNO();
    $data['crcc'] = $this->accounts_model->Cracc();
    $content = $this->parser->parse('newaccount/debit_voucher', $data, true);
    $this->template->full_admin_html_view($content);
  }

  // cash adjustment
  public function cash_adjustment()
  {
    $data['title']      = display('cash_adjustment');
    $data['voucher_no'] = $this->accounts_model->Cashvoucher();
    $content = $this->parser->parse('newaccount/cash_adjustment', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Create Cash Adjustment
  public function create_cash_adjustment()
  {
    $this->form_validation->set_rules('txtAmount', display('amount'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->insert_cashadjustment()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/cash_adjustment/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/cash_adjustment");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/cash_adjustment");
    }
  }

  // Debit voucher code select onchange
  public function debtvouchercode($id)
  {

    $debitvcode = $this->db->select('*')
      ->from('acc_coa')
      ->where('HeadCode', $id)
      ->get()
      ->row();
    $code = $debitvcode->HeadCode;
    echo json_encode($code);
  }
  //Supplier code
  public function supplier_headcode($id)
  {
    $supplier_info = $this->db->select('supplier_name')->from('supplier_information')->where('supplier_id', $id)->get()->row();
    $head_name = $id . '-' . $supplier_info->supplier_name;
    $supplierhcode = $this->db->select('*')
      ->from('acc_coa')
      ->where('HeadName', $head_name)
      ->get()
      ->row();
    $code = $supplierhcode->HeadCode;
    echo json_encode($code);
  }
  //Create Debit Voucher
  public function create_debit_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');

    $_SESSION['pay_to'] = $this->input->post('pay_to', TRUE);
    if ($this->form_validation->run()) {
      if ($this->accounts_model->insert_debitvoucher()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect("accounts/print_voucher/" . addslashes(trim($this->input->post('txtVNo', TRUE))) . "/");
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      // redirect("accounts/debit_voucher");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/debit_voucher");
    }
  }

  public function print_voucher($v_no)
  {
    $CI = &get_instance();

    $CI->load->library('numbertowords');
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $CI->load->model('Web_settings');
    $currency_details = $CI->Web_settings->retrieve_setting_editdata();


    $v_details = $CI->Accounts_model->get_v_details($v_no);

    $tot_cr = array_sum(array_column($v_details, 'Credit'));
    $tot_dr = array_sum(array_column($v_details, 'Debit'));

    $tot_dr = number_format($tot_dr, 2, '.', '');
    $tot_cr = number_format($tot_cr, 2, '.', '');

    $company_info = $CI->Invoices->retrieve_company();

    // echo '<pre>';
    // print_r('');
    // exit;

    $pay_to = $_SESSION['pay_to'];

    $total_amnt = ($v_details[0]['Vtype'] == "DV") ? $tot_dr : $tot_cr;
    $inwords = $CI->numbertowords->convert_number($total_amnt);

    $count = 0;
    foreach ($v_details as $v) {
      if ($v['Vtype'] == "DV" && $v['Debit'] > 0) {
        $count++;
      } elseif ($v['Vtype'] == "CV" && $v['Credit'] > 0) {
        $count++;
      }
    }

    $data = array(
      'title'     => 'Voucher Print',
      'pay_to'    => $pay_to,
      'company_info'      => $company_info,
      'currency_det'  => $currency_details,
      'v_details'     => $v_details,
      'v_date'          => $v_details[0]['VDate'],
      'v_type'        => $v_details[0]['Vtype'],
      'v_no' => $v_no,
      'num_rows'  => $count + 1,
      'total_amnt'    => $total_amnt,
      'inwords'       => $inwords,
      'link'          => ($v_details[0]['Vtype'] == 'DV') ? "debit_voucher" : "credit_voucher",
    );

    $view = $CI->parser->parse('newaccount/voucher_print', $data, true);
    $this->template->full_admin_html_view($view);
  }
  // Update Debit voucher
  public function update_debit_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->update_debitvoucher()) {
        $this->session->set_flashdata('message', display('update_successfully'));
        redirect('accounts/aprove_v/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/aprove_v");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/accounts/aprove_v");
    }
  }

  //Credit voucher
  public function credit_voucher()
  {
    $data['title'] = display('credit_voucher');
    $data['acc'] = $this->accounts_model->Transacc();
    $data['voucher_no'] = $this->accounts_model->crVno();
    $data['crcc'] = $this->accounts_model->Cracc();
    $content = $this->parser->parse('newaccount/credit_voucher', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Create Credit Voucher
  public function create_credit_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    $_SESSION['pay_to'] = $this->input->post('pay_to', TRUE);
    if ($this->form_validation->run()) {
      if ($this->accounts_model->insert_creditvoucher()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect("accounts/print_voucher/" . addslashes(trim($this->input->post('txtVNo', TRUE))) . "/");
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      // redirect("accounts/money_reciept");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/money_reciept");
    }
  }
  // Contra Voucher form
  public function contra_voucher()
  {
    $data['title'] = display('contra_voucher');
    $data['acc'] = $this->accounts_model->Transacc();
    $data['voucher_no'] = $this->accounts_model->contra();
    $content = $this->parser->parse('newaccount/contra_voucher', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Create Contra Voucher
  public function create_contra_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->insert_contravoucher()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/contra_voucher/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/contra_voucher");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/contra_voucher");
    }
  }
  // Journal voucher
  public function journal_voucher()
  {
    $data['title'] = display('journal_voucher');
    $data['acc'] = $this->accounts_model->Transacc();
    $data['voucher_no'] = $this->accounts_model->journal();
    $content = $this->parser->parse('newaccount/journal_voucher', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Create Journal Voucher
  public function create_journal_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->insert_journalvoucher()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/journal_voucher/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/journal_voucher");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/journal_voucher");
    }
  }

  public function update_journal_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->update_journalvoucher()) {
        $this->session->set_flashdata('message', display('successfully_updated'));
        redirect('accounts/aprove_v');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/aprove_v");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/aprove_v");
    }
  }

  public function update_contra_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->update_contravoucher()) {
        $this->session->set_flashdata('message', display('successfully_updated'));
        redirect('accounts/aprove_v');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/aprove_v");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/aprove_v");
    }
  }
  //Aprove voucher
  public function aprove_v()
  {
    $data['title'] = display('voucher_approve');
    $data['aprrove'] = $this->accounts_model->approve_voucher();
    $content = $this->parser->parse('newaccount/voucher_approve', $data, true);
    $this->template->full_admin_html_view($content);
  }
  // isApprove
  public function isactive($id = null, $action = null)
  {
    $action = ($action == 'active' ? 1 : 0);
    $postData = array(
      'VNo'     => $id,
      'IsAppove' => $action
    );

    if ($this->accounts_model->approved($postData)) {
      $this->session->set_flashdata('message', display('successfully_approved'));
    } else {
      $this->session->set_flashdata('error_message', display('please_try_again'));
    }

    redirect($_SERVER['HTTP_REFERER']);
  }

  public function voucher_delete($voucher)
  {
    if ($this->accounts_model->delete_voucher($voucher)) {
      $this->session->set_flashdata('message', display('successfully_delete'));
    } else {
      $this->session->set_flashdata('error_message', display('please_try_again'));
    }

    redirect($_SERVER['HTTP_REFERER']);
  }

  //Update voucher
  public function voucher_update($id = null)
  {
    $vtype = $this->db->select('*')
      ->from('acc_transaction')
      ->where('VNo', $id)
      ->get()
      ->result_array();

    if ($vtype[0]['Vtype'] == "DV") {
      $data['title'] = display('update_debit_voucher');
      $data['dbvoucher_info'] = $this->accounts_model->dbvoucher_updata($id);
      $data['credit_info'] = $this->accounts_model->crvoucher_updata($id);
      $page =  'newaccount/update_dbt_crtvoucher';
    }

    if ($vtype[0]['Vtype'] == "JV") {
      $data['title'] = 'Update' . ' ' . display('journal_voucher');
      $data['acc'] = $this->accounts_model->Transacc();
      $data['voucher_info'] = $this->accounts_model->journal_updata($id);
      $page =  'newaccount/update_journal_voucher';
    }


    if ($vtype[0]['Vtype'] == "Contra") {
      $data['title'] = 'Update' . ' ' . display('contra_voucher');
      $data['acc'] = $this->accounts_model->Transacc();
      $data['voucher_info'] = $this->accounts_model->journal_updata($id);
      $page =  'newaccount/update_contra_voucher';
    }

    if ($vtype[0]['Vtype'] == "CV") {
      $data['title'] = display('update_credit_voucher');
      $data['crvoucher_info'] = $this->accounts_model->crdtvoucher_updata($id);
      $data['debit_info'] = $this->accounts_model->debitvoucher_updata($id);
      $page =  'newaccount/update_credit_bdtvoucher';
    }
    $data['crcc'] = $this->accounts_model->Cracc();
    $data['acc'] = $this->accounts_model->Transacc();
    $content = $this->parser->parse($page, $data, true);
    $this->template->full_admin_html_view($content);
  }
  // update credit voucher
  public function update_credit_voucher()
  {
    $this->form_validation->set_rules('cmbDebit', display('cmbDebit'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->update_creditvoucher()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/aprove_v/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/aprove_v");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/aprove_v");
    }
  }

  //Trial Balannce
  public function trial_balance()
  {
    $data['title']  = display('trial_balance');
    $content = $this->parser->parse('newaccount/trial_balance', $data, true);
    $this->template->full_admin_html_view($content);
  }
  //Trial Balance Report
  public function trial_balance_report()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $dtpFromDate     = $this->input->post('dtpFromDate', TRUE);
    $dtpToDate       = $this->input->post('dtpToDate', TRUE);
    $chkWithOpening  = $this->input->post('chkWithOpening', TRUE);

    $results         = $this->accounts_model->trial_balance_report($dtpFromDate, $dtpToDate, $chkWithOpening);

    if ($results['WithOpening']) {
      $data['oResultTr']    = $results['oResultTr'];
      $data['oResultInEx']  = $results['oResultInEx'];
      $data['dtpFromDate']  = $dtpFromDate;
      $data['dtpToDate']    = $dtpToDate;

      // PDF Generator
      $this->load->library('pdfgenerator');
      $dompdf = new DOMPDF();
      $page = $this->load->view('newaccount/trial_balance_with_opening_pdf', $data, true);
      $dompdf->load_html($page);
      $dompdf->render();
      $output = $dompdf->output();
      file_put_contents('assets/data/pdf/Trial Balance With Opening As On ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf', $output);


      $data['pdf']    = 'assets/data/pdf/Trial Balance With Opening As On ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf';
      $data['title']  = display('trial_balance_report');
      $content = $this->parser->parse('newaccount/trial_balance_with_opening', $data, true);
      $this->template->full_admin_html_view($content);
    } else {

      $data['oResultTr']    = $results['oResultTr'];
      $data['oResultInEx']  = $results['oResultInEx'];
      $data['dtpFromDate']  = $dtpFromDate;
      $data['dtpToDate']    = $dtpToDate;

      // PDF Generator
      $this->load->library('pdfgenerator');
      $dompdf = new DOMPDF();
      $page = $this->load->view('newaccount/trial_balance_without_opening_pdf', $data, true);
      $dompdf->load_html($page);
      $dompdf->render();
      $output = $dompdf->output();
      file_put_contents('assets/data/pdf/Trial Balance As On ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf', $output);
      $data['pdf']    = 'assets/data/pdf/Trial Balance As On ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf';

      $data['title']  = display('trial_balance_report');
      $content = $this->parser->parse('newaccount/trial_balance_without_opening', $data, true);
      $this->template->full_admin_html_view($content);
    }
  }

  public function trial_balance_new()
  {
    $CI = &get_instance();
    $CI->load->model('Reports');
      $closing_inventory = $this->Reports->valuation_list();

      $stock_value=array_sum(array_column($closing_inventory['aaData'],'stock_value'));

          //  echo '<pre>';print_r($stock_value);exit();
    // $CI->load->model('Warehouse');
          $vno=  date('Ymdhs');
          $createby = $this->session->userdata('user_id');
          $createdate = date('Y-m-d H:i:s');
          $closing_inventory_value = array(
          'VNo'            =>  $vno,
          'Vtype'          =>  'INV',
          'VDate'          =>  $createdate,
          'COAID'          =>  10206,
          'Narration'      =>  'Closing Inventory Value',
          'Debit'          =>  $stock_value,
          'Credit'         =>  0,
          'IsPosted'       => 1,
          'CreateBy'       => $createby,
          'CreateDate'     => $createdate,
          'IsAppove'       => 1
      );

          $rows=$this->db->select('*')->from('acc_transaction')->where('COAID',10206)->get()->num_rows();

          if ($rows > 0){
              $this->db->where('COAID',10206);
              $this->db->set('Debit',$stock_value);
              $this->db->update('acc_transaction');
          }else{
                    $this->db->insert('acc_transaction',$closing_inventory_value);

          }
//      echo '<pre>';print_r($rows);exit();

    $outlet_id = $this->input->post('outlet', true);
    $dtpFromDate = $this->input->post('dtpFromDate', TRUE);
    $dtpToDate   = $this->input->post('dtpToDate', TRUE);
    $today   = date('Y-m-d');
    $get_profit  = $this->accounts_model->balance_sheet_search();

    // $outlet_user        = $CI->Warehouse->get_outlet_user();
    // $cw = $CI->Warehouse->central_warehouse();
    // $outlet_list = $CI->Warehouse->branch_list_product();
    $data['first_outlet'] = '';
    $data['cw'] = '';
    $data['outlet_list'] = '';
    $data['id_out'] = null;
    $data['oResultAsset'] = $get_profit['oResultAsset'];
    $data['oResultLiability']  = $get_profit['oResultLiability'];
    $data['oResultIncome']  = $get_profit['oResultIncome'];
    $data['oResultExpence']  = $get_profit['oResultExpence'];
    $data['dtpFromDate']  = $dtpFromDate;
    $data['dtpToDate']    = $dtpToDate;
    $data['total']    = $get_profit['total'];
    $data['today']    = $today;
    $data['pdf']    = 'assets/data/pdf/Statement of Comprehensive Income till ' . $today . 'pdf';
    $data['title']  = 'Trial Balance Report';

    $content = $this->parser->parse('newaccount/trial_new', $data, true);

    $this->template->full_admin_html_view($content);
  }


  public function vouchar_cash($date)
  {
    $vouchar_view = $this->accounts_model->get_vouchar_view($date);
    $data = array(
      'vouchar_view' => $vouchar_view,
    );

    $data['title'] = display('accounts_form');
    $content = $this->parser->parse('newaccount/vouchar_cash', $data, true);
    $this->template->full_admin_html_view($content);
  }

  public function general_ledger()
  {

    $general_ledger = $this->accounts_model->get_general_ledger();
    $data = array(
      'general_ledger' => $general_ledger,
    );

    $data['title'] = display('general_ledger');
    $content = $this->parser->parse('newaccount/general_ledger', $data, true);
    $this->template->full_admin_html_view($content);
  }

  public function general_led($Headid = NULL)
  {
    $Headid = $this->input->post('Headid', TRUE);
    $HeadName = $this->accounts_model->general_led_get($Headid);
    echo  "<option>Transaction Head</option>";
    $html = "";
    foreach ($HeadName as $data) {
      $html .= "<option value='$data->HeadCode'>$data->HeadName</option>";
    }
    echo $html;
  }
  //      working
  public function voucher_report_serach($vouchar = NULL)
  {
    echo $vouchar = $this->input->post('vouchar', TRUE);

    $voucher_report_serach = $this->accounts_model->voucher_report_serach($vouchar);

    if ($voucher_report_serach->Amount == '') {
      $pay = '0.00';
    } else {
      $pay = $voucher_report_serach->Amount;
    }
    $baseurl = base_url() . 'accounts/vouchar_cash/' . $vouchar;
    $html = "";
    $html .= "<td>
                   <a href=\"$baseurl\">CV-BAC-$vouchar</a>
                 </td>
                 <td>Aggregated Cash Credit Voucher of $vouchar</td>
                 <td>$pay</td>
                 <td align=\"center\">$vouchar</td>";
    echo $html;
  }
  //general ledger working
  public function accounts_report_search()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $cmbGLCode   = $this->input->post('cmbGLCode', TRUE);
    $cmbCode     = $this->input->post('cmbCode', TRUE);
    $dtpFromDate = $this->input->post('dtpFromDate', TRUE);
    $dtpToDate   = $this->input->post('dtpToDate', TRUE);
    $chkIsTransction = $this->input->post('chkIsTransction', TRUE);
    $HeadName    = $this->accounts_model->general_led_report_headname($cmbGLCode);
    $HeadName2   = $this->accounts_model->general_led_report_headname2($cmbGLCode, $cmbCode, $dtpFromDate, $dtpToDate, $chkIsTransction);
    $pre_balance = $this->accounts_model->general_led_report_prebalance($cmbCode, $dtpFromDate);

    $data = array(
      'dtpFromDate' => $dtpFromDate,
      'dtpToDate'   => $dtpToDate,
      'HeadName'    => $HeadName,
      'HeadName2'   => $HeadName2,
      'prebalance'  =>  $pre_balance,
      'chkIsTransction' => $chkIsTransction,

    );
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $data['ledger'] = $this->db->select('*')->from('acc_coa')->where('HeadCode', $cmbCode)->get()->result_array();
    $data['title'] = display('general_ledger_report');

    //echo '<pre>';print_r($HeadName2);exit();
    $content = $this->parser->parse('newaccount/general_ledger_report', $data, true);
    $this->template->full_admin_html_view($content);
  }


  public function cash_book()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['title'] = display('cash_book');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $content = $this->parser->parse('newaccount/cash_book', $data, true);
    $this->template->full_admin_html_view($content);
  }
  public function bank_book()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['title'] = display('bank_book');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $content = $this->parser->parse('newaccount/bank_book', $data, true);
    $this->template->full_admin_html_view($content);
  }
  // Inventory Report
  public function inventory_ledger()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $data['title'] = display('Inventory_ledger');
    $content = $this->parser->parse('newaccount/inventory_ledger', $data, true);
    $this->template->full_admin_html_view($content);
  }
  public function voucher_report()
  {
    $get_cash = $this->accounts_model->get_cash();
    $get_vouchar = $this->accounts_model->get_vouchar();
    $data = array(
      'get_cash' => $get_cash,
      'get_vouchar' => $get_vouchar,
    );
    $data['title']  = display('accounts_form');
    $content = $this->parser->parse('newaccount/coa', $data, true);
    $this->template->full_admin_html_view($content);
  }
  public function coa_print()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $data['title'] = display('accounts_form');
    $content = $this->parser->parse('newaccount/coa_print', $data, true);
    $this->template->full_admin_html_view($content);
  }
  //Profit loss report page
  public function profit_loss_report()
  {
    $data['title'] = display('profit_loss_report');
    $content = $this->parser->parse('newaccount/profit_loss_report', $data, true);
    $this->template->full_admin_html_view($content);
  }
  //Profit loss serch result

  //Cash flow page
  public function cash_flow_report()
  {
    $data['title']  = display('cash_flow_report');
    $content = $this->parser->parse('newaccount/cash_flow_report', $data, true);
    $this->template->full_admin_html_view($content);
  }
  //Cash flow report search
  public function cash_flow_report_search()
  {
    $CI = &get_instance();
    $CI->load->model('Accounts_model');
    $CI->load->model('Invoices');
    $data['company'] = $CI->Invoices->retrieve_company();
    $data['software_info'] = $CI->Accounts_model->software_setting_info();
    $dtpFromDate          = $this->input->post('dtpFromDate', TRUE);
    $dtpToDate            = $this->input->post('dtpToDate', TRUE);
    $data['dtpFromDate']  = $dtpFromDate;
    $data['dtpToDate']    = $dtpToDate;

    // PDF Generator
    $this->load->library('pdfgenerator');
    $dompdf = new DOMPDF();
    $page = $this->load->view('newaccount/cash_flow_report_search_pdf', $data, true);
    $dompdf->load_html($page);
    $dompdf->render();
    $output = $dompdf->output();
    file_put_contents('assets/data/pdf/Cash Flow Statement ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf', $output);

    $data['pdf']    = 'assets/data/pdf/Cash Flow Statement ' . $dtpFromDate . ' To ' . $dtpToDate . '.pdf';
    $data['title']  = display('cash_flow_report');
    $content = $this->parser->parse('newaccount/cash_flow_report_search', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Supplier payment information
  public function supplier_payment()
  {
    $get_supplier = $this->accounts_model->get_supplier();
    $bank_list   = $this->Web_settings->bank_list();
    $data = array(
      'supplier_list' => $get_supplier,
      'bank_list'     => $bank_list,
    );
    $data['voucher_no'] = $this->accounts_model->Spayment();
    $data['title']  = display('supplier_payment_form');
    $content = $this->parser->parse('newaccount/supplier_payment_form', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //supplier payment submit
  public function create_supplier_payment()
  {
    $this->form_validation->set_rules('txtCode', display('txtCode'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->supplier_payment_insert()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/supplier_payment/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/supplier_payment");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/supplier_payment");
    }
  }
  public function supplier_paymentreceipt($supplier_id, $voucher_no, $coaid)
  {
    $this->load->model('Purchases');
    $this->load->model('Web_settings');
    $data['supplier_info'] = $this->accounts_model->supplierinfo($supplier_id);
    $data['payment_info']  = $this->accounts_model->supplierpaymentinfo($voucher_no, $coaid);
    $currency_details      = $this->Web_settings->retrieve_setting_editdata();
    $company_info          = $this->Purchases->retrieve_company();
    $data['company_info']  = $company_info;
    $data['currency']      = $currency_details[0]['currency'];
    $data['position']      = $currency_details[0]['currency_position'];
    $data['title']         = display('supplier_payment_form');
    $content = $this->parser->parse('newaccount/supplier_payment_receipt', $data, true);
    $this->template->full_admin_html_view($content);
  }

  //Customer Receive
  public function customer_receive()
  {
    $get_customer = $this->accounts_model->get_customer();
    $bank_list        = $this->Web_settings->bank_list();
    $data = array(
      'customer_list' => $get_customer,
      'bank_list'     => $bank_list,
    );
    $data['voucher_no'] = $this->accounts_model->Creceive();
    $data['title']      = display('customer_receive_form');
    $content = $this->parser->parse('newaccount/customer_receive_form', $data, true);
    $this->template->full_admin_html_view($content);
  }
  public function customer_headcode($id)
  {
    $customer_info = $this->db->select('customer_name')->from('customer_information')->where('customer_id', $id)->get()->row();
    $head_name = $id . '-' . $customer_info->customer_name;
    $customerhcode = $this->db->select('*')
      ->from('acc_coa')
      ->where('HeadName', $head_name)
      ->get()
      ->row();
    $code = $customerhcode->HeadCode;
    echo json_encode($code);
  }

  public function create_customer_receive()
  {
    $this->form_validation->set_rules('txtCode', display('txtCode'), 'max_length[100]');
    if ($this->form_validation->run()) {
      if ($this->accounts_model->customer_receive_insert()) {
        $this->session->set_flashdata('message', display('save_successfully'));
        redirect('accounts/customer_receive/');
      } else {
        $this->session->set_flashdata('error_message',  display('please_try_again'));
      }
      redirect("accounts/customer_receive");
    } else {
      $this->session->set_flashdata('error_message',  display('please_try_again'));
      redirect("accounts/customer_receive");
    }
  }


  public function customer_receipt($customer_id, $voucher_no, $coaid)
  {
    $this->load->model('Purchases');
    $this->load->model('Web_settings');
    $data['customer_info'] = $this->accounts_model->custoinfo($customer_id);
    $data['payment_info']  = $this->accounts_model->customerreceiptinfo($voucher_no, $coaid);
    $currency_details      = $this->Web_settings->retrieve_setting_editdata();
    $company_info          = $this->Purchases->retrieve_company();
    $data['company_info']  = $company_info;
    $data['currency']      = $currency_details[0]['currency'];
    $data['position']      = $currency_details[0]['currency_position'];
    $data['title']         = display('supplier_payment_form');
    $content = $this->parser->parse('newaccount/customer_payment_receipt', $data, true);
    $this->template->full_admin_html_view($content);
  }

    public function profit_loss_report_search()
    {
        $CI = &get_instance();
        $CI->load->model('Reports');
        $CI->load->model('Rqsn');


        $inventory = $this->Reports->getInventoryList();

//        echo '<pre>';print_r($inventory);exit();

        $cgs=array_sum(array_column($inventory,'cgs'));

        $dtpFromDate = $this->input->post('dtpFromDate', TRUE);
        $dtpToDate   = $this->input->post('dtpToDate', TRUE);
        $today   = date('Y-m-d');

        $get_profit  = $this->accounts_model->profit_loss_serach();



        $clos_inv = $this->Reports->valuation_list();

        $closing_inventory=array_sum(array_column($clos_inv['aaData'],'stock_value'));






        $data['oResultAsset'] = $get_profit['oResultAsset'];
        $data['oResultLiability']  = $get_profit['oResultLiability'];
        $data['product_sale']  = $get_profit['product_sale'];
        $data['opening_inventory']  = $get_profit['opening_inventory'];
        $data['product_purchase']  = $get_profit['product_purchase'];
        $data['abc']  = $get_profit['product_purchase'] + $get_profit['opening_inventory'] + $get_profit['direct_expense'];
        $data['closing_inventory']  = $closing_inventory['closing_inventory'];
        $data['service_income']  = $get_profit['service_income'];
        $data['direct_expense']  = $get_profit['direct_expense'];
        $data['op_expense']  = $get_profit['op_expense'];
        $data['indirect_expense']  = $get_profit['indirect_expense'];
        $data['indirect_income']  = $get_profit['indirect_income'];
        $data['sale_return']  = $get_profit['sale_return'];
        $data['expense']  = $get_profit['expense'];
        $data['o_expense']  = $get_profit['o_expense'];
        $data['indirect_expense_c']  = $get_profit['indirect_expense_c'];
        $data['indirect_income_c']  = $get_profit['indirect_income_c'];
        $data['goods_sold']  = $get_profit['opening_inventory'] + $get_profit['product_purchase'] + $data['closing_inventory'];
//        $data['total_i']  = ($get_profit['opening_inventory'] + $get_profit['product_purchase'] + $data['direct_expense']) - $data['closing_inventory'];
        $data['total_i']  =$cgs;

        $data['total_sale']  = $get_profit['product_sale'];
        $data['gross_profit']  =    $data['total_sale'] -  $data['total_i'];



        $data['right_total']  =    $data['gross_profit'] +  $data['indirect_income'];
        $data['net_profit']  =    ($data['gross_profit'] - $data['indirect_expense']) + $get_profit['indirect_income'];
        $data['left_total']  =    $data['indirect_expense'] +  $data['net_profit'];
        $data['dtpFromDate']  = $dtpFromDate;
        $data['dtpToDate']    = $dtpToDate;
        $data['today']    = $today;
        $data['pdf']    = 'assets/data/pdf/Statement of Comprehensive Income Till ' . $today . '.pdf';
        $data['title']  = display('profit_loss_report');
       //  echo '<pre>';print_r( $data['o_expense'] );exit();

        $content = $this->parser->parse('newaccount/profit_loss', $data, true);
        $this->template->full_admin_html_view($content);
    }

    public function balance_sheet_report_search_new()
    {
        $CI = &get_instance();
        $CI->load->model('Reports');
        $CI->load->model('Rqsn');
        $dtpFromDate = $this->input->post('dtpFromDate', TRUE);
        $dtpToDate   = $this->input->post('dtpToDate', TRUE);
        $today   = date('Y-m-d');

       $closing_inventory = $this->Reports->valuation_list();
       // exit();
       $stock_value=array_sum(array_column($closing_inventory['aaData'],'stock_value'));

        //  echo '<pre>';print_r($stock_value);exit();
        // $CI->load->model('Warehouse');
        $vno=  date('Ymdhs');
        $createby = $this->session->userdata('user_id');
        $createdate = date('Y-m-d H:i:s');
        $closing_inventory_value = array(
            'VNo'            =>  $vno,
            'Vtype'          =>  'INV',
            'VDate'          =>  $createdate,
            'COAID'          =>  10206,
            'Narration'      =>  'Closing Inventory Value',
            'Debit'          =>  $stock_value,
            'Credit'         =>  0,
            'IsPosted'       => 1,
            'CreateBy'       => $createby,
            'CreateDate'     => $createdate,
            'IsAppove'       => 1
        );

        $rows=$this->db->select('*')->from('acc_transaction')->where('COAID',10206)->get()->num_rows();

        if ($rows > 0){
            $this->db->where('COAID',10206);
            $this->db->set('Debit',$stock_value);
            $this->db->update('acc_transaction');
        }else{
            $this->db->insert('acc_transaction',$closing_inventory_value);

        }
//
       $get_profit  = $this->accounts_model->balance_sheet();



        //$postData = $this->input->post();
       // $closing_inventory = $this->Reports->getCheckList();


        $data['oResultAsset'] = $get_profit['oResultAsset'];
        $data['oResultLiability']  = $get_profit['oResultLiability'];
        $data['product_sale']  = $get_profit['product_sale'];
        $data['opening_inventory']  = $get_profit['opening_inventory'];
        $data['product_purchase']  = $get_profit['product_purchase'];
        $data['closing_inventory']  =$stock_value;
        $data['service_income']  = $get_profit['service_income'];
        $data['direct_expense']  = $get_profit['direct_expense'];
        $data['indirect_expense']  = $get_profit['indirect_expense'];
        $data['indirect_income']  = $get_profit['indirect_income'];
        $data['sale_return']  = $get_profit['sale_return'];
        $data['expense']  = $get_profit['expense'];
        $data['indirect_expense_c']  = $get_profit['indirect_expense_c'];
        $data['indirect_income_c']  = $get_profit['indirect_income_c'];
        $data['goods_sold']  = $get_profit['opening_inventory'] + $get_profit['product_purchase'] + $data['closing_inventory'];
        $data['total_i']  = ($get_profit['opening_inventory'] + $get_profit['product_purchase'] + $data['direct_expense']) - $data['closing_inventory'];

        $data['total_sale']  = $get_profit['product_sale'] - $get_profit['sale_return'] + $get_profit['service_income'];
        $data['gross_profit']  =    $data['total_sale'] -  $data['total_i'];


        $data['capital']  =    $get_profit['capital'];
        $data['inventory']  =    $get_profit['inventory'];
        $data['current_liabilities']  =    $get_profit['current_liabilities'];
        $data['acc_pay_c']  =    $get_profit['acc_pay_c'];
        $data['non_current_liabilities']  =    $get_profit['non_current_liabilities'];
        $data['non_current_liabilities_c']  =    $get_profit['non_current_liabilities_c'];
        $data['fixed_assets']  =    $get_profit['fixed_assets'];
        $data['equities']  =    $get_profit['equities'];
        $data['other_current']  =    $get_profit['other_current'];
        $data['fixed_assets_c']  =    $get_profit['fixed_assets_c'];
        $data['equities_c']  =    $get_profit['equities_c'];
        $data['current_assets']  =    $get_profit['current_assets'] + $data['closing_inventory'];
        $data['current_assets_c']  =    $get_profit['current_assets_c'];
        $data['other_current_C']  =    $get_profit['other_current_C'];
        $data['acc_rcv']  =    $get_profit['acc_rcv'];
        $data['acc_pay']  =    $get_profit['acc_pay'];
        $data['emp_led']  =    $get_profit['emp_led'];

        $data['emp_led_c']  =    $get_profit['emp_led_c'];
        $data['cash_eq']  =    $get_profit['cash_eq'];
        $data['cash_hand']  =    $get_profit['cash_hand'];
        $data['cash_bkash']  =    $get_profit['cash_bkash'];

        $data['cash_nagad']  =    $get_profit['cash_nagad'];
        $data['cash_bank']  =    $get_profit['cash_bank'];
        $data['emp_led_c']  =    $get_profit['emp_led_c'];
        $data['acc_rcv_c']  =    $get_profit['acc_rcv_c'];
        $data['cash_eq_c']  =    $get_profit['cash_eq_c'];
        $data['cash_hand_c']  =    $get_profit['cash_hand_c'];
        $data['cash_bkash_c']  =    $get_profit['cash_bkash_c'];
        $data['cash_nagad_c']  =    $get_profit['cash_nagad_c'];
        $data['cash_bank_c']  =    $get_profit['cash_bank_c'];
        $data['right_total']  =    $data['current_assets'] +  $get_profit['fixed_assets'];
        $data['net_profit']  =    ($data['gross_profit'] - $data['indirect_expense']) + $get_profit['indirect_income'];
        $data['left_total']  =    $get_profit['capital'] +  $get_profit['current_liabilities'] + $get_profit['non_current_liabilities'] + $data['net_profit'];
        $data['dtpFromDate']  = $dtpFromDate;
        $data['dtpToDate']    = $dtpToDate;
        $data['today']    = $today;
        $data['pdf']    = 'assets/data/pdf/Statement of Comprehensive Income Till ' . $today . '.pdf';
        $data['title']  = 'Balance Sheet Report';

        //  echo '<pre>';print_r( $data['emp_led_c']);
        // echo '<pre>';print_r( $data['cash_hand']);exit();
         //   echo '<pre>';print_r( $arr_ex_o);exit();

        $content = $this->parser->parse('newaccount/balance_sheet_new', $data, true);
        $this->template->full_admin_html_view($content);
    }
}
