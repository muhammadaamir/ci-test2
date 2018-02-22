<?php

class Users extends CI_Model{

	public $table = "users";
	function __construct()
	{
		parent::__construct();
	}
	public function insert_into($data){

		$this->db->insert('users', $data);
	   	$insert_id = $this->db->insert_id();
	    return $insert_id;

	}

}

?>