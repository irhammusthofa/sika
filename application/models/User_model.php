<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Model User
*/
class User_model extends CI_Model
{
	public function login($data){
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where('id',$data['id']);
		$this->db->where('password',fs_hash($data['password']));
		
		return $this->db->get();
	}
	public function select_all(){
		$this->db->select('*');
		$this->db->from('user');
		$this->db->order_by('id','ASC');

		return $this->db->get();
	}
	public function select_by_id($id){
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where('id',$id);

		return $this->db->get();
	}
	public function reset($id,$data){
		$this->db->where('id',$id);
		return $this->db->update('user',$data);
	}
	public function delete($id){
		return $this->db->delete('user',['id' => $id]);
	}
	public function insert($data){
		return $this->db->insert('user',$data);
	}
	public function update($id,$data){
		$this->db->where('id',$id);
		return $this->db->update('user',$data);
	}
	
}