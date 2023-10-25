<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use Rats\Zkteco\Lib\ZKTeco;
error_reporting(0);

class Fingerprint extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
	}

	public function index()
	{
		$data = [
				'title' 	=> 'Data User',		
				'member' 	=> $this->db->get('tbl_member')->result(),

				'kelas' 	=> $this->db->select('*')->from('kelas')->order_by('kelas','ASC')->get()->result(),
				'mesin' 	=> $this->db->get('ip_mesin')->result(),
				'pin' 		=> pin(),
				'guru'		=> $this->db->select('*')
										->from('tbl_pegawai')
										->order_by('nama','ASC')
										->get()->result(),
			];

		$this->load->view('templates/header');
		$this->load->view('finger/index',$data);
		$this->load->view('templates/footer');
	}

	//get siswa
    public function getSiswa()
    {   
        $idkelas   = $this->input->post('id_kelas');
        //$response   = $this->db->get_where('tbl_siswa',['idkelas' => $idkelas])->result();
		$response = $this->db->select('*')
							 ->from('tbl_siswa')
							 ->where('kelas', $idkelas)
							 ->order_by('nama','ASC')
							 ->get()->result();

        echo json_encode($response);
    }
	

	//get siswa by nis
    public function getSiswaByNis()
    {   
        $nis   = $this->input->post('nis');
        $response   = $this->db->get_where('tbl_siswa',['nis' => $nis])->row();
        echo json_encode($response);
    }

	//get siswa by nip
    public function getGuruByNip()
    {   
        $nip   = $this->input->post('nip');
        $response   = $this->db->get_where('tbl_pegawai',['nip' => $nip])->row();
        echo json_encode($response);
    }

    public function add_user()
	{	
		$ip = $this->input->post('ip');
		$pin = $this->input->post('pin');
		
		$zk = new ZKTeco($ip);
		  
		if ($zk->connect() == true) {
			// $zk->enableDevice();

			$cek = $this->db->get_where('tbl_member',['pin' => $pin])->num_rows();

			if($cek < 1){

				$uid 		= $pin;
				$id 		= $pin;				
				$name		= $this->input->post('nama');
				$password 	= 123;
				$role 		= 0;// 0 = user, 14 = superadmin, 					

				$user = $zk->setUser($uid,$id,$name,$password,$role);

				$query =  $this->db->insert('tbl_member',[
								'pin' => $pin,
								'nis' => $this->input->post('nis'),	
							]);

				$res = ['status' => 200,'message' =>'Data berhasil disimpan!'];
				
			//disconnect devices
			$zk->disconnect();
				
			}else{
				$res = ['status' => 201, 'message'=>'Data sudah ada'];
				
			}

			$this->session->set_flashdata('message', $res["message"]);
            redirect('Fingerprint');

		} else {

			$this->session->set_flashdata('error', 'Fingerprint not connected');
            redirect('Fingerprint');
		}
		
	}

	//add user guru
	public function add_guru()
	{	
		$ip = $this->input->post('ip');
		$pin = $this->input->post('pin');

		$zk = new ZKTeco($ip);
		  
		if ($zk->connect() == true) {
			// $zk->enableDevice();

			$cek = $this->db->get_where('tbl_member',['pin' => $pin])->num_rows();

			if($cek < 1){
				
				$uid 		= $pin;
				$id 		= $pin;				
				$name		= $this->input->post('nama');
				$password 	= 123;
				$role 		= 0;// 0 = user, 14 = superadmin, 	

				$user = $zk->setUser($uid,$id,$name,$password,$role);

				$query =  $this->db->insert('tbl_member',[
								'pin' => $pin,
								'nip' => $this->input->post('nip'),	
							]);

				$res = ['status' => 200,'message' =>'Data berhasil disimpan!'];
				
			}else{
				$res = ['status' => 201, 'message'=>'Data sudah ada'];
				
			}

			$this->session->set_flashdata('message', $res["message"]);
            redirect('Fingerprint');

			//disconnect devices
			$zk->disconnect();

		} else {

			$this->session->set_flashdata('error', 'Fingerprint not connected');
            redirect('Fingerprint');
		}
		
	}

	//delete user
	public function del_user($pin)
	{	
		$ip = $this->input->post('ip');
		$zk = new ZKTeco($ip);
		  
		if ($zk->connect() == true) {

			

			$user = $zk->removeUser($pin); 

			//disconnect devices
			$zk->disconnect();

			$query = $this->db->where('pin',$pin)->delete('tbl_member');

			$this->session->set_flashdata('message', 'Data berhasil dihapus.');
            redirect('Fingerprint');			

		} else {
			$this->session->set_flashdata('error', 'Fingerprint not connected');
            redirect('Fingerprint');
		}
		
	}

	

	

}

/* End of file Fingerprint.php */
/* Location: ./application/controllers/Fingerprint.php */
