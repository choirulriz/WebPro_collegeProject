<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Regis extends CI_Controller
{
    public function index()
    {
        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[pembeli.email]',
            [
                'is_unique' => 'Email ini telah terdaftar'
            ]
        );
        $this->form_validation->set_rules(
            'password1',
            'Password',
            'required|trim|min_length[3]',
            [
                'matches' => 'Kata sandi tidak sesuai!',
                'min_len' => 'Password too short!'
            ]
        );
        // $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
        if ($this->form_validation->run() == false) {
            $data['judul'] = 'Handmadenesia';
            $this->load->view('templates/header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templates/footer');
        } else {
            $data = [
                'Nama_Pembeli' => '',
                'Tentang_Kamu' => '',
                'Alamat_utama' => '',
                'Telp' => '',
                'Instagram' => '',
                'Facebook' => '',
                'Twitter' => '',
                'Gambar' => '',
                'username' => htmlspecialchars($this->input->post('name', true)),
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'email' => htmlspecialchars($this->input->post('email', true))
            ];
            $this->db->insert('pembeli', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Akun Anda telah terdaftar. Silakan login</div>');
            redirect('auth');
        }
    }
}
