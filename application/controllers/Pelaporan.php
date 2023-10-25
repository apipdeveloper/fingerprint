<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelaporan extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		is_login();
		
	}

	public function index(){
		$data = [
			'title' => 'Pelaporan',
			
		];
		$this->load->view('templates/header');
		$this->load->view('pelaporan/index',$data);
		$this->load->view('templates/footer');
	}

	public function view_siswa()
	{
		$data = [
			'absen' => $this->db->select('*')
						->from('logs a')
						->join('tbl_member b','b.pin = a.pin')
						->join('tbl_siswa s','s.nis = b.nis')
						->where('a.date_in',date('Y-m-d'))
						->get()->result(),
			];

		$this->load->view('pelaporan/view_siswa',$data);
	}

	public function view_pegawai()
	{
		$data =[
		 'absen' => $this->db->select('*')
						->from('logs a')
						->join('tbl_member b','b.pin = a.pin')
						->join('tbl_pegawai p','p.nip = b.nip')
						->where('a.date_in',date('Y-m-d'))
						->get()->result(),
		];

		$this->load->view('pelaporan/view_pegawai',$data);
	}

	public function syncron(){
		$jenis 		= $this->input->post('jenis');
		$tanggal 	= $this->input->post('tanggal');

		

		if($jenis === 'siswa'){

			$absen 		=  $this->db->select('*')
						->from('logs a')
						->join('tbl_member b','b.pin = a.pin')
						->join('tbl_siswa s','s.nis = b.nis')
						->where('a.date_in',$tanggal)
						->where('flag','N')
						->get()->result();

			foreach($absen as $row){
				$pin = $row->pin;
				$nis = $row->nis;
				$date_in = $row->date_in;
				$time_in =  $row->time_in;
				$date_out = $row->date_out;
				$time_out = $row->time_out;
	
				$post[] = [
					'user' 		=> $nis,
					'date_in' 	=> $date_in,
					'time_in'   => $time_in,
					'date_out' 	=> $date_out,
					'time_out' 	=> $time_out,
				];
	
				//url api
				$url = 'http://192.168.1.222/jibas/api/syncrone.php?key=@smkyapisda';
	
				$ch = curl_init($url);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
				
				// execute!
				$response[] = curl_exec($ch);
				
				// close the connection, release resources used
				curl_close($ch);
		
			}

		}else{

			$absen 		=  $this->db->select('*')
						->from('logs a')
						->join('tbl_member b','b.pin = a.pin')
						->join('tbl_pegawai p','p.nip = b.nip')
						->where('a.date_in',$tanggal)
						->where('flag','N')
						->get()->result();

			foreach($absen as $row){
				$pin = $row->pin;
				$nip = $row->nip;
				$date_in = $row->date_in;
				$time_in =  $row->time_in;
				$date_out = $row->date_out;
				$time_out = $row->time_out;
	
				$post[] = [
					'user' 		=> $nip,
					'date_in' 	=> $date_in,
					'time_in'   => $time_in,
					'date_out' 	=> $date_out,
					'time_out' 	=> $time_out,
				];
	
				//url api
				$url = 'http://192.168.1.222/jibas/api/syncrone.php?key=@smkyapisda';
	
				$ch = curl_init($url);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
				
				// execute!
				$response[] = curl_exec($ch);
				
				// close the connection, release resources used
				curl_close($ch);
		
			}
		}
		
						       
		
		
		// do anything you want with your response
		// var_dump($response);

		// $this->db->where(['pin'=>$pin, 'date_in'=>$date_in])->update('logs',['flag'=>'Y']);
		// $this->session->set_flashdata('message', 'Sudah terkirim .');
        // redirect('Pelaporan');

		echo json_encode($post);

        
	}
}
