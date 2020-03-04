<?php 

class Home extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        if( ! $this->session->userdata('authenticated')) 
            redirect('authentication');
    }

    public function index()
    {
        $data['judul'] = 'Halaman Admin';
        $this->load->view('home/index', $data);
    }

}