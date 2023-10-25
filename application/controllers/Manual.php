<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Manual extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
		
	}
	public function index()
	{
		$data=[
			'title' => "Data Presensi Manual",
			'mesin' => $this->db->get('ip_mesin')->result_array(),
		];

		$this->load->view('templates/header');
		$this->load->view('manual/index',$data);
		$this->load->view('templates/footer');

	}

	public function view()
	{	
		$tgl = date('Y-m-d');
		
		$log = $this->db->get_where('logs',['date_in' => $tgl]);
		$cek = $log->num_rows();
		
		if($cek > 0){

			foreach ($log->result() as $log) {

				$member = $this->db->select('*')
								   ->from('tbl_member m')
								   ->join('tbl_siswa s','s.nis = m.nis')
								   ->where_not_in('m.pin' , $pin)
								   //->group_by('s.nis')
								   ->get()
								   ->row();	
				
				$datas[] = [
					'pin' => $member->pin,
					'nis' => $member->nis,
					'nama' => $member->nama,
					'kelas' => $member->kelas,
				];
				
			}

			

		}else{

			$datas = [];
		}

		

		$data = [
			'absen' =>  $datas,
		];

		$this->load->view('manual/view',$data);
		//var_dump($data);
	}


	public function add_manual()
	{
		$pin = $this->input->post('pin');
		$status = $this->input->post('status');

		for ($i=0; $i < count($pin) ; $i++) { 

			$data = [
                'pin' => $pin[$i],
                'status' => $status[$i],
                'date_in' => date('Y-m-d'),
                'date_out' => date('Y-m-d'),
				'flag' => 'N',
				
            ];

            $this->db->insert('logs',$data);
		}

		$res = ['message' => 'Data Tersimpan.'];

		$this->session->set_flashdata('message', $res["message"]);
            redirect('Manual');

		


	}

	

}

/* End of file Presensi.php */
/* Location: ./application/controllers/Presensi.php */
