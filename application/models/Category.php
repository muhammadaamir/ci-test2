<?php

class Category extends CI_Model {

    public $id;
    public $question;
    public $answer;
    public $category_id;
    
    public function __construct() {
        // Call the CI_Model constructor
        parent::__construct();
    }
    
    public function get_records($id) {
        $query = $this->db->get_where('categories', array('id' => $id));
        return $query->result_array();
    }
    
}