<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
	}

	public function index()
	{
		$data = [
				'title' => 'Data Siswa',		
				'pegawai' => $this->db->get('tbl_pegawai')->result(),
			];

		$this->load->view('templates/header');
		$this->load->view('pegawai/index',$data);
		$this->load->view('templates/footer');
	}

}

/* End of file Pegawai.php */
/* Location: ./application/controllers/Pegawai.php */
