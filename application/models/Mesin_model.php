<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mesin_model extends CI_Model {

	public function insert_mesin($data)
	{
		return $this->db->insert('ip_mesin',$data);
	}

}

/* End of file Mesin_model.php */
/* Location: ./application/models/Mesin_model.php */