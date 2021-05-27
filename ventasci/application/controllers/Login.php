<?php  
defined('BASEPATH') OR exit('No direct script access allowed');  
  
class Login extends CI_Controller {  
      
    public function index()  
    {  
        $this->load->view('login_view');  
    }  
    public function process()  
    {  
        $user = $this->input->post('user');  
        $pass = $this->input->post('pass');  
        if ($user=='admin' && $pass=='12345')   
        {  
            //declaring session  
            $this->session->set_userdata(array('user'=>$user));  
            $this->load->view('encabezado');  
        }  
        else{  
            $data['error'] = '❌❌🚷 !DATOS ERRONEOS! 🚷❌❌
                                usuario:admin
                                contraseña: 12345';  
            $this->load->view('login_view', $data);  
        }  
    }  
    public function logout()  
    {  
        //removing session  
        $this->session->unset_userdata('user');  
        redirect("Login");  
    }  
  
}  
?>  