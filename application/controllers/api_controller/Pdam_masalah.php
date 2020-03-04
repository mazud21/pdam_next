<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pdam_masalah extends REST_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('api_model/Masalah_model_api');
    }
    
    public function index_get(){
        $masalah = $this->Masalah_model_api->getMasalah();
        
        if($masalah){
            $this->response([
                'status' => true,
                'data' => $masalah
            ], REST_Controller::HTTP_OK);
        }
    }
}
