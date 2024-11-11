<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class room_amenities extends MX_Controller {
    
    public function __construct()
    {
        parent::__construct();
		$this->load->model(array(
			'roomamenities_model'
		));	
    }
 
    public function index($id = null)
    {
        
		$this->permission->method('room_setting','read')->redirect();
        $data['title']    = "Room Amenities"; 
        #
        #pagination starts
        #
        $config["base_url"] = base_url('room_setting/room_amenities/index');
        $config["total_rows"]  = $this->roomamenities_model->countlist();
        $config["per_page"]    = 15;
        $config["uri_segment"] = 4;
        /* This Application Must Be Used With BootStrap 4 * */
        $config['full_tag_open']='<ul class="pagination pagination-md">';
        $config['full_tag_close']='</ul>';
		$config['first_link'] = false;
		$config['first_tag_open'] = '<li class="page-item disabled">';
        $config['first_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="page-item"><a class="page-link active">';
        $config['cur_tag_close'] = '</a></li>';
		$config['next_link'] = '<i class="ti-angle-right"></i>';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tagl_close'] = '</a></li>';
		$config['prev_link'] = '<i class="ti-angle-left"></i>';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tagl_close'] = '</li>';
		$config['last_link'] =false;
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tagl_close'] = '</a></li>';
        $config['attributes'] = array('class' => 'page-link');
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["roomamenities"] = $this->roomamenities_model->read();
        $data["links"] = $this->pagination->create_links();
		
		if(!empty($id)) {
		$data['title'] = display('bed_edit');
		$data['intinfo']   = $this->roomamenities_model->findById($id);
	   }
	    $data["allrooms"] = $this->roomamenities_model->allrooms();
        #
        #pagination ends
        #   
        $data['module'] = "room_setting";
        $data['page']   = "roomamenities";   
        echo Modules::run('template/layout', $data); 
    }
	
	
    public function create($id = null)
    {
	  $data['title'] = display('bed_add');
	  $this->form_validation->set_rules('room_name',display('room_name'),'required');
	  $this->form_validation->set_rules('amenity',display('amenity'),'required');
	 
	  $saveid=$this->session->userdata('id');
	  $id=$this->input->post('amenity', TRUE);
	  $this->input->post('discount',TRUE);
	  $data['intinfo']="";
	  
	  if ($this->form_validation->run()) { 
	   if(empty($this->input->post('amenity_id', TRUE))) {
	       
	       $sql = false;
	       
    	   $data['room_setting']   = (Object) $postData = array(
            		   'room_id' 	         => $this->input->post('room_name',TRUE),
            		   'amenity' 	         => $this->input->post('amenity',TRUE)
            		  );
            // $check = $this->roomamenities_model->findByName($this->input->post('amenity',TRUE));	  
    		$this->permission->method('room_setting','create')->redirect();
    		$sql = $this->roomamenities_model->create($postData);
		
    		if ($sql) { 
    		 $this->session->set_flashdata('message', display('save_successfully'));
    		} else {
    		 $this->session->set_flashdata('exception',  display('please_try_again'));
    		}
		
		redirect("room_setting/room-amenities"); 
	
	   } else {
		   
		
		$data['room_setting']   = (Object) $postData = array(
            		   'id' 	        => $this->input->post('amenity_id',TRUE),
            		   'room_id' 	        => $this->input->post('room_name',TRUE),
            		   'amenity' 	         => $this->input->post('amenity',TRUE)
            		  );
	   
		if ($this->roomamenities_model->update($postData)) { 
		    $this->session->set_flashdata('message', display('update_successfully'));
		} else {
		    $this->session->set_flashdata('exception',  display('please_try_again'));
		}
		redirect("room_setting/room-amenities");  
	   }
	  }   
 
    }
    
    
   public function updateintfrm($id){
		$this->permission->method('room_setting','update')->redirect();
		$data['title'] = display('amenities_edit');
		$data["allrooms"] = $this->roomamenities_model->allrooms();
		$data['intinfo']   = $this->roomamenities_model->findById($id);
        $data['module'] = "room_setting";  
        $data['page']   = "roomamenitiesedit";
		$this->load->view('room_setting/roomamenitiesedit', $data);   
	   }
 
    public function delete($id = null)
    {
        $this->permission->module('room_setting','delete')->redirect();
		
		if ($this->roomamenities_model->delete($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('room_setting/room-amenities');
    }
 
}
