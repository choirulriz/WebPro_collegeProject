<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tentangkami extends CI_Controller {
public function index(){
	$this->load->view('templates/headerStatik');
	$this->load->view('statik/tentangKami');
	$this->load->view('templates/footerStatik');
}

}