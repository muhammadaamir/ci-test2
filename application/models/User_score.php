<?php

class User_score extends CI_Model{

	public $table = "user_score";
	function __construct()
	{
		parent::__construct();
	}
	public function insert_into($data){
		$this->db->insert('user_score', $data);
	    return true;
	}
	public function top_users_model(){
        $sql = "SELECT score,user_id FROM user_score ORDER BY score DESC Limit 10";
        $query = $this->db->query($sql);
        $res   = $query->result();
        return $res;
	}
}

?>