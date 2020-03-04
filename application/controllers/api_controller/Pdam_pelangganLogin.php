<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pdam_pelangganLogin extends REST_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->load->database();
        $this->load->model('api_model/Pelanggan_model_api');
    }

    public function index_post()
    {
            $no_pelanggan=$this->post('no_pelanggan');
            $password= $this->post('password');
            $output = $this->Pelanggan_model_api->login($no_pelanggan,$password);
            if ($output)
            {
                $return_data = [
                    'nama' => $output->nama,
                    'email' => $output->email,
                    'alamat' => $output->alamat,
                    
                ];

                $message = [
                    'status' => true,
                    'data' => $return_data,
                ];
                $this->response($message, REST_Controller::HTTP_OK);
            }
    }
}