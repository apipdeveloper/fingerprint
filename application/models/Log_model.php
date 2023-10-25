<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Log_model extends CI_Model {

	public function insert($data)
	{
		$cek = $this->db->get_where('log',$data)->num_rows();
		if ($cek < 1) {

			$res = $this->db->insert('log',$data);
		}else{
			$res = 'Data Sudah ada';

		}
		
		return $res;
	}

}

/* End of file log_model.php */
/* Location: ./application/models/log_model.php */