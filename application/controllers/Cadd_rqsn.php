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

        );
        $check_product = $this->db->select('*')->from('rqsn_cart')->where('product_id',$product_id)->get()->num_rows();
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



     //   echo '<pre>';print_r($check_product);exit();
      //return rowid
      //  echo $this->view();
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
        $data = array(
            'rowid'  => $row_id,
            'qty'  => 0
        );
        $this->cart->update($data);
        echo $this->view();
    }

    function clear()
    {
        $this->load->library("cart");
        $this->cart->destroy();
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
    <button type="button" id="clear_cart" class="btn btn-warning">Clear Cart</button>
   </div>
   <br />
   <table class="table table-bordered table-hover">
    <tr>
     <th width="15%">SL No</th>
     <th width="15%">Category</th>
     <th width="15%">Sub-category</th>
     <th width="40%">Product Name</th>
     <th width="15%">Parts No</th>
     <th width="15%">SKU</th>
     <th width="15%">Brand</th>
     <th width="15%">Model</th>
     <th width="15%">Required Quantity</th>
     <th width="15%">Action</th>
    </tr>

  ';


        $count = 0;
        foreach($cart_list as $items)
        {
            $total_quantity = $this->db->select('sum(qty) as total_qty')->from('rqsn_cart')->where('product_id',$items["product_id"])->get()->row();
            $count++;
            $output .= '
   <tr> 
    <td>'.$count.'</td>
    <td>'.$items["category"].'</td>
    <td>'.$items["subcat"].'</td> 
    <td>'.$items["product_name"].'</td>
    <td>'.$items["parts"].'</td>
    <td>'.$items["sku"].'</td>
    <td>'.$items["brand"].'</td>
    <td>'.$items["model"].'</td>
    <td>'.$total_quantity->total_qty.'</td>
    <td><button type="button" name="remove" class="btn btn-danger btn-xs remove_inventory" id="'.$items["rowid"].'">Remove</button></td>
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
