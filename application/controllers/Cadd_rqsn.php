<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cadd_rqsn extends CI_Controller
{

    public $menu;

    function __construct()
    {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lrqsn');
        $this->load->library('session');
        $this->load->model('Rqsn');
        $this->auth->check_admin_auth();
    }

    function index()
    {
        $this->load->model("Rqsn");
        $data["product"] = $this->Rqsn->product_fetch_all();
        $this->load->view("product/add_rqsn", $data);
    }

    function add()
    {
        //     $this->load->library("cart");
        //  $rqsn_id = $this->db->select('id')->order_by('id','desc')->limit(1)->get('rqsn_details')->row('id');
        $rqsn_id = $this->db->select("*")->limit(1)->order_by('id', "DESC")->get("rqsn")->row();



        $p_id = $this->input->post('all_pid', TRUE);

        $qty = $this->input->post('qty', TRUE);
        $each_pr = explode(",", $p_id);
        $each_qty = explode(",", $qty);


        // echo '<pre>'; print_r($each_pr);
        //  print_r($each_qty); exit();

        // $i = 0;

        for ($i = 0; $i < count($each_pr); $i++) {
            $cart_details = $this->Rqsn->cart_product_details($each_pr[$i]);
            if (empty($cart_details['qty'])) {
                $this->db->where('product_id', $each_pr[$i]);
                $this->db->set('qty', $each_qty[$i]);
                $this->db->update('rqsn_cart');
            }
        }

        $product_id = $_POST["product_id"];

        //  echo '<pre>'; print_r($this->Rqsn->cart_product_details($product_id)); exit();

        if (!($this->Rqsn->cart_product_details($product_id))) {

            // print_r('yes'); exit();

            $cart_product = $this->db->select('*')->from('product_information a')
                ->join('product_category b', 'b.category_id=a.category_id')
                ->join('product_subcat e', 'e.sub_cat_id=a.sub_cat_id', 'left')
                ->join('product_brand c', 'c.brand_id=a.brand_id', 'left')
                ->join('product_model d', 'd.model_id=a.product_model', 'left')
                ->where('a.product_id', $product_id)->get()->row();
            $data = array(
                "product_id"  => $_POST["product_id"],
                "product_name"  => $cart_product->product_name,
                "category"  => $cart_product->category_name,
                "subcat"  => $cart_product->subcat_name,
                "parts"  => $cart_product->parts,
                "sku"  => $cart_product->sku,
                "brand"  => $cart_product->brand_name,
                "model"  => $cart_product->model_name,
                //   "qty"  => $cart_product->product_name,
                //            "rqsn_id"  => $rqsn_id->rqsn_no,

            );

            $this->db->insert('rqsn_cart', $data);
        }


        // json_encode($data);
    }

    function load()
    {
        echo $this->view();
    }

    function remove()
    {
        $this->load->library("cart");
        $row_id = $_POST["row_id"];
        //        $data = array(
        //            'rowid'  => $row_id,
        //            'qty'  => 0
        //        );
        $this->db->where('product_id', $row_id);
        $this->db->delete('rqsn_cart');
        echo $this->view();
    }

    function clear()
    {
        $this->load->library("cart");
        $this->db->empty_table('rqsn_cart');
        echo $this->view();
    }

    function view()
    {
        $this->load->library("cart");
        $this->load->model("Rqsn");
        //   $product_id=$_POST["product_id"];
        $cart_list = $this->Rqsn->cart_list();
        $output = '';
        $output .= '

  <div class="table-responsive">
   <div align="right">
    <button type="button" id="clear_cart" class="btn btn-warning">Clear Requisition</button>
   </div>
   <br />
   <table class="table table-bordered table-hover">
    <tr>
     <th width="5%">SL No</th>
     <th width="15%">Category</th>
     <th width="15%">Sub-category</th>
     <th width="20%">Product Name</th>
     <th width="8%">Parts No</th>
     <th width="7%">SKU</th>
     <th width="10%">Brand</th>
     <th width="10%">Model</th>
     <th width="5%">Required Quantity</th>
     <th width="5%">Action</th>
    </tr>

  ';


        $count = 0;
        foreach ($cart_list as $items) {
            $total_quantity = $this->db->select('sum(qty) as total_qty')->from('rqsn_cart')->where('product_id', $items["product_id"])->get()->row();
            $count++;
            $output .= '
   <tr>
    <td><input   type="text" class="form-control" value="' . $count . '" readonly></td>
    <td><input name="" type="text" class="form-control" value="' . $items["category"] . '" readonly></td>
    <td><input name="" type="text" class="form-control" value="' . $items["subcat"] . '" readonly></td>
    <td>
    <input name="" type="text" class="form-control" value="' . $items["product_name"] . '"  readonly>
    <input name="product_id[]" type="hidden" class="form-control" value="' . $items["product_id"] . '"  readonly>
    <input name="rqsn_id[]" type="hidden" class="form-control" value="' . $items["rqsn_id"] . '"  readonly>
    </td>
    <td><input name="" type="text" class="form-control" value="' . $items["parts"] . '" readonly></td>
    <td><input name="" type="text" class="form-control" value="' . $items["sku"] . '" readonly></td>
    <td><input name="" type="text" class="form-control" value="' . $items["brand"] . '" readonly></td>
    <td><input name="" type="text" class="form-control" value="' . $items["model"] . '" readonly></td>
    <td><input name="product_quantity[]" type="text" class="form-control" value="' .($total_quantity->total_qty ? $total_quantity->total_qty : "0") . '" ></td>
    <td><button type="button" name="remove" class="btn btn-danger btn-xs remove_inventory" id="' . $items["product_id"] . '">Remove</button></td>
   </tr>
   ';
        }
        $output .= '

  </table>

  </div>
  ';

        if ($count == 0) {
            $output = '<h3 align="center">Requisition  is Empty</h3>';
        }
        return $output;
    }
}
