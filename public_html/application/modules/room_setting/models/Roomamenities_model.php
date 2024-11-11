<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roomamenities_model extends CI_Model {
	
	private $table = 'room_amenities';
 
	public function create($data = array())
	{
		return $this->db->insert($this->table, $data);
	}
	
	public function delete($id = null)
	{
		$this->db->where('id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	
	public function update($data = array())
	{
	  
		return $this->db->where('id',$data["id"])
			->update($this->table, $data);
	}

    public function read()
	{
	    $this->db->select('room_amenities.*,roomdetails.roomid,roomdetails.roomtype');
        $this->db->from($this->table);
		$this->db->join('roomdetails','roomdetails.roomid=room_amenities.room_id','left');
        $this->db->order_by('room_amenities.room_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result();    
        }
        return false;
	} 

	public function findById($id = null)
	{ 
		return $this->db->select("*")->from($this->table)
			->where('id',$id) 
			->get()
			->row();
	} 

	public function findByName($name = null)
	{ 
		return $this->db->select("*")->from($this->table)
			->where('amenity',$name) 
			->get()
			->row();
	} 

 
public function countlist()
	{
		$this->db->select('room_amenities.*,roomdetails.roomid,roomdetails.roomtype');
        $this->db->from($this->table);
		$this->db->join('roomdetails','roomdetails.roomid=room_amenities.room_id','left');
        $this->db->order_by('room_amenities.room_id', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();  
        }
        return false;
	}
public function allrooms()
	{
		$data = $this->db->select("*")
			->from('roomdetails')
			->get()
			->result();

		$list[''] = 'Select Room';
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->roomid] = $value->roomid.'-'.$value->roomtype;
			return $list;
		} else {
			return false; 
		}
	}
}
