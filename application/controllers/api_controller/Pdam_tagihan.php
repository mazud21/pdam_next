<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pdam_tagihan extends REST_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('api_model/Tagihan_model_api');
    }
    
    public function index_get(){
        //$tagihan = $this->Tagihan_model_api->getTagihan($no_tagihan);
        
        $no_pelanggan = $this->get('no_pelanggan');

        if ($no_pelanggan === null) {
            $tagihan = $this->Tagihan_model_api->getTagihan();
        } else {
            $tagihan = $this->Tagihan_model_api->getTagihan($no_pelanggan);
        }

        if($tagihan){
            $this->response([
                'status' => true,
                'data' => $tagihan
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data tidak ditemukan !'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}
