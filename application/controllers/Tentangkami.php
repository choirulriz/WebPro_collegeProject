<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentangkami extends CI_Controller
{
	public function index()
	{
		$data['judul'] = 'About';
		$this->load->view('templates/headerStatik', $data);
		$this->load->view('statik/tentangKami');
		$this->load->view('templates/footerStatik');
	}
}
