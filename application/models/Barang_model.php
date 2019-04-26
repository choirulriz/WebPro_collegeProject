<?php

class Barang_model extends CI_model
{
    public function getAllBarang()
    {
        return $this->db->get('barang')->result_array();
    }

    public function getBarangById($id)
    {
        return $this->db->get_where('barang', ['ID_Barang' => $id])->row_array();
    }

    public function hapusDataBarang($id)
    {
        $this->db->where('ID_Barang', $id);
        $this->db->delete('barang');
    }
}
