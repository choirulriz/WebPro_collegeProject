<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Karir extends CI_Controller
{
	public function index()
	{
		$data['judul'] = 'Career';
		$this->load->view('templates/headerStatik', $data);
		$this->load->view('statik/karir');
		$this->load->view('templates/footerStatik');
	}
}
