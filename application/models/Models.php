<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Models extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    //customer List
    public function model_list() {
        $this->db->select('*');
        $this->db->from('product_model');
        $this->db->where('status', 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // //customer List
    public function model_list_product() {
        $this->db->select('*');
        $this->db->from('product_model');
        $this->db->where('status', 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // //List product by sub category and also used for listing sub category
    // public function sub_cat_list_product() {
    //     $this->db->select('a.*, b.category_name, b.category_id');
    //     $this->db->from('product_subcat a');
    //     $this->db->join('product_category b', 'a.category_id = b.category_id');
    //     $this->db->where('a.status', 1);
    //     $query = $this->db->get();
    //     if ($query->num_rows() > 0) {
    //         return $query->result_array();
    //     }
    //     return false;
    // }

    // public function sub_cat_list_product_by_cat_id($category_id) {
    //     $this->db->select('*');
    //     $this->db->from('product_subcat');
    //     $this->db->where('category_id', $category_id);
    //     $this->db->where('status', 1);
    //     $query = $this->db->get();
    //     if ($query->num_rows() > 0) {
    //         return $query->result_array();
    //     }
    //     return false;
    // }

    // public function sub_cat_entry($data) {
    //     $this->db->select('*');
    //     $this->db->from('product_subcat');
    //     $this->db->where('status', 1);
    //     $this->db->where('subcat_name', $data['subcat_name']);
    //     $query = $this->db->get();
    //     if ($query->num_rows() > 0) {
    //         return FALSE;
    //     } else {
    //         $this->db->insert('product_subcat', $data);
    //         return TRUE;
    //     }
    // }

    // //delete sub category data
    // public function delete_sub_cat($sub_cat_id) {
    //     $this->db->where('sub_cat_id', $sub_cat_id);
    //     $this->db->delete('product_subcat');
    //     return true;
    // }

    // //retrieve sub category data to update
    // public function retrieve_sub_cat_editdata($sub_cat_id)
    // {
    //     $this->db->select('*');
    //     $this->db->from('product_subcat');
    //     $this->db->where('sub_cat_id', $sub_cat_id);
    //     $query = $this->db->get();

    //     return $query->result_array();
    // }

    // public function update_sub_cat($data, $sub_cat_id)
    // {
    //     $this->db->where('sub_cat_id', $sub_cat_id);
    //     $this->db->update('product_subcat', $data);
    //     return true;
    // }

    // //customer List
    // public function category_list_count() {
    //     $this->db->select('*');
    //     $this->db->from('product_category');
    //     $this->db->where('status', 1);
    //     $query = $this->db->get();
    //     if ($query->num_rows() > 0) {
    //         return $query->num_rows();
    //     }
    //     return false;
    // }

    // //Category Search Item
    public function model_search_item($model_id) {
        $this->db->select('*');
        $this->db->from('product_model');
        $this->db->where('model_id', $model_id);
        $this->db->limit('500');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // //Count customer
    public function model_entry($data) {
        $this->db->select('*');
        $this->db->from('product_model');
        $this->db->where('status', 1);
        $this->db->where('model_name', $data['model_name']);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return FALSE;
        } else {
            $this->db->insert('product_model', $data);
            return TRUE;
        }
    }

    // //Retrieve customer Edit Data
    public function retrieve_model_editdata($model_id) {
        $this->db->select('*');
        $this->db->from('product_model');
        $this->db->where('model_id', $model_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // //Update Categories
    public function update_model($data, $model_id) {
        $this->db->where('model_id', $model_id);
        $this->db->update('product_model', $data);
        return true;
    }

    // // Delete customer Item
    public function delete_model($model_id) {
        $this->db->where('model_id', $model_id);
        $this->db->delete('product_model');
        return true;
    }

}
