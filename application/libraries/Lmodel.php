<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lmodel {

    //Retrieve  category List
    public function model_list() {
        $CI = & get_instance();
        $CI->load->model('Models');
        $model_list = $CI->Models->model_list();  //It will get only Credit categorys
        $i = 0;
        $total = 0;
        if (!empty($model_list)) {
            foreach ($model_list as $k => $v) {
                $i++;
                $model_list[$k]['sl'] = $i + $CI->uri->segment(3);
            }
        }
        $data = array(
            'title'         => "Manage Model",
            'model_list' => $model_list,
        );
        $model_list = $CI->parser->parse('model/model', $data, true);
        return $model_list;
    }

    // Sub Category Add
    public function model_add_form() {
        $CI = & get_instance();
        $CI->load->model('Models');
        $model_list = $CI->Models->model_list();  //It will get only Credit categorys
        $i = 0;
        $total = 0;
        if (!empty($model_list)) {
            foreach ($model_list as $k => $v) {
                $i++;
                $model_list[$k]['sl'] = $i + $CI->uri->segment(3);
            }
        }
        $data = array(
            'title'         => "Model",
            'model_list' => $model_list,
        );
        $modelForm = $CI->parser->parse('model/add_model_form', $data, true);
        return $modelForm;
    }

    // //category Edit Data
    public function model_edit_data($model_id) {
        $CI = & get_instance();
        $CI->load->model('Models');
        $model_detail = $CI->Models->retrieve_model_editdata($model_id);

        $data = array(
            'title'         => "Model Edit",
            'model_id'   => $model_detail[0]['model_id'],
            'model_name' => $model_detail[0]['model_name'],
            'status'        => $model_detail[0]['status']
        );
        $chapterList = $CI->parser->parse('model/edit_model_form', $data, true);
        return $chapterList;
    }

    // public function sub_cat_add_form()
    // {
    //     $CI = & get_instance();
    //     $CI->load->model('Categories');
    //     $sub_cat_list = $CI->Categories->sub_cat_list_product();
    //     $category_list = $CI->Categories->category_list();
    //     $i = 0;
    //     if (!empty($sub_cat_list)) {
    //         foreach ($sub_cat_list as $k => $v) {
    //             $i++;
    //             $sub_cat_list[$k]['sl'] = $i + $CI->uri->segment(3);
    //         }
    //     }
    //     $data = array(
    //         'title'         => 'Sub Category',
    //         'sub_cat_list'  => $sub_cat_list,
    //         'category_list' => $category_list
    //     );
    //     $categoryForm = $CI->parser->parse('category/add_sub_cat_form', $data, true);
    //     return $categoryForm;
    // }

    // public function sub_cat_edit_data($sub_cat_id) {
    //     $CI = & get_instance();
    //     $CI->load->model('Categories');
    //     $sub_cat_detail = $CI->Categories->retrieve_sub_cat_editdata($sub_cat_id);
    //     $category_list = $CI->Categories->category_list();

    //     $data = array(
    //         'title'         => 'Update Category',
    //         'sub_cat_id'   => $sub_cat_detail[0]['sub_cat_id'],
    //         'sub_cat_name'   => $sub_cat_detail[0]['subcat_name'],
    //         'category_id'   => $sub_cat_detail[0]['category_id'],
    //         'category_list' => $category_list
    //     );
    //     $chapterList = $CI->parser->parse('category/edit_sub_cat_form', $data, true);
    //     return $chapterList;
    // }
}
?>