<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		is_login();
		
	}

	public function index()
	{	
		$data=[
			'title' => "Dashboard",
			'kelas' => $this->db->get('kelas')->num_rows(),
			'tingkat' => $this->db->get('tingkat')->num_rows(),
			'pegawai' => $this->db->get('tbl_pegawai')->num_rows(),
			'siswa' => $this->db->get('tbl_siswa')->num_rows(),
			'member' => $this->db->get('tbl_member')->num_rows(),
		];
		$this->load->view('templates/header');
		$this->load->view('dashboard/index',$data);
		$this->load->view('templates/footer');

	}

	public function view()
	{
		$data=[
			'title' => "Dashboard",
			'kelas' => $this->db->get('kelas')->num_rows(),
			'tingkat' => $this->db->get('tingkat')->num_rows(),
			'pegawai' => $this->db->get('tbl_pegawai')->num_rows(),
			'siswa' => $this->db->get('tbl_siswa')->num_rows(),
		];

		$this->load->view('dashboard/view',$data);
	}

	public function get_tingkat()
	{ 
		$get = file_get_contents('http://192.168.1.222/jibas/api/tingkat.php?key=@smkyapisda');

		$data =  json_decode($get,true);
		$tingkat = $data['data'];
		
		foreach ($tingkat as $tkt) {
			
			$data = [
				'idtingkat' => $tkt['replid'],
				'tingkat' => $tkt['tingkat'],
			];

			$cek = $this->db->get_where('tingkat',$data);
			if ($cek->num_rows() > 0 ) {
				$this->db->where('idtingkat' , $tkt['replid'])->update('tingkat',$data);
				echo json_encode(200);
			}else{
				$this->db->insert('tingkat',$data);
				echo json_encode(201);
			}
			
		}

		//var_dump($tingkat);
	}


	public function get_kelas()
	{ 
		$get = file_get_contents('http://192.168.1.222/jibas/api/kelas.php?key=@smkyapisda');

		$data =  json_decode($get,true);
		$kelas = $data['data'];
		
		foreach ($kelas as $kls) {
			
			$data = [
				'idkelas' 	=> $kls['replid'],
				'kelas' 	=> $kls['kelas'],
			];

			$cek = $this->db->get_where('kelas',$data);
			if ($cek->num_rows() > 0 ) {
				$this->db->where('idkelas' , $kls['replid'])->update('kelas',$data);
				echo json_encode(201);
			}else{
				$this->db->insert('kelas',$data);
				echo json_encode(200);
			}
			
		}
	}

	public function get_pegawai()
	{ 
		$get = file_get_contents('http://192.168.1.222/jibas/api/pegawai.php?key=@smkyapisda');

		$data =  json_decode($get,true);
		$pegawai = $data['data'];
		
		foreach ($pegawai as $pg) {
			
			$data = [
				'nip' 		=> $pg['nip'],
				'nama' 		=> $pg['nama'],
				'tmplahir' 	=> $pg['tmplahir'],
				'tgllahir' 	=> $pg['tgllahir'],
				'bagian'	=> $pg['bagian']

			];

			$cek = $this->db->get_where('tbl_pegawai',$data);
			if ($cek->num_rows() > 0 ) {
				$this->db->where('nip' , $pg['nip'])->update('tbl_pegawai',$data);
				echo json_encode(200);
			}else{
				$this->db->insert('tbl_pegawai',$data);
				echo  json_encode(201);
			}
			
		}
	}

	public function get_siswa()
	{ 
		$get = file_get_contents('http://192.168.1.222/jibas/api/siswa.php?key=@smkyapisda');

		$data 	=  json_decode($get,true);
		$siswa 	= $data['data'];
		
		foreach ($siswa as $s) {
			
			$data = [
				'nis' 			=> $s['nis'],
				'nama' 			=> $s['nama'],
				'tempat_lahir' 	=> $s['tmplahir'],
				'tgl_lahir' 	=> $s['tgllahir'],
				'idkelas'		=> $s['idkelas'],
				'kelas'			=> $s['kelas']

			];

			$update = [
				'nis' 			=> $s['nis'],
				'nama' 			=> $s['nama'],
				'tempat_lahir' 	=> $s['tmplahir'],
				'tgl_lahir' 	=> $s['tgllahir'],
				'idkelas'		=> $s['idkelas'],
				'kelas'			=> $s['kelas']

			];

			$cek = $this->db->get_where('tbl_siswa',$data);
			if ($cek->num_rows() > 0 ) {
				$this->db->where('nis' , $s['nis'])->update('tbl_siswa',[

					'nama' 		=> $s['nama'],
					'tptlahir' 	=> $s['tptlahir'],
					'tgllahir' 	=> $s['tgllahir'],
					'idkelas'	=> $s['idkelas'],
					'kelas'		=> $s['kelas']
				]);
				
				echo json_encode(200);
			}else{
				$this->db->insert('tbl_siswa',$data);
				echo  json_encode(201);
			}
			
		}
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */
