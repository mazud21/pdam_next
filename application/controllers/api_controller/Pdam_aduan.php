<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pdam_aduan extends REST_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('api_model/Pengaduan_model_api');
    }
    
    public function index_get(){
        //$aduan = $this->Pengaduan_model_api->getAduan();

        $no_pelanggan = $this->get('no_pelanggan');

        if ($no_pelanggan === null) {
            $aduan = $this->Pengaduan_model_api->getAduan();
        } else {
            $aduan = $this->Pengaduan_model_api->getAduan($no_pelanggan);
        }

        if($aduan){
            $this->response([
                'status' => true,
                'data' => $aduan
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data tidak ditemukan !'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function index_post(){
        
        $data_pengaduan = [
            'no_pelanggan' => $this->post('no_pelanggan'),
            'keluhan' => $this->post('keluhan'),
        ];

        if ($this->Pengaduan_model_api->createPengaduan($data_pengaduan) > 0) {
            $this->response([
                'status' => true,
                'message' => 'Info pengaduan Berhasil ditambahkan'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => false,
                'data' => 'Gagal menambahkan info pengaduan air'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

}
