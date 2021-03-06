<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Products extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    //Count Product
    public function count_product() {
        return $this->db->count_all("product_information");
    }

    //Product List
    public function product_list($per_page, $page) {
        $query = $this->db->select('supplier_information.*,product_information.*,supplier_product.*')
            ->from('product_information')
            ->join('supplier_product', 'product_information.product_id = supplier_product.product_id', 'left')
            ->join('supplier_information', 'supplier_information.supplier_id = supplier_product.supplier_id', 'left')
            ->order_by('product_information.product_name', 'asc')
            ->limit($per_page, $page)
            ->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //All Product List

    public function all_product($config=null, $page=null) {
        if(!empty($config))
        {
            $query = $this->db->select('a.*,b.*,c.*,d.*,e.*')
                ->from('product_information a')
                ->join('product_category b', 'b.category_id = a.category_id', 'left')
                ->join('product_brand c', 'c.brand_id = a.brand_id', 'left')
                ->join('product_subcat d', 'd.sub_cat_id = a.sub_cat_id', 'left')
                ->join('product_model e', 'e.model_id = a.product_model', 'left')
                // ->join('supplier_information', 'supplier_information.supplier_id = supplier_product.supplier_id', 'left')
                ->order_by('a.product_id', 'desc')
                ->limit($config, $page)
                ->get();
            if ($query->num_rows() > 0) {
                return $query->result();
            }
        }else{
            $query = $this->db->select('a.*,b.*,c.*,d.*,e.*')
                ->from('product_information a')
                ->join('product_category b', 'b.category_id = a.category_id', 'left')
                ->join('product_brand c', 'c.brand_id = a.brand_id', 'left')
                ->join('product_subcat d', 'd.sub_cat_id = a.sub_cat_id', 'left')
                ->join('product_model e', 'e.model_id = a.product_model', 'left')
                // ->join('supplier_information', 'supplier_information.supplier_id = supplier_product.supplier_id', 'left')
                ->order_by('a.product_id', 'desc')
                ->get();
            if ($query->num_rows() > 0) {
                return $query->result();
            }
        }
        return false;
    }


    public function all_product_list() {
        $query = $this->db->select('supplier_information.*,product_information.*,supplier_product.*')
            ->from('product_information')
            ->join('supplier_product', 'product_information.product_id = supplier_product.product_id', 'left')
            ->join('supplier_information', 'supplier_information.supplier_id = supplier_product.supplier_id', 'left')
            ->order_by('product_information.product_id', 'desc')
            ->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function getProductList($postData=null){

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
            $searchQuery = " (a.product_name like '%".$searchValue."%' or d.model_name like '%".$searchValue."%' or a.sku like '%".$searchValue."%' or a.price like'%".$searchValue."%' or a.parts like'%".$searchValue."%' or c.supplier_price like'%".$searchValue."%' or m.supplier_name like'%".$searchValue."%'  or x.category_name like'%".$searchValue."%'or e.subcat_name like'%".$searchValue."%' ) ";
        }

        ## Total number of records without filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('product_category x','x.category_id = a.category_id','left');
        $this->db->join('product_model d','d.model_id = a.product_model','left');
        $this->db->join('product_subcat e','a.sub_cat_id = e.sub_cat_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
        if($searchValue != '')
            $this->db->where($searchQuery);
        $records = $this->db->get()->result();
        $totalRecords = $records[0]->allcount;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('product_category x','x.category_id = a.category_id','left');
        $this->db->join('product_model d','d.model_id = a.product_model','left');
        $this->db->join('product_subcat e','a.sub_cat_id = e.sub_cat_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
        if($searchValue != '')
            $this->db->where($searchQuery);
        $records = $this->db->get()->result();
        $totalRecordwithFilter = $records[0]->allcount;

        ## Fetch records
        $this->db->select("a.*,
                a.product_name,
                a.product_id,
                a.product_model,
                a.sku,
                a.parts,
                a.image,
                c.supplier_price,
                c.supplier_id,
                m.supplier_name,
                c.currency,
                  x.category_name,
              d.model_name,
              e.subcat_name
                ");
        $this->db->from('product_information a');
        $this->db->join('supplier_product c','c.product_id = a.product_id','left');
        $this->db->join('product_category x','x.category_id = a.category_id','left');
        $this->db->join('product_model d','d.model_id = a.product_model','left');
        $this->db->join('product_subcat e','a.sub_cat_id = e.sub_cat_id','left');
        $this->db->join('supplier_information m','m.supplier_id = c.supplier_id','left');
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
            $image = '<img src="'.$record->image.'" class="img img-responsive" height="50" width="50">';
            if($this->permission1->method('manage_product','delete')->access()){

                $button .= '<a href="'.$base_url.'Cproduct/product_delete/'.$record->product_id.'" class="btn btn-xs btn-danger "  onclick="'.$jsaction.'"><i class="fa fa-trash"></i></a>';
            }

            $button .='  <a href="'.$base_url.'Cqrcode/qrgenerator/'.$record->product_id.'" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="left" title="'.display('qr_code').'"><i class="fa fa-qrcode" aria-hidden="true"></i></a>';

            $button .='  <a href="'.$base_url.'Cbarcode/barcode_print/'.$record->product_id.'" class="btn btn-warning btn-xs" data-toggle="tooltip" data-placement="left" title="'.display('barcode').'"><i class="fa fa-barcode" aria-hidden="true"></i></a>';
            if($this->permission1->method('manage_product','update')->access()){
                $button .=' <a href="'.$base_url.'Cproduct/product_update_form/'.$record->product_id.'" class="btn btn-info btn-xs" data-toggle="tooltip" data-placement="left" title="'. display('update').'"><i class="fa fa-pencil" aria-hidden="true"></i></a>';
            }

            $product_name = '<a href="'.$base_url.'Cproduct/product_details/'.$record->product_id.'">'.$record->product_name.'</a>';
            $supplier = '<a href="'.$base_url.'Csupplier/supplier_ledger_info/'.$record->supplier_id.'">'.$record->supplier_name.'</a>';

            $data[] = array(
                'sl'               =>$sl,
                'product_name'     =>$product_name,
                'sku'    =>$record->sku,
                'parts'    =>$record->parts,
                'product_category'    =>$record->category_name,
                'subcat_name'    =>$record->subcat_name,
                'product_type'    =>$record->ptype_id,
                'product_model'    =>$record->model_name,
                'supplier_name'    =>$supplier,
                'currency'    =>$record->currency,
                'price'            =>$record->price,
                'purchase_p'       =>$record->supplier_price,
                'image'            =>$image,
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

    //Product List
    public function product_list_count() {
        $query = $this->db->select('supplier_information.*,product_information.*,supplier_product.*')
            ->from('product_information')
            ->join('supplier_product', 'product_information.product_id = supplier_product.product_id', 'left')
            ->join('supplier_information', 'supplier_information.supplier_id = supplier_product.supplier_id', 'left')
            ->order_by('product_information.product_name', 'asc')
            ->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

    //Product tax list
    public function retrieve_product_tax() {
        $result = $this->db->select('*')
            ->from('tax_information')
            ->get()
            ->result();

        return $result;
    }

    //Tax selected item
    public function tax_selected_item($tax_id) {
        $result = $this->db->select('*')
            ->from('tax_information')
            ->where('tax_id', $tax_id)
            ->get()
            ->result();

        return $result;
    }

    public function barcode_details($barcode_id) {
        $result = $this->db->select('*')
            ->from('barcode_print a')
            ->join('barcode_print_details b','a.barcode_id=b.barcode_id')
            ->where('a.barcode_id', $barcode_id)
            ->get()
            ->result();

        return $result;
    }

    //Product generator id check
    public function product_id_check($product_id) {
        $query = $this->db->select('*')
            ->from('product_information')
            ->where('product_id', $product_id)
            ->get();
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    //Count Product
    public function product_entry($data) {
        $this->db->insert('product_information', $data);
        $this->db->select('*');
        $this->db->from('product_information');
        $this->db->where('status', 1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $json_product[] = array('label' => $row->product_name . "-(" . $row->product_model . ")", 'value' => $row->product_id);
        }
        $cache_file = './my-assets/js/admin_js/json/product.json';
        $productList = json_encode($json_product);
        file_put_contents($cache_file, $productList);
        return TRUE;

    }

    //Retrieve Product Edit Data
    public function retrieve_product_editdata($product_id) {
        $this->db->select('*');
        $this->db->from('product_information');
        $this->db->where('product_id', $product_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // Supplier product information
    public function supplier_product_editdata($product_id) {
        $this->db->select('a.*,b.*');
        $this->db->from('supplier_product a');
        $this->db->join('supplier_information b', 'a.supplier_id=b.supplier_id');
        $this->db->where('a.product_id', $product_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

//selected supplier product
    public function supplier_selected($product_id) {
        $this->db->select('*');
        $this->db->from('supplier_product');
        $this->db->where('product_id', $product_id);
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
    public function update_product($data, $product_id) {
        $this->db->where('product_id', $product_id);
        $this->db->update('product_information', $data);
        $this->db->select('*');
        $this->db->from('product_information');
        $this->db->where('status', 1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $json_product[] = array('label' => $row->product_name . "-(" . $row->product_model . ")", 'value' => $row->product_id);
        }
        $cache_file = './my-assets/js/admin_js/json/product.json';
        $productList = json_encode($json_product);
        file_put_contents($cache_file, $productList);
        return true;

    }


    public function check_calculaton($product_id){
        $this->db->select('*');
        $this->db->from('product_purchase_details');
        $this->db->where('product_id', $product_id);
        $query = $this->db->get();
        return $query->num_rows();
    }

    // Delete Product Item
    public function delete_product($product_id) {


        $this->db->where('product_id', $product_id);
        $this->db->delete('product_information');
        $this->db->where('product_id', $product_id);
        $this->db->delete('supplier_product');
        return true;

    }

    //Product By Search
    public function product_search_item($product_id) {

        $query = $this->db->select('supplier_information.*,product_information.*,supplier_product.*')
            ->from('product_information')
            ->join('supplier_product', 'product_information.product_id = supplier_product.product_id', 'left')
            ->join('supplier_information', 'supplier_product.supplier_id = supplier_information.supplier_id', 'left')
            ->order_by('product_information.product_id', 'desc')
            ->where('product_information.product_id', $product_id)
            ->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    //Duplicate Entry Checking
    public function product_model_search($product_model) {
        $this->db->select('*');
        $this->db->from('product_information');
        $this->db->where('product_model', $product_model);
        $query = $this->db->get();
        return $this->db->affected_rows();
    }

    //Product Details
    public function product_details_info($product_id) {
        $this->db->select('*');
        $this->db->from('product_information');
        $this->db->join('product_model','product_model.model_id=product_information.product_model','left');
        $this->db->join('product_category','product_category.category_id=product_information.category_id','left');
        $this->db->join('product_brand','product_brand.brand_id=product_information.brand_id','left');
        $this->db->join('product_subcat','product_subcat.sub_cat_id=product_information.sub_cat_id','left');
        $this->db->where('product_id', $product_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // Product Purchase Report
    public function product_purchase_info($product_id) {
        $this->db->select('a.*,b.*,sum(b.quantity) as quantity,sum(b.total_amount) as total_amount,c.supplier_name');
        $this->db->from('product_purchase a');
        $this->db->join('product_purchase_details b', 'b.purchase_id = a.purchase_id');
        $this->db->join('supplier_information c', 'c.supplier_id = a.supplier_id');
        $this->db->where('b.product_id', $product_id);
        $this->db->order_by('a.purchase_id', 'asc');
        $this->db->group_by('a.purchase_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // Invoice Data for specific data
    public function invoice_data($product_id) {
        $this->db->select('a.*,b.*,c.customer_name');
        $this->db->from('invoice a');
        $this->db->join('invoice_details b', 'b.invoice_id = a.invoice_id');
        $this->db->join('customer_information c', 'c.customer_id = a.customer_id');
        $this->db->where('b.product_id', $product_id);
        $this->db->order_by('a.invoice_id', 'asc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function previous_stock_data($product_id, $startdate) {

        $this->db->select('date,sum(quantity) as quantity');
        $this->db->from('product_report');
        $this->db->where('product_id', $product_id);
        $this->db->where('date <=', $startdate);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function product_filter_category_wise($category = null, $subcategory = null, $config = null, $page = null) {
        $this->db->select('a.*,b.*,c.*,d.*,e.*');
        $this->db->from('product_information a');
        $this->db->join('product_category b', 'b.category_id = a.category_id', 'left');
        $this->db->join('product_brand c', 'c.brand_id = a.brand_id', 'left');
        $this->db->join('product_subcat d', 'd.sub_cat_id = a.sub_cat_id', 'left');
        $this->db->join('product_model e', 'e.model_id = a.product_model', 'left');

        if ($category) {
            $this->db->where('b.category_id', $category);

        } if ($subcategory) {
            $this->db->where('d.sub_cat_id', $subcategory);
        }
        if ($category && $subcategory) {
            $this->db->where('b.category_id', $category);
            $this->db->where('d.sub_cat_id', $subcategory);
        }
       // $this->db->limit($config, $page);
        $query = $this->db->get();
        return $query->result();
    }

    public function product_filter_category_wise2($product_name=null,$category = null, $subcategory = null, $config = null) {
        $this->db->select('a.*,b.*,c.*,d.*,e.*');
        $this->db->from('product_information a');
        $this->db->join('product_category b', 'b.category_id = a.category_id', 'left');
        $this->db->join('product_brand c', 'c.brand_id = a.brand_id', 'left');
        $this->db->join('product_subcat d', 'd.sub_cat_id = a.sub_cat_id', 'left');
        $this->db->join('product_model e', 'e.model_id = a.product_model', 'left');

        if ($category) {
            $this->db->where('b.category_id', $category);
            $this->db->like('a.product_name', $product_name);

        } if ($subcategory) {
            $this->db->where('d.sub_cat_id', $subcategory);
            $this->db->like('a.product_name', $product_name);
        }
        if ($category && $subcategory) {
            $this->db->where('b.category_id', $category);
            $this->db->where('d.sub_cat_id', $subcategory);
            $this->db->like('a.product_name', $product_name);
        }
        $this->db->limit($config);
        $query = $this->db->get();
        return $query->result_array();
    }


    public function retrieve_product_full_data($product_id) {
        $this->db->select('a.*, b.category_name, c.subcat_name');
        $this->db->from('product_information a');
        $this->db->join('product_category b', 'b.category_id = a.category_id');
        $this->db->join('product_subcat c', 'c.sub_cat_id = a.sub_cat_id');
        $this->db->where('product_id', $product_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function get_changed_price()
    {

        $CI = & get_instance();
        $CI->load->Model('Suppliers');
        $query = $this->db->select('a.*, a.id as real_id, b.product_name, c.supplier_name')
            ->from('supplier_product_price a')
            ->where('a.status', 1)

            //  ->group_by('purchase_id')

            //  ->group_by('product_id')

            ->join('product_information b', 'b.product_id = a.product_id' , 'left')
            ->join('supplier_information c', 'c.supplier_id = a.supplier_id', 'left')
          //  ->group_by('product_id')
            ->order_by('id','asc')
            //  ->join('supplier_product_price d', 'd.product_id = a.product_id', 'left')
            ->get();

        $res = $query->result_array();

        $list = array();

        // echo '<pre>';print_r($res);exit();


        foreach ($res as $row) {
            //     echo '<pre>';print_r($row['rate']);
            //    echo '<br>';
            //     print_r($this->supplier_product_editdata($row['product_id'])[0]['supplier_price']);

            $old_price = $CI->Suppliers->product_suppliers($row['supplier_id'], $row['product_id'])[0]['supplier_price'];

            if ($row['update_price'] != $old_price){

                // echo '<pre>';print_r($row);

                $row['old_price'] = $old_price;

                array_push($list, $row);
            }
        }



        //    echo '<pre>';print_r($list);exit();

        return $list;

    }

    public function get_changed_unit_cost()
    {
        $CI = & get_instance();
        $CI->load->Model('Suppliers');
        $query = $this->db->select('a.*, a.id as real_id, b.product_name, c.supplier_name')
            ->from('unit_cost_history a')

            //  ->group_by('purchase_id')

            //  ->group_by('product_id')

            ->join('product_information b', 'b.product_id = a.product_id' , 'left')
            ->join('supplier_information c', 'c.supplier_id = a.supplier_id', 'left')
            ->where('a.status', 1)
            // ->join(' d', 'd.product_id = a.product_id', 'left')
            ->get();

        if ($query->num_rows() > 0) {
            $res = $query->result_array();
        }
        else{
            $res = Null;
        }

        $list = array();


        if($res){
            foreach ($res as $row) {
                //     echo '<pre>';print_r($row['rate']);
                //    echo '<br>';
                //     print_r($this->supplier_product_editdata($row['product_id'])[0]['supplier_price']);

                $old_cost = $CI->Suppliers->product_suppliers_and_unit_cost($row['supplier_id'], $row['product_id'])[0]['price'];


                if ($row['update_unit_cost'] != $old_cost){

                    // echo '<pre>';print_r($row);
                    if($old_cost){
                        $row['old_cost'] = $old_cost;
                    }else{
                        $row['old_cost'] = "No previous unit cost";
                    }

                    array_push($list, $row);
                }

            }
        }


        //    echo '<pre>';print_r($list);exit();

        return $list;
    }

}