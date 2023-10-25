<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Rats\Zkteco\Lib\ZKTeco;
error_reporting(0);

class Mesin extends CI_Controller {

	public function __construct(){
		parent::__construct();

		is_login();
		$this->load->model('Mesin_model');
		$this->load->model('Log_model','LOG');
		
	}

	
	

	public function index()
	{	

		$data=[
			'title' => "Data Mesin",
			'mesin' => $this->db->get('ip_mesin')->result()
		];

		$this->form_validation->set_rules('nama_mesin','Nama Mesin','required');
		$this->form_validation->set_rules('ip_address','ip address','required');

		if ($this->form_validation->run()== false) {

			$this->load->view('templates/header');
			$this->load->view('mesin/index',$data);
			$this->load->view('templates/footer');

		}else{

			$data = [
				'nama_mesin' => $this->input->post('nama_mesin'),
				'ip_address' => $this->input->post('ip_address')
			];

			$query = $this->Mesin_model->insert_mesin($data);

			if ($query == true) {

				$this->session->set_flashdata('message', "<script>flash_toast('success',' Berhasil,  Menyimpan Data.');</script>");
				
			}else{
					$this->session->set_flashdata('message', "<script>flash_toast('error',' Gagal,  Menyimpan Data.!');</script>");
			}
			redirect('Mesin');
		}
		
		
	}

	public function editMesin($id)
	{
		$id = decrypt_url($id);

		$data = [
			'nama_mesin' => $this->input->post('nama_mesin'),
			'ip_address' => $this->input->post('ip_address'),
		];

		$query = $this->db->where('id_mesin', $id)->update('ip_mesin',$data);

		if ($query == true) {

				$this->session->set_flashdata('message', "<script>flash_toast('success','Berhasil,  Mengubah Data.');</script>");
				
		}else{
				$this->session->set_flashdata('message', "<script>flash_toast('error','Gagal,  Mengubah Data.!');</script>");
		}

		redirect('Mesin');
		

	}

	public function DeleteMesin($id)
	{
		$id = decrypt_url($id);		

		$query = $this->db->where('id_mesin', $id)->delete('ip_mesin');

		if ($query == true) {

				$this->session->set_flashdata('message', "<script>flash_toast('success','Berhasil,  Menghapus Data.');</script>");
				
		}else{
				$this->session->set_flashdata('message', "<script>flash_toast('error','Gagal,  Menghapus Data.!');</script>");
		}

		redirect('Mesin');
		

	}

	//cek koneksi
	public function cek_koneksi($id)
	{	
		$id = decrypt_url($id);
		$mesin = $this->db->get_where('ip_mesin',['id_mesin' => $id])->row();

		$zk = new ZKTeco($mesin->ip_address);
		
		if($zk->connect() == true){
			
			$serial = $zk->serialNumber();		
			$device	= $zk->deviceName();
			$sn = substr($serial,14,13);
			$model = substr($device,12,10);
			//disconnect
			$zk->disconnect();
			$this->db->where('id_mesin',$id)->update('ip_mesin',['sn' => $sn,'model' => $model]);
			
			echo json_encode("200");

		} else {
			echo json_encode("500");
		}

	}

	//setting date
	public function tanggal($ip)
	{	
		
		$zk = new ZKTeco($ip);
		
		if($zk->connect() == true){

			//$t = date("Y-m-d H:i:s");
			$zk->setTime(date('Y-m-d H:i:s'));


			//disconnect
		$zk->disconnect();		

			$res = ['message' =>'200'];
			echo json_encode($res);		

		} else {
			$res = ['message' =>'404'];
			echo json_encode($res);
		}
		
	}

	

	


}

/* End of file Mesin.php */
/* Location: ./application/controllers/Mesin.php */
