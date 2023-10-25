<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Absen_model extends CI_Model {


	public function save_log($data){
		$absen = $this->db->select(' a.pin ,b.nis ,b.nip,b.nama, a.date, a.time ')
							->from('log a')
							->join('tbl_member b','b.pin = a.pin')
							->join('tbl_siswa s','s.nis = b.nis')
							->join('kelas k','k.idkelas = s.idkelas')
							->join('tingkat t','t.idtingkat = k.idtingkat')
							->get()->result();

			foreach ($absen as $ab) {
				
				$abs = [
					'nis' => $ab->nis,
					'departemen' => 'SMK YAPISDA',
					'idtingkat'
				];
			}
	}
}
