<?php

class Result extends CI_Model{

	public $table = "results";
	function __construct()
	{
		parent::__construct();
	}
	public function insert_into($data){

		$this->db->insert('results', $data);
	   
	    return true;

	}

}

?>