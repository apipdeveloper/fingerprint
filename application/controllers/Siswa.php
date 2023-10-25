<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

	public function __construct(){
		parent::__construct();
		is_login();
	}

	public function index()
	{
		

		$data = [
				'title' => 'Data Siswa',
				'tingkat' 	=> $this->db->get('tingkat')->result(),
				'kelas' 	=> $this->db->select('*')->from('kelas')->order_by('kelas','ASC')->get()->result(),		
				'siswa' => $this->db->get('tbl_siswa')->result(),
			];

		$this->load->view('templates/header');
		$this->load->view('siswa/index',$data);
		$this->load->view('templates/footer');
	}

	//get kelas
    public function getKelas()
    {   
        $kelas = $this->input->post('kelas');
        $response   = $this->db->get_where('kelas',['kelas'=> $kelas])->result();
        echo json_encode($response);
    }

    //get kelas
    public function getSiswa()
    {   
        $kelas   = $this->input->post('kelas');
        $response   = $this->db->get_where('tbl_siswa',['kelas' => $kelas])->result();
        echo json_encode($response);
    }

}

/* End of file Siswa.php */
/* Location: ./application/controllers/Siswa.php */
