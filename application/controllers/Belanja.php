<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Belanja extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model();
	}
	public function index()
	{
		$this->load->view('templates/headerBelanja');
		$this->load->view('statik/belanja');
		$this->load->view('templates/footerStatik');
	}
}
