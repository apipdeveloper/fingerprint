<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require FCPATH . 'vendor/autoload.php';
use TADPHP\TAD;
use TADPHP\TADFactory;
use TADPHP\TADResponse;
use TADPHP\Providers\TADSoap;
use TADPHP\Providers\TADZKLib;
use TADPHP\Providers\FilterArgumentError;
// use TADPHP\Providers\UnrecognizedArgument;
// use TADPHP\Providers\UnrecognizedCommand;

error_reporting(0);

class Setting extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$this->load->library('ZKLibrary');
		
	}

	public function koneksi()
	{
		$zk = new ZKLibrary('192.168.1.203', 4370);
		$zk->connect();
		$zk->disableDevice();

		// $zk->setTime(date('Y-m-d H:i:s'));
		$users = $zk->getSerialNumber();
		var_dump($users);

		$zk->enableDevice();
		$zk->disconnect();
	}

	public function getlog()
	{
		$zk = new ZKLibrary('192.168.1.203', 4370);
		$zk->connect();
		$zk->disableDevice();
		
		$logs= $zk->getAttendance();

		// $zk->setTime(date('Y-m-d H:i:s'));
		
		foreach ($logs as $log){
			$data []= [
				'pin'=> $log[1],
				'date' => date('Y-m-d',strtotime($log[3])),
				'time' => date('H:i:s',strtotime($log[3])),
			];


			

		}

		echo json_encode($data);

		$zk->enableDevice();
		$zk->disconnect();
	}

	

	

}

/* End of file Mesin.php */
/* Location: ./application/controllers/Mesin.php */
