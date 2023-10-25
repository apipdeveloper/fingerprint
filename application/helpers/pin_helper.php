<?php 

function pin(){

	$ci = get_instance();
	$pin = $ci->db->get('tbl_member')->num_rows();

	$pin = $pin + 1;

	return $pin;
}


 ?>