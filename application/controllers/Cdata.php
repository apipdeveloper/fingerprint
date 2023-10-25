<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cdata extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		echo $this->input->get('SN');
	}

}

/* End of file Cdata.php */
/* Location: ./application/controllers/Cdata.php */