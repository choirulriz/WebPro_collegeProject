<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pembayaran extends CI_Controller
{
	public function index()
	{
		$this->load->view('templates/headerPembayaran');
		$this->load->view('statik/pembayaran');
		$this->load->view('templates/footerStatik');
	}
}
