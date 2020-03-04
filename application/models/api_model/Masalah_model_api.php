<?php
class Masalah_model_api extends CI_Model{
    
    public function getMasalah(){
        //return $this->db->get('masalah_air')->result_array();
        $this->db->select('*');
        $this->db->from('masalah_air');
        $this->db->order_by('no_info','DESC');
        $query = $this->db->get();
        return $query->result_array();
    }
}