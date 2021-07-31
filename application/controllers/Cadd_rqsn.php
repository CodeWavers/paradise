<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cadd_rqsn extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
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
        $this->load->library("cart");
        $data = array(
            "id"  => $_POST["product_id"],
            "name"  => $_POST["product_name"],
            "qty"  => $_POST["quantity"],
            "price"  => $_POST["product_price"]
        );

      //  echo '<pre>';print_r($data);exit();
        $this->cart->insert($data); //return rowid
        echo $this->view();
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
        foreach($this->cart->contents() as $items)
        {
            $count++;
            $output .= '
   <tr> 
    <td>'.$count.'</td>
    <td>'.$items["category_name"].'</td>
    <td>'.$items["sub_cat_name"].'</td>
    <td>'.$items["name"].'</td>
    <td>'.$items["parts"].'</td>
    <td>'.$items["sku"].'</td>
    <td>'.$items["brand"].'</td>
    <td>'.$items["model"].'</td>
    <td>'.$items["qty"].'</td>
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
