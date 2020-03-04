<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class PhpMail extends CI_Controller {

	public function __construct() { 
                parent::__construct(); 
                
                require APPPATH.'libraries/PHPMailer/src/Exception.php';
                require APPPATH.'libraries/PHPMailer/src/PHPMailer.php';
                require APPPATH.'libraries/PHPMailer/src/SMTP.php';
                 
                    }
                    function index() 
                    {

                        // PHPMailer object
                     $response = false;
                     $mail = new PHPMailer();
                   
            
                    // SMTP configuration
                    //$mail->isSMTP();
                    $mail->Host     = 'smtp.gmail.com'; //sesuaikan sesuai nama domain hosting/server yang digunakan
                    $mail->SMTPAuth = true;
                    $mail->Username = 'hmazud@gmail.com'; // user email
                    $mail->Password = '@Mazud_21'; // password email
                    $mail->SMTPSecure = 'ssl';
                    $mail->Port     = 25;
            
                    $mail->setFrom('no-reply@pdam.com', ''); // user email
                    //$mail->addReplyTo('xxx@hostdomain.com', ''); //user email
            
                    // Add a recipient
                    $mail->addAddress('linux96mint@gmail.com'); //email tujuan pengiriman email
            
                    // Email subject
                    $mail->Subject = 'Validasi Nomor Pelanggan & Password'; //subject email
            
                    // Set email format to HTML
                    $mail->isHTML(true);
            
                    // Email body content
                    $mailContent = "Nomor Pelanggan = xxx || Password  = xxx"; // isi email
                    $mail->Body = $mailContent;
            
                    // Send email
                    if(!$mail->send()){
                        echo 'Message could not be sent.';
                        echo 'Mailer Error: ' . $mail->ErrorInfo;
                    }else{
                        echo 'Message has been sent';
                    }
                }

}