<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Panduan extends CI_Controller
{
	public function index()
	{
		$nurul['judul'] = 'panduan';
		$this->load->view('templates/headerStatik', $nurul);
		$this->load->view('statik/panduan');
		$this->load->view('templates/footerStatik');
	}
}
