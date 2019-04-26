<?php

class Home extends CI_Controller
{

    public function index()
    {
        $data['judul'] = 'beranda';
        $data['barang'] = $this->Barang_model->getAllBarang();
        $this->load->view('templates/header', $data);
        $this->load->view('home/index', $data);
        $this->load->view('templates/footer');
    }

    public function product($id)
    {
        $data['judul'] = 'Handmadenesia';
        $data['barang'] = $this->Barang_model->getBarangById($id);
        $data['toko'] = $this->Toko_model->getTokoById($id);
        $this->load->view('templates/header', $data);
        $this->load->view('home/product', $data);
        $this->load->view('templates/footer');
    }
}
