<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cadd_rqsn extends CI_Controller {

    public $menu;

    function __construct() {
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
        $rqsn_id = $this->db->select("*")->limit(1)->order_by('id',"DESC")->get("rqsn")->row();
        $product_id=$_POST["product_id"];
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
            "rqsn_id"  => $rqsn_id->rqsn_no,

        );

        $cart_product = $this->db->select('*')->from('rqsn_cart')->where('product_id',$product_id)->get()->result();



//        $total_qty=($cart_product->qty)+$_POST["quantity"];
//        if($check_product > 0){
//
//            $this->db->set('qty',$total_qty );
//            $this->db->where('product_id',$product_id);
//            $this->db->update('rqsn_cart');
//
//        }else{
//            $this->db->insert('rqsn_cart',$data);
//        }
//        $cart_list = $this->Rqsn->cart_list();



      //  echo '<pre>';print_r($rqsn_id);exit();
      //return rowid
       // echo $rqsn_id->rqsn_id;
        $this->db->insert('rqsn_cart',$data);
        json_encode($data);
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
        foreach($cart_list as $items)
        {
            $total_quantity = $this->db->select('sum(qty) as total_qty')->from('rqsn_cart')->where('product_id',$items["product_id"])->get()->row();
            $count++;
            $output .= '
   <tr>
    <td><input   type="text" class="form-control" value="'.$count.'" readonly></td>
    <td><input name="" type="text" class="form-control" value="'.$items["category"].'" readonly></td>
    <td><input name="" type="text" class="form-control" value="'.$items["subcat"].'" readonly></td>
    <td>
    <input name="" type="text" class="form-control" value="'.$items["product_name"].'"  readonly>
    <input name="product_id[]" type="hidden" class="form-control" value="'.$items["product_id"].'"  readonly>
    <input name="rqsn_id[]" type="hidden" class="form-control" value="'.$items["rqsn_id"].'"  readonly>
    </td>
    <td><input name="" type="text" class="form-control" value="'.$items["parts"].'" readonly></td>
    <td><input name="" type="text" class="form-control" value="'.$items["sku"].'" readonly></td>
    <td><input name="" type="text" class="form-control" value="'.$items["brand"].'" readonly></td>
    <td><input name="" type="text" class="form-control" value="'.$items["model"].'" readonly></td>
    <td><input name="product_quantity[]" type="text" class="form-control" value="'.$total_quantity->total_qty.'" ></td>
    <td><button type="button" name="remove" class="btn btn-danger btn-xs remove_inventory" id="'.$items["product_id"].'">Remove</button></td>
   </tr>
   ';
        }
        $output .= '

  </table>

  </div>
  ';

        if($count == 0)
        {
            $output = '<h3 align="center">Requisition  is Empty</h3>';
        }
        return $output;
    }


}
