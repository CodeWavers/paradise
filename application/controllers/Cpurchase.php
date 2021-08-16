
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cpurchase extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
    }



    public function index() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_add_form();
        $this->template->full_admin_html_view($content);
    }

    public function purchase_order() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_order_add_form();
        $this->template->full_admin_html_view($content);
    }

    public function update_po() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->update_po();
        $this->session->set_userdata(array('message' =>'Succesfully Approved'));

        redirect(base_url('Cpurchase/purchase_order_approve'));
    }

    public function product_receive() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->product_receive_add_form();
        $this->template->full_admin_html_view($content);
    }

    //Manage purchase
    public function manage_purchase() {
        $this->load->library('lpurchase');
        $content = $this->lpurchase->purchase_list();
        $this->template->full_admin_html_view($content);
    }

   public function remove()
    {

        $row_id = $_POST["row_id"];
//        $data = array(
//            'rowid'  => $row_id,
//            'qty'  => 0
//        );
        $this->db->where('product_id', $row_id);
        $this->db->delete('purchase_order_cart');
        echo $this->PO_live_data();
    }

    public function clear()
    {
        $this->load->library("cart");
        $this->db->empty_table('purchase_order_cart');
        echo $this->PO_live_data();
    }





        public function CheckPurchaseList(){
        // GET data
        $this->load->model('Purchases');
        $postData = $this->input->post();
        $data = $this->Purchases->getPurchaseList($postData);
        echo json_encode($data);
    }
    // search purchase by supplier
    public function purchase_search() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $supplier_id = $this->input->get('supplier_id');
        #
        #pagination starts
        #
        $config["base_url"] = base_url('Cpurchase/purchase_search/');
        $config["total_rows"] = $this->Purchases->count_purchase_seach($supplier_id);
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;
        $config['suffix'] = '?' . http_build_query($_GET);
        $config['first_url'] = $config["base_url"] . $config['suffix'];
        /* This Application Must Be Used With BootStrap 3 * */
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $links = $this->pagination->create_links();
        #
        #pagination ends
        #
        $content = $this->lpurchase->purchase_search_supplier($supplier_id, $links, $config["per_page"], $page);
        $this->template->full_admin_html_view($content);
    }

//purchase list by invoice no
    public function purchase_info_id() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $invoice_no = $this->input->post('invoice_no',TRUE);
        $content = $this->lpurchase->purchase_list_invoice_no($invoice_no);
        $this->template->full_admin_html_view($content);
    }

    //Insert purchase
    public function insert_purchase() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->purchase_entry();
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['add-purchase'])) {
            redirect(base_url('Cpurchase/manage_purchase'));
            exit;
        } elseif (isset($_POST['add-purchase-another'])) {
            redirect(base_url('Cpurchase'));
            exit;
        }
    }

    public function insert_purchase_new() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['save_as_draft'])) {
            $CI->Purchases->PO_cart_update();
            redirect(base_url('Cpurchase'));
            exit;
        } elseif (isset($_POST['finalize'])) {
            $CI->Purchases->purchase_entry_new();
            redirect(base_url('Cpurchase'));
            exit;
        }
    }

    public function insert_po() {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->po_entry();
        $this->session->set_userdata(array('message' => display('successfully_added')));
        if (isset($_POST['add-purchase'])) {
            redirect(base_url('Cpurchase/manage_purchase'));
            exit;
        } elseif (isset($_POST['add-purchase-another'])) {
            redirect(base_url('Cpurchase/purchase_order'));
            exit;
        }
    }

    //purchase Update Form
    public function purchase_update_form($purchase_id) {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_edit_data($purchase_id);
        $this->template->full_admin_html_view($content);
    }

    // purchase Update
    public function purchase_update() {

        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->model('Purchases');
        $CI->Purchases->update_purchase();
        $this->session->set_userdata(array('message' => display('successfully_updated')));
        redirect(base_url('Cpurchase/manage_purchase'));
        exit;
    }

    //Purchase item by search
    public function purchase_item_by_search() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $content = $CI->lpurchase->purchase_by_search($supplier_id);
        $this->template->full_admin_html_view($content);
    }

    //Product search by supplier id
    public function product_search_by_supplier() {


        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Suppliers');
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $product_name = $this->input->post('product_name',TRUE);
        $product_info = $CI->Suppliers->product_search_item($supplier_id, $product_name);
        if(!empty($product_info)){
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array('label'=>$value['product_name'].'('.$value['product_model'].')','value'=>$value['product_id']);
            }
        }else{
            $json_product[] = 'No Product Found';
        }
        echo json_encode($json_product);
    }


    public function po_search_by_supplier() {


        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Suppliers');
        $supplier_id = $this->input->post('supplier_id',TRUE);
        $product_name = $this->input->post('product_name',TRUE);
        $product_info = $CI->Suppliers->po_search_item($supplier_id, $product_name);
      //  echo '<pre>';print_r($product_info);
        if(!empty($product_info)){
        $list[''] = '';
        foreach ($product_info as $value) {
            $json_product[] = array('label'=>$value['rqsn_detail_id'],'value'=>$value['product_id']);
        }
    }else{
        $json_product[] = 'No Purchase Order Found';
        }
        echo json_encode($json_product);
    }



    public function retrieve_po_data() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Rqsn');
        $product_id  = $this->input->post('product_id',TRUE);
        $supplier_id = $this->input->post('supplier_id',TRUE);

        $product_info = $CI->Rqsn->get_po_details($product_id, $supplier_id);

        echo json_encode($product_info);
    }


    //Retrive right now inserted data to cretae html
    public function purchase_details_data($purchase_id) {
        $CI = & get_instance();
        $CI->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $content = $CI->lpurchase->purchase_details_data($purchase_id);
        $this->template->full_admin_html_view($content);
    }

    public function delete_purchase($purchase_id = null) {
        $this->load->model('Purchases');
        if ($this->Purchases->purchase_delete($purchase_id)) {
            #set success message
            $this->session->set_flashdata('message', display('delete_successfully'));
        } else {
            #set exception message
            $this->session->set_flashdata('exception', display('please_try_again'));
        }
        redirect(base_url('Cpurchase/manage_purchase'));
    }

    // purchase info date to date
    public function manage_purchase_date_to_date() {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->library('lpurchase');
        $CI->load->model('Purchases');
        $start = $this->input->post('from_date',TRUE);
        $end = $this->input->post('to_date',TRUE);

        $content = $this->lpurchase->purchase_list_date_to_date($start, $end);
        $this->template->full_admin_html_view($content);
    }
//purchase pdf download
      public function purchase_downloadpdf(){
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->model('Invoices');
        $CI->load->library('pdfgenerator');
        $purchase_list = $CI->Purchases->pdf_purchase_list();
        if (!empty($purchase_list)) {
            $i = 0;
            if (!empty($purchase_list)) {
                foreach ($purchase_list as $k => $v) {
                    $i++;
                    $purchase_list[$k]['sl'] = $i + $CI->uri->segment(3);
                }
            }
        }
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Invoices->retrieve_company();
        $data = array(
            'title'         => display('manage_purchase'),
            'purchase_list' => $purchase_list,
            'currency'      => $currency_details[0]['currency'],
            'logo'          => $currency_details[0]['logo'],
            'position'      => $currency_details[0]['currency_position'],
            'company_info'  => $company_info
        );
            $this->load->helper('download');
            $content = $this->parser->parse('purchase/purchase_list_pdf', $data, true);
            $time = date('Ymdhi');
            $dompdf = new DOMPDF();
            $dompdf->load_html($content);
            $dompdf->render();
            $output = $dompdf->output();
            file_put_contents('assets/data/pdf/'.'purchase'.$time.'.pdf', $output);
            $file_path = 'assets/data/pdf/'.'purchase'.$time.'.pdf';
           $file_name = 'purchase'.$time.'.pdf';
            force_download(FCPATH.'assets/data/pdf/'.$file_name, null);
    }

    public function retrieve_product_cat_subcat_wise()
    {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Products');
        $product_name = $this->input->post('product_name',TRUE);
        $cat_id = $this->input->post('cat_id',TRUE);
        $subcat_id = $this->input->post('subcat_id',TRUE);
        $product_info = $CI->Products->product_filter_category_wise2($product_name,$cat_id, $subcat_id, 15);
        if(!empty($product_info)){
            $list[''] = '';
            foreach ($product_info as $value) {
                $json_product[] = array('label'=>$value['product_name'],'value'=>$value['product_id']);
            }
        }else{
            $json_product[] = 'No Product Found';
        }
        echo json_encode($json_product);
    }

    public function get_supplier_price()
    {
        $CI = & get_instance();
        $this->auth->check_admin_auth();
        $CI->load->model('Suppliers');

        $supplier_id = $this->input->post('supplier_id', TRUE);
        $product_id = $this->input->post('product_id', TRUE);

        $price = $CI->Suppliers->product_suppliers($supplier_id, $product_id);

        $data['price'] = $price[0]['supplier_price'];
        $data['currency'] = $price[0]['currency'];
        // echo '<pre>'; print_r($data); exit();
        echo json_encode($data);

        }

        public function purchase_order_approve()
        {
            $CI = & get_instance();
            $CI->auth->check_admin_auth();
            $CI->load->library('lpurchase');
            $content = $CI->lpurchase->purchase_order_approve_form();
            $this->template->full_admin_html_view($content);
        }

        public function edit_purchase_order($PO_No,$supplier_id)
        {
            $CI = & get_instance();
            $CI->auth->check_admin_auth();
            $CI->load->library('lpurchase');
            $content = $CI->lpurchase->purchase_order_edit_form($PO_No,$supplier_id);
            $this->template->full_admin_html_view($content);
        }

        public function purchase_list()
        {
            $CI = & get_instance();
            $CI->auth->check_admin_auth();
            $CI->load->library('lpurchase');
            $content = $CI->lpurchase->purchase_list_from_rqsn();
            $this->template->full_admin_html_view($content);
        }

        public function add_to_draft()
        {
            $data = array(
                "product_id"  => $_POST["product_id"],
                "product_name"  => $_POST["product_name"],
                "category"  => $_POST["category_name"],
                "subcat"  => $_POST["subcat"],
                "parts"  => $_POST["parts"],
                "sku"  => $_POST["sku"],
                "brand"  => $_POST["brand"],
                "model"  => $_POST["model"],
                "qty"  => $_POST["quantity"],
            );
            $this->db->insert('purchase_order_cart',$data);

            $rq_d_id = $_POST["rq_d_id"];
            $product_id = $_POST["product_id"];

            // $data2 = array(
            //     'purchase_status' => 2
            // );
            $this->db->where('product_id',$product_id);
            $this->db->set('purchase_status',2);
            $this->db->update('rqsn_details');

//            $sq = "UPDATE rqsn_details
//            SET purchase_status = 2
//            WHERE rqsn_detail_id = ".$product_id.";";
//
//            $this->db->query($sq);



            json_encode($data);
        }

        function load()
        {


            echo $this->PO_live_data();
        }

        public function PO_live_data()
        {
            $this->load->model("Purchases");
            $this->load->model("Products");
            $this->load->model("Suppliers");
         //   $product_id=$_POST["product_id"];
            $cart_list = $this->Purchases->purchase_cart_data();

            $output = '';
            $output .= '

            <div class="table-responsive">
            <div align="right">
            <button type="button" id="clear_cart" class="btn btn-warning">Clear Purchase Order</button>
            </div>
            <br />
            <table class="table table-bordered table-hover" id="purchaseTable">
                <thead>
                     <tr>
                        <th class="text-center" width="4%">SN</th>
                        <th class="text-center" width="8%">Product Name</th>
                        <th class="text-center" width="8%">Parts No.</th>
                        <th class="text-center" width="8%">SKU</th>
                        <th class="text-center">Stock</th>
                        <th class="text-center">Proposed Quantity</th>
                        <th class="text-center">Order Quantity</th>
                        <th class="text-center">Supplier Name</th>
                        <th class="text-center" width="8%">Warranty</th>
                        <th class="text-center" >Currency</th>
                        <th class="text-center" >Currency Value</th>
                        <th class="text-center">Price</th>
              
                        <th class="text-center">Discount (%)</th>
                        <th class="text-center">Total(BDT)</th>

                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody id="addPurchaseItem">

                        ';


            $count = 0;
            foreach($cart_list as $items)
            {

                $tot = "";

                if ($items['total']){
                    $tot = $items['total'];
                }


                $product_id = $items['product_id'];
                $product_info = $this->Products->retrieve_product_full_data($product_id)[0];
                $supplier_list = $this->Products->supplier_product_editdata($product_id);
                $count++;
                $output .= '
                        <tr>

                        <td class="wt"> '.$count.'</td>



                        <td class="span3 supplier">
                            <span>'.$items['product_name'].'</span>
                            <input type="hidden" name="product_id[]" id="product_id_'.$count.'" value="'.$items['product_id'].'">
                            <input type="hidden" class="sl" value="'.$count.'">
                        </td>

                            <td class="wt">'.$items['parts'].'</td>

                            <td class="wt">'.$items['sku'].'</td>

                            <td class="wt">
                                <input type="text"  id="available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                            </td>

                            <td class="test">
                                <input type="text" name="proposed_quantity[]" required="" id="proposed_quantity_1" class="form-control product_rate_1 text-right" value="'.$items['qty'].'" min="0" tabindex="7" readonly/>
                            </td>

                            <td class="test">
                                <input type="text" name="order_quantity[]" required=""  id="order_quantity_'.$count.'" class="form-control product_rate_1 text-right" onkeyup="calculate_store('.$count.');" onchange="calculate_store('.$count.');" placeholder="1234" value="'.($items['order_qty'] ? $items['order_qty'] : "1").'" min="0" tabindex="7"/>
                            </td>

                            <td>
                                <select style="width: 100px" name="supplier_name[]" id="supplier_drop_'.$count.'" class="form-control text-center"  onchange="get_price('.$count.')" >
                                <option value="">Select Option</option>
                                ';

                foreach ($supplier_list as $supp) {
                    // $output .= '<option value='.$supp['supplier_id'].'>'.$supp['supplier_name'].'</option>';
                   if($items['supplier_id']){
                       if($items['supplier_id'] == $supp['supplier_id']){
                           $output .= '<option selected value='.$items['supplier_id'].'>'.$this->Suppliers->supplier_search($items['supplier_id'])[0]['supplier_name'].'<option>';
                       }
                       else{
                        $output .= '<option value='.$supp['supplier_id'].'>'.$supp['supplier_name'].'</option>';
                        }
                   }else{
                        $output .= '<option value='.$supp['supplier_id'].'>'.$supp['supplier_name'].'</option>';
                   }
                }


                $output .= '</select>
                            </td>

                            <td >
                            <input type="date" class="form-control" style="width: 110px" id="warrenty_date_'.$count.'" name="warrenty_date[]"  required/>
                        </td>
                         <td >
                            <input type="text" class="form-control"  id="currency_'.$count.'" name="currency[]"  readonly/>
                        </td>
                         <td >
                            <input type="text" class="form-control" id="currency_value_'.$count.'" name="currency_value[]"  onkeyup="calculate_store('.$count.');" onchange="calculate_store('.$count.');"required/>
                        </td>
                        




                                <td class="text-right">
                                    <input type="hidden" style="width: 100px" name="bdt_price[]" id="bdt_price_'.$count.'" onkeyup="calculate_store('.$count.');" onchange="calculate_store('.$count.');" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value="0.00"  tabindex="6"/>
                                    <input type="text" style="width: 100px" name="price[]" id="product_rate_'.$count.'" onkeyup="calculate_store('.$count.');" onchange="calculate_store('.$count.');" required="" min="0" class="form-control text-right store_cal_1"  placeholder="0.00" value="'.($items['rate'] ? $items['rate'] : "").'"  tabindex="6"/>
                                </td>
                                
                               


                                <td class="text-right">
                                    <input class="form-control discount text-right" onkeyup="calculate_store('.$count.');" onchange="calculate_store('.$count.');" type="text" name="discount[]" id="discount_'.$count.'" value="'.($items['discount'] ? $items['discount'] : "00").'"/>

                                </td>

                                <td class="text-left">
                                    <input type="text" style="width: 110px" class="form-control row_total" name="row_total[]" value="'.$tot.'" id = "row_total_'.$count.'" class="row_total" readonly>
                                </td>

                                <td>
                                    <button  class="remove_inventory btn btn-danger text-right" type="button"  id="'.$items["product_id"].'" tabindex="8"><i class="fa fa-close"></i></button>
                                </td>
                        </tr>
                        ';
            }
            $output .= '

            </tbody>
            <tfoot>
                <tr>
                    <td colspan="13" class="text-right"><b>Grand Total:</b></td>
                    <td>
                    <input class="form-control" id="grand_total" readonly/>
                </td>
                </tr>
                
            </tfoot>
        </table>
                            ';

            if($count == 0)
            {
                $output = '<h3 align="center">Purchase list is empty</h3>';
            }
            return $output;
        }



}
