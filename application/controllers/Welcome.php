<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model('Result');
		$this->load->model('Question');	
		$this->load->model('Category');	
		$this->load->model('Users');	
		$this->load->model('User_score');	
		$this->load->helper('url');

	}

	public function index()
	{
        $data = array( 'questions' => $this->Question->get_questions());
		$this->load->view('index',$data);
	}

	public function index_post()
	{
		$answer_by_user = $this->input->post('answer_by_user');
		$qusetion_id = $this->input->post('qusetion_id');
		$answer_by_db = $this->input->post('answer_by_db');
		$category_id = $this->input->post('category_id');
		$category_id_temp = array_unique($category_id);
		$counter = 0;
		$counter_by_category = 0;
		$category_values = array();


		$user_name = $this->input->post('user_name');
		$user_email = $this->input->post('user_email');
		
		$user_id = 	$this->Users->insert_into(array(
				        'name' => $user_name,
				        'email' => $user_email,
				        'created_at' => 'NOW()',
					));


		foreach ($answer_by_user as $key => $value) {
			if(!empty($value)){		
				$this->Result->insert_into(array(
			        'question_id' => $qusetion_id[$key],
			        'answer' => $answer_by_user[$key],
			        'user' => $user_id,
				));
				if($answer_by_user[$key] == $answer_by_db[$key]){
					$counter++;
					foreach ($category_id_temp as $key1 => $value1) {
						if($category_id[$key] == $value1){
							$query = $this->Category->get_records($value1);
							$counter_by_category++;
							$category_values[] = $query[0]['name'];
						}
					}
				}
			}
		}

		$this->User_score->insert_into(array(
		        'user_id' => $user_id,
		        'score' => $counter,
		        'created_at' => 'NOW()',
			));
		$data = array_count_values($category_values);
		foreach ($data as $key => $value) {
			echo $key ." = ".$value."<br>"; 
		}	
		echo "and total answer is : ".$counter;

		echo "<br><a href='/'>Go home</a>";
	}

	public function get_top_users()
	{
	   $data = array( 'top_users' => $this->User_score->top_users_model());
		$this->load->view('top_users',$data);
	}

}
