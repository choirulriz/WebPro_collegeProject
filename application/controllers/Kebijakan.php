<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kebijakan extends CI_Controller
{
	public function index()
	{
		$data['judul'] = 'Policies';
		$this->load->view('templates/headerStatik', $data);
		$this->load->view('statik/kebijakan', $data);
		$this->load->view('templates/footerStatik');
	}
}
