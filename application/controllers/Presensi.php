<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Rats\Zkteco\Lib\ZKTeco;
error_reporting(0);


class Presensi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
		
	}
	public function index()
	{
		$data=[
			'title' => "Data Log Presensi",
			'kelas' 	=> $this->db->get('kelas')->result(),
			'mesin' => $this->db->get('ip_mesin')->result_array(),
		];

		$this->load->view('templates/header');
		$this->load->view('presensi/index',$data);
		$this->load->view('templates/footer');

	}

	public function view()
	{	$data = [
			'absen' =>  $this->db->select('*')
							->from('logs a')
							->join('tbl_member b','b.pin = a.pin')							
							->join('ip_mesin m','m.sn = a.SN')
							->where('flag','N')
							->get()->result(),
		];

		 $this->load->view('presensi/view',$data);

	}

	public function getLogIn($ip)
	{	
			

		$zk = new ZKTeco($ip);
		
		if($zk->connect() == true){
			
			$serial = $zk->serialNumber();		

			$SN = substr($serial,14,13);

			$logs = $zk->getAttendance();
			
			foreach($logs as $log){		

				$pin	= $log['id'];
				$date	= date('Y-m-d',strtotime($log['timestamp']));
				$time 	= date('H:i:s',strtotime($log['timestamp']));

				$cek_log = $this->db->get_where('logs',[
					'pin' => $pin,
					'date_in' => $date,
				])->num_rows();

				if ($cek_log > 0) {

					$res = ['status' => 201,'message' => 'Data sudah ada!'];

				}else{

					

					$this->db->insert('logs',[
						'SN' => $SN,
						'pin' => $pin,
						'date_in' => $date,
						'time_in' => $time,
						'flag' => 'N',
					]);

					$res = ['status' => 200,'message' => 'Data berhasil disimpan!'];
				}				

			}

			//delete log data
			$zk->clearAttendance(); 
			$zk->disconnect();
			
			$this->session->set_flashdata('message', $res["message"]);
            redirect('Presensi');
		} else {
			$this->session->set_flashdata('error', 'Fingerprint not connected');
            redirect('Presensi');
		}

		
		
	}

	public function getLogOut($ip)
	{	
		$zk = new ZKTeco($ip);
		
		if($zk->connect() == true){			
			$serial = $zk->serialNumber();	

			$SN = substr($serial,14,13);

			$logs = $zk->getAttendance();
			foreach ($logs as $log) {

				//data fingerpirnt				
				$pin	= $log['id'];
				$date	= date('Y-m-d',strtotime($log['timestamp']));
				$time 	= date('H:i:s',strtotime($log['timestamp']));


				$cek_log = $this->db->get_where('logs',[
					'pin' => $pin,
					'date_in' => $date,
				])->num_rows();

				if ($cek_log > 0) {

					$cek_out = $this->db->get_where('logs',[
						'pin' => $pin,
						'date_out' => $date,
					])->num_rows();

					if($cek_out > 0){
						//$res = ['status' => 201,'message' => 'Data cek out sudah ada!'];
					}else{

						$this->db->where(['pin' => $pin, 'date_in' => $date]);
						$this->db->update('logs',[
							'date_out' => $date,
							'time_out' => $time,
							'status' => 'H',
							
						]);

					$res = ['status' => 200,'message' => 'Data berhasil disimpan!'];
					}					

				}else{
					
					$res = ['status' => 201,'message' => 'Data presensi masuk tidak ada!'];
				}				

			}

			//clear log data
			$zk->clearAttendance(); 
			$zk->disconnect();

			$this->session->set_flashdata('message', $res["message"]);
            redirect('Presensi');
		} else {
			$this->session->set_flashdata('error', 'Fingerprint not connected');
            redirect('Presensi');
		}
		
	}

	
	

}

/* End of file Presensi.php */
/* Location: ./application/controllers/Presensi.php */
