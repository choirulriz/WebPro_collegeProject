<?php

class Keranjang extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Handmadenesia';
        $this->load->view('templates/header', $data);
        $this->load->view('home/keranjang');
        $this->load->view('templates/footer');
    }
}
