<?php

class Product extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Handmadenesia';
        $this->load->view('templates/header', $data);
        $this->load->view('home/product');
        $this->load->view('templates/footer');
    }
}
