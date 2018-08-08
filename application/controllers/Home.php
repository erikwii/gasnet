<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('home_model');
		
		// if(!isset($_SESSION["level"]) || $_SESSION["level"] != 1){
		// 	$_SESSION['deletex'] = "Anda tidak bisa mengakses halaman Admin...";
		// 	$_SESSION['jadwal_err'] = true;
		// 	redirect('/');
		// }
		
	}

	public function index()
	{
		if (isset($_SESSION['email']) && isset($_SESSION['password'])) {
			redirect(base_url()."home/inventaris/");
		}

		$data = array(
            'title'=> 'Gasnet - Login',
            'nav' => 'nav.php',
            'isi' => 'pages/home',
            'nav_active' => ''
        );
        $this->load->view('layout/wrapper',$data);
	}

	public function inventaris()
	{
		if (!isset($_SESSION['email']) || !isset($_SESSION['password'])) {
			$_SESSION['login_error'] = 'Anda belum melakukan login';
			redirect(base_url());
		}

		$data = array(
            'title'=> 'Gasnet - Inventaris',
            'nav' => 'nav.php',
            'isi' => 'pages/inventaris',
            'nav_active' => '',
            'inventaris' => $this->home_model->get_inventaris(),
            
        );
        $this->load->view('layout/wrapper',$data);
	}

	public function data_inventaris($IDinventaris)
	{
		$data = $this->home_model->get_inventaris($IDinventaris);
		echo json_encode($data);
	}

	public function tambah_inventaris()
	{
		if (!isset($_SESSION['email']) || !isset($_SESSION['password'])) {
			$_SESSION['login_error'] = 'Anda belum melakukan login';
			redirect(base_url());
		}

		$kodeBarang = $this->input->post('kodeBarang');
		$jenisAset = $this->input->post('jenisAset');
		$namaBarang = $this->input->post('IDbarang');
		$harga = $this->input->post('hargaBarang');
		$merk = $this->input->post('merk');
		$noMesin = $this->input->post('noMesin');
		$lokasi = $this->input->post('lokasi');
		$bahan = $this->input->post('bahan');
		$bulan = $this->input->post('bulan');
		$tahun = $this->input->post('tahun');
		$fileImage = $this->input->post('fileImage');
		
		$fileImageName = [null, null];

		if ($fileImage == null) {
			$config['upload_path']          = 'assets/img/inventaris/';
			$config['allowed_types']        = 'gif|jpg|png';
			$config['max_size']             = 0;
			$config['max_width']            = 0;
			$config['max_height']           = 0;

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload('fileImage')){
				$error = array('error' => $this->upload->display_errors());
			}else{
				$data = array('upload_data' => $this->upload->data());
				$fileImageName = ['success', $this->upload->data()['file_name']];
			}
		}else{
			$_SESSION['error'] = 'file tidak ada';
			redirect(base_url()."home/inventaris");
		}

		$data = array(
			'kodeBarang' => $kodeBarang,
			'jenisAset' => $jenisAset,
			'namaBarang' => $namaBarang,
			'harga' => $harga,
			'merk' => $merk,
			'noMesin' => $noMesin,
			'lokasi' => $lokasi,
			'bahan' => $bahan,
			'bulan' => $bulan,
			'tahun' => $tahun,
			'fileImage' => $fileImageName[1]
		);
		$this->db->insert('inventaris',$data);

		$noUrut = $this->home_model->get_urutan_barang($kodeBarang) + 1;

		$IDinventaris = $this->home_model->get_inventaris_where($data)['IDinventaris'];

		$this->db->set('noInventaris', $kodeBarang.'/'.$noUrut.'/'.$this->bulan_to_romawi($bulan).'/'.$tahun);
		$this->db->where($data);
		$this->db->update('inventaris');
		$_SESSION['success'] = 'Inventaris berhasil ditambahkan :)';
		redirect(base_url().'/home/inventaris');
	}

	public function cekurutan($kodeBarang)
	{
		echo $this->home_model->get_urutan_barang($kodeBarang) + 1;
	}

	public function edit_inventaris()
	{
		if (!isset($_SESSION['email']) || !isset($_SESSION['password'])) {
			$_SESSION['login_error'] = 'Anda belum melakukan login';
			redirect(base_url());
		}

		$IDinventaris = $this->input->post('IDinventaris');
		$kodeBarang = $this->input->post('editkodeBarang');
		$jenisAset = $this->input->post('editjenisAset');
		$namaBarang = $this->input->post('editnamaBarang');
		$merk = $this->input->post('editmerk');
		$harga = $this->input->post('edithargBarang');
		$noMesin = $this->input->post('editnoMesin');
		$lokasi = $this->input->post('editlokasi');
		$bahan = $this->input->post('editbahan');
		$bulan = $this->input->post('editbulan');
		$tahun = $this->input->post('edittahun');
		$fileImage = $this->input->post('namaFile');
		
		$fileImageName = array(null, null);

		$config['upload_path']          = 'assets/img/inventaris/';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 0;
		$config['max_width']            = 0;
		$config['max_height']           = 0;

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('editfileImage')){
			$error = array('error' => $this->upload->display_errors());			
		}else{
			$data = array('upload_data' => $this->upload->data());
			$fileImageName = array('success', $this->upload->data()['file_name']);
		}

		if ($fileImageName[1] == null) {
			$fileImageName = array('success', $fileImage);
		}

		$noInventaris = $this->home_model->get_inventaris_where(array('IDinventaris'=>$IDinventaris))['noInventaris'];
		$noInventaris = explode('/', $noInventaris);
		$noUrut = $noInventaris[1];

		$data = array(
			'kodeBarang' => $kodeBarang,
			'jenisAset' => $jenisAset,
			'namaBarang' => $namaBarang,
			'merk' => $merk,
			'harga' => $harga,
			'noMesin' => $noMesin,
			'lokasi' => $lokasi,
			'bahan' => $bahan,
			'bulan' => $bulan,
			'tahun' => $tahun,
			'noInventaris' => $kodeBarang.'/'.$noUrut.'/'.$this->bulan_to_romawi($bulan).'/'.$tahun,
			'fileImage' => $fileImageName[1]
		);
		$this->db->set($data);
		$this->db->where('IDinventaris', $IDinventaris);
		$this->db->update('inventaris');

		$_SESSION['success'] = 'Inventaris berhasil diupdate :)';
		redirect(base_url().'/home/inventaris');
	}

	public function hapus_inventaris($id)
	{	
		$file = $this->home_model->get_inventaris($id)['fileImage'];
		unlink(FCPATH.'assets/img/inventaris/'.$file);
		$this->db->delete('inventaris', array('IDinventaris' => $id));

		$_SESSION['success'] = 'Anda berhasil menghapus data inventaris!';
		redirect(base_url());
	}

	public function login(){
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$data = array(
			'email' => $email,
			'password' => $password,
			'title'=> 'My Karamel - Beranda',
			'nav' => 'nav.php',
			'isi' => 'pages/beranda',
			'nav_active' => 'beranda'
		);

		$whereS = array(
		    'email' => $email
        );

        if($email == "" || $password == ""){
        	$this->session->set_userdata('login_error', 'Harap masukkan semua input...');
        	redirect(base_url()."home/");
        }else{
            $login = $this->home_model->get_users($data);

            if($login != "not_registered"){
                $status = $this->home_model->get_usersStatus($whereS)->status;
            }

            if( $login == "not_registered"){
            	$this->session->set_userdata('login_error', 'Email belum terdaftar....');
            	redirect(base_url()."home/");
            }elseif ($status != "aktif"){
            	$this->session->set_userdata('login_error', 'Akun anda sudah di nonaktifkan....');
            	redirect(base_url()."home/");
            }else{
                $db_pass = $this->home_model->get_users_pass($email)->password;

                if(password_verify($password, $db_pass)){
                    $this->session->set_userdata('email', $email);
                    $this->session->set_userdata('password', $password);

                    redirect(base_url()."home/inventaris");
                }else{
                	$this->session->set_userdata('login_error', 'Password yang dimasukkan salah....');
                	redirect(base_url()."home/");
                }
            }
        }
	}

	function logout()
    {   
        if( $this->session->has_userdata('email')){
            unset(
                $_SESSION['email'],
                $_SESSION['password']
            );
            $this->session->sess_destroy();
       }
       redirect(base_url());
    }

    public function updatebulan()
	{
		$inventaris = $this->db->get('inventaris')->result();

		foreach ($inventaris as $i) {
			$b_section = explode('/', $i->noInventaris)[2];
			$bulan = $this->romawi_to_bulan($b_section);
			$data = array(
				'bulan' => $bulan
			);
			$this->db->set($data);
			$this->db->where('IDinventaris', $i->IDinventaris);
			$this->db->update('inventaris');
		}
		redirect(base_url().'home/inventaris');
	}

    public function bulan_to_romawi($val)
    {
    	$romawi = ['-','I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII'];
    	return $romawi[$val];
    }

    public function romawi_to_bulan($val)
    {
    	$romawi = ['I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII'];
    	return (array_search($val, $romawi)+1);
    }
}
