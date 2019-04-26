<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function index()
    {
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        if ($this->form_validation->run() == false) {
            $data['judul'] = 'Handmadenesia';
            $this->load->view('templates/header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $user = $this->db->get_where('pembeli', ['email' => $email])->row_array();

        //jika user ada
        if ($user) {
            //jika user telah diaktivasi

            //cek passwordnya
            if (password_verify($password, $user['password'])) {
                $data = [
                    'email' => $user['email'],
                    'ID_Pembeli' => $user['id']
                ];

                $this->session->set_userdata($data);
                redirect('home');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password yang Anda masukkan salah</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar</div>');
            redirect('auth');
        }
    }

    public function registration()
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




    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('id');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Anda telah logged out</div>');
        redirect('auth');
    }
}
