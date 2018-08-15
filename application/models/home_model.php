<?php
class Home_model extends CI_Model{
    
	function get_users($data){
		if($this->home_model->is_UserExist($data['email']) == 0 ){
			return "not_registered";
		}else{
			$where = "email =" . "'" . $data['email'] . "'";
			$this->db->select('*');
			$this->db->from('users');
			$this->db->where($where);
			$query = $this->db->get();
			if ($query->num_rows() > 0) {
				return "success";
			} else {
				return "failed";
			}
		}
	} 
	
	function get_users_level($email){
        $query = "select level from users where email = '".$email."'";
        return $this->db->query($query)->row();
    }

    function get_users_pass($email){
        $query = "select password from users where email = '".$email."'";
        return $this->db->query($query)->row();
    }

	function is_UserExist($email){
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('email', $email);
		return $query = $this->db->get()->num_rows();
	}
	
	public function get_inventaris($IDinventaris=null)
	{
		if (isset($IDinventaris)) {
			return $this->db->get_where('inventaris', array('IDinventaris'=>$IDinventaris))->result();
		}else{
			return $this->db->get('inventaris')->result();
		}
	}

	public function get_inventaris_where($where)
	{
		return $this->db->get_where('inventaris', $where)->row_array();
	}

	public function get_inventaris_column($select)
	{
		$this->db->distinct();
		$this->db->select($select);
		return $this->db->get('inventaris')->result();
	}

	public function get_urutan_barang($kodeBarang)
	{
		return $this->db->get_where('inventaris',array('kodeBarang'=>$kodeBarang))->num_rows();
	}
	
	public function change_dateToMonthIndo($tanggal){
		$arrTgl = explode("-", $tanggal);
		$th = $arrTgl[0];
		$tbln = $arrTgl[1];
		$tgl = $arrTgl[2];

		switch($tbln){
			case"01":
				$bulan="Januari";
				break;
			case"02":
				$bulan="Februari";
				break;
			case"03":
				$bulan="Maret";
				break;
			case"04":
				$bulan="April";
				break;
			case"05":
				$bulan="Mei";
				break;
			case"06":
				$bulan="Juni";
				break;
			case"07":
				$bulan="Juli";
				break;
			case"08":
				$bulan="Agustus";
				break;
			case"09":
				$bulan="September";
				break;
			case"10":
				$bulan="Oktober";
				break;
			case"11":
				$bulan="November";
				break;
			case"12":
				$bulan="Desember";
				break;
		}
		return $bulan;
	}
	
	public function month_indo($month){
		$bulan = "";
		switch($month){
			case"01":
				$bulan="Januari";
				break;
			case"02":
				$bulan="Februari";
				break;
			case"03":
				$bulan="Maret";
				break;
			case"04":
				$bulan="April";
				break;
			case"05":
				$bulan="Mei";
				break;
			case"06":
				$bulan="Juni";
				break;
			case"07":
				$bulan="Juli";
				break;
			case"08":
				$bulan="Agustus";
				break;
			case"09":
				$bulan="September";
				break;
			case"10":
				$bulan="Oktober";
				break;
			case"11":
				$bulan="November";
				break;
			case"12":
				$bulan="Desember";
				break;
		}
		return $bulan;
	}


    public function get_usersStatus($where){
        $this->db->from('users');
        $this->db->where($where);
        $query = $this->db->get();
        return $query->row();
    }

}