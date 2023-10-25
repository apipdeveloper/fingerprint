<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');

        

    }

    public function index()
    {
        if ($this->session->userdata('is_login')) {
            redirect('Dashboard');
        }

        $this->form_validation->set_rules('email', 'email', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login Page';
           
           
            $this->load->view('auth/login',$data);
        } else {
            // validasinya success
            $this->_login();
        }
    }


    private function _login()
    {   
        // $db2 = $this->load->database('db_pusat', TRUE);

        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $user = $this->db->get_where('tbl_user', ['email' => $email])->row();

        // jika usernya ada
        if ($user) {
            // jika usernya aktif
            if ($user->is_active == "Y") {
                // cek password
                if (password_verify($password, $user->password)) {
                   
                    $ta = $this->db->get_where('tbl_tahun_ajaran',['id_sekolah'=>$user->id_sekolah,'status'=>'Y'])->row();
                    $semester = $this->db->get_where('tbl_semester',['id_sekolah'=>$user->id_sekolah,'status'=>'Y'])->row();
                    $data = [                        
                        'id_user'     => $user->id_user,                        
                        'email'       => $user->email,
                        'password'    => $user->password,
                        'id_level'    => $user->id_level,
                        'image'       => $user->image,
                        'logged_in'   => TRUE
                        ];
                    $this->session->set_userdata($data);
                    
                    redirect('Dashboard');
                   
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong!</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This email has not been activated!</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email is not registered!</div>');
            redirect('auth');
        }
    }




    public function logout()
    {   
        $data = ['id_user','email','password' ,'id_level','image','logged_in'];

        $this->session->unset_userdata($data);

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logged out!</div>');
        redirect('auth');
    }


    public function blocked()
    {
        $this->load->view('auth/blocked');
    }


    
}
