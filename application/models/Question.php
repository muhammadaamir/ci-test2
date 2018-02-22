<?php

class Question extends CI_Model {

    public $id;
    public $question;
    public $answer;
    public $category_id;
    
    public function __construct() {
        // Call the CI_Model constructor
        parent::__construct();
    }
    
    public function get_records($id) {
        $query = $this->db->get_where('questions', array('id' => $id));
        return $query->result_array();
    }
    
    public function get_questions($cat_ids = [1,2,3,4], $limit=3) {
        //https://stackoverflow.com/questions/28857920/mysql-select-2-random-rows-from-each-categories
        foreach($cat_ids as $cat_id) {
        $sql[]="SELECT * FROM (SELECT * FROM questions 
                WHERE category_id=$cat_id
                ORDER BY RAND()
        LIMIT $limit) as c$cat_id";
        }
        $query = $this->db->query(implode(' UNION ', $sql). ' ORDER BY rand() ');
        $res   = $query->result();        
	    return $res;
    }
}