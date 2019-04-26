<?php

class Toko_model extends CI_model
{
    public function getAllToko()
    {
        return $this->db->get('Toko')->result_array();
    }

    public function getTokoById($id)
    {
        return $this->db->get_where('toko', ['ID_Toko' => $id])->row_array();
    }

    public function hapusDataToko($id)
    {
        $this->db->where('ID_Toko', $id);
        $this->db->delete('toko');
    }
}
