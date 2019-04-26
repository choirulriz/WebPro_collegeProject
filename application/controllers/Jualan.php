<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jualan extends CI_Controller
{
	public function index()
	{
		$this->load->view('templates/headerJualan');
		$this->load->view('statik/jualan');
		$this->load->view('templates/footerStatik');
	}
}
