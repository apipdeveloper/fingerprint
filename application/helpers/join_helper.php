<?php
	function join_member($param){
	
	$ci = get_instance();

		$query = $ci->db->get_where('tbl_siswa',['nis' => $param]);

		if($query->num_rows() > 0){
			$siswa = $query->row();
			$nama = $siswa->nama;

		}else{
			$pegawai = $ci->db->get_where('tbl_pegawai',['nip' => $param])->row();

			$nama = $pegawai->nama;

		}

		
		 return($nama);
	}

	
