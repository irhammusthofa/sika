<?php

class Ikp extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('logged_in'))
		{
			redirect('logout');
        }
        $this->load->model('Ikp_model');
    } 

    /*
     * Listing of ikp
     */
    function index()
    {
        $data['ikp'] = $this->Ikp_model->get_all_ikp();
        
        $data['_view'] = 'ikp/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new ikp
     */
    function add($id)
    {   
		$data['jam_kerja'][''] = 'Pilih Jam ';
        $data['jam_akhir_kerja'][''] = 'Pilih Jam ';
        for ($i=1; $i < 26; $i++) { 
            if($i<25){
                $caption = str_pad($i,2,"0",STR_PAD_LEFT).".00";
                $data['jam_kerja'][$caption] = $caption;
                $data['jam_akhir_kerja'][$caption] = $caption;
            }else{
                $data['jam_kerja']['jam_akhir_kerja'] = 'jam_akhir_kerja';
                $data['jam_akhir_kerja']['jam_akhir_kerja'] = 'jam_akhir_kerja';
            }        
        }
        $data['id'] = $id;
        if(isset($_POST) && count($_POST) > 0)     
        {   
            $params = array(
				'pengendalian_bahaya' => json_encode($this->input->post('pengendalian_bahaya')),
				'permintaan_tambahan' => $this->input->post('permintaan_tambahan'),
				'nama1' => $this->input->post('nama1'),
				'date1' => $this->input->post('date1'),
				'nama2' => $this->input->post('nama2'),
				'date2' => $this->input->post('date2'),
				'nama3' => $this->input->post('nama3'),
				'date3' => $this->input->post('date3'),
				'nama4' => $this->input->post('nama4'),
				'date4' => $this->input->post('date4'),
				'nama' => $this->input->post('nama'),
				'date' => $this->input->post('date'),
				'date_penghentian' => $this->input->post('date_penghentian'),
				'waktu_penghentian' => $this->input->post('waktu_penghentian'),
				'nama_penghentian' => $this->input->post('nama_penghentian'),
				'date_pengesahan' => $this->input->post('date_pengesahan'),
				'waktu_pengesahan' => $this->input->post('waktu_pengesahan'),
				'nama_pengesahan' => $this->input->post('nama_pengesahan'),
				'penutupan_izin' => $this->input->post('penutupan_izin'),
				'nama_penerima' => $this->input->post('nama_penerima'),
				'date_penerima' => $this->input->post('date_penerima'),
				'nama_pengawas' => $this->input->post('nama_pengawas'),
				'date_pengawas' => $this->input->post('date_pengawas'),
				'nama_pemberi' => $this->input->post('nama_pemberi'),
				'date_pemberi' => $this->input->post('date_pemberi'),
				'lanjutan_no' => $this->input->post('lanjutan_no'),
				'tanggal_terbit' => $this->input->post('tanggal_terbit'),
				'jam_kerja' => $this->input->post('jam_kerja'),
				'nama_pelaksana' => $this->input->post('nama_pelaksana'),
				'perusahaan' => $this->input->post('perusahaan'),
				'jumlah_pekerja' => $this->input->post('jumlah_pekerja'),
				'lokasi' => $this->input->post('lokasi'),
				'peralatan' => $this->input->post('peralatan'),
				'izin_diperlukan' => json_encode ($this->input->post('izin_diperlukan')),
				'sifat_pekerjaan' => json_encode ($this->input->post('sifat_pekerjaan')),
				'isolasi_peralatan' => json_encode ($this->input->post('isolasi_peralatan')),
				'lampiran' => json_encode ($this->input->post('lampiran')),
				'identiikasi_bahaya' => json_encode ($this->input->post('identiikasi_bahaya')),
				'identifikasi_tambahan' => $this->input->post('identifikasi_tambahan'),
				'alasan' => $this->input->post('alasan'),
				'catatan' => $this->input->post('catatan'),
				'uraian_pekerjaan' => $this->input->post('uraian_pekerjaan'),
                'id_hira' => $id,
            );
            
            $ikp_id = $this->Ikp_model->add_ikp($params);
            redirect('ikp/index');
        }
        else
        {            
            $data['_view'] = 'ikp/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a ikp
     */
    function edit($no)
    {   
        // check if the ikp exists before trying to edit it
		$data['ikp'] = $this->Ikp_model->get_ikp($no);
		
		$data['jam_kerja'][''] = 'Pilih Jam ';
        $data['jam_akhir_kerja'][''] = 'Pilih Jam ';
        for ($i=1; $i < 26; $i++) { 
            if($i<25){
                $caption = str_pad($i,2,"0",STR_PAD_LEFT).".00";
                $data['jam_kerja'][$caption] = $caption;
                $data['jam_akhir_kerja'][$caption] = $caption;
            }else{
                $data['jam_kerja']['jam_akhir_kerja'] = 'jam_akhir_kerja';
                $data['jam_akhir_kerja']['jam_akhir_kerja'] = 'jam_akhir_kerja';
            }        
        }
        
        if(isset($data['ikp']['no']))
        {
            if(isset($_POST) && count($_POST) > 0)     
            {   
                $params = array(
					'pengendalian_bahaya' =>json_encode($this->input->post('pengendalian_bahaya')),
					'permintaan_tambahan' => $this->input->post('permintaan_tambahan'),
					'nama1' => $this->input->post('nama1'),
					'date1' => $this->input->post('date1'),
					'nama2' => $this->input->post('nama2'),
					'date2' => $this->input->post('date2'),
					'nama3' => $this->input->post('nama3'),
					'date3' => $this->input->post('date3'),
					'nama4' => $this->input->post('nama4'),
					'date4' => $this->input->post('date4'),
					'nama' => $this->input->post('nama'),
					'date' => $this->input->post('date'),
					'date_penghentian' => $this->input->post('date_penghentian'),
					'waktu_penghentian' => $this->input->post('waktu_penghentian'),
					'nama_penghentian' => $this->input->post('nama_penghentian'),
					'date_pengesahan' => $this->input->post('date_pengesahan'),
					'waktu_pengesahan' => $this->input->post('waktu_pengesahan'),
					'nama_pengesahan' => $this->input->post('nama_pengesahan'),
					'penutupan_izin' => $this->input->post('penutupan_izin'),
					'nama_penerima' => $this->input->post('nama_penerima'),
					'date_penerima' => $this->input->post('date_penerima'),
					'nama_pengawas' => $this->input->post('nama_pengawas'),
					'date_pengawas' => $this->input->post('date_pengawas'),
					'nama_pemberi' => $this->input->post('nama_pemberi'),
					'date_pemberi' => $this->input->post('date_pemberi'),
					'lanjutan_no' => $this->input->post('lanjutan_no'),
					'tanggal_terbit' => $this->input->post('tanggal_terbit'),
					'jam_kerja' => $this->input->post('jam_kerja'),
					'nama_pelaksana' => $this->input->post('nama_pelaksana'),
					'perusahaan' => $this->input->post('perusahaan'),
					'jumlah_pekerja' => $this->input->post('jumlah_pekerja'),
					'lokasi' => $this->input->post('lokasi'),
					'peralatan' => $this->input->post('peralatan'),
					'izin_diperlukan' => json_encode($this->input->post('izin_diperlukan')),
					'sifat_pekerjaan' => json_encode($this->input->post('sifat_pekerjaan')),
					'isolasi_peralatan' => json_encode($this->input->post('isolasi_peralatan')),
					'lampiran' => json_encode($this->input->post('lampiran')),
					'identiikasi_bahaya' => json_encode($this->input->post('identiikasi_bahaya')),
					'identifikasi_tambahan' => $this->input->post('identifikasi_tambahan'),
					'alasan' => $this->input->post('alasan'),
					'catatan' => $this->input->post('catatan'),
					'uraian_pekerjaan' => $this->input->post('uraian_pekerjaan'),
                );

                $this->Ikp_model->update_ikp($no,$params);            
                redirect('ikp/index');
            }
            else
            {
                $data['_view'] = 'ikp/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The ikp you are trying to edit does not exist.');
    } 

    /*
     * Deleting ikp
     */
    function remove($no)
    {
        $ikp = $this->Ikp_model->get_ikp($no);

        // check if the ikp exists before trying to delete it
        if(isset($ikp['no']))
        {
            $this->Ikp_model->delete_ikp($no);
            redirect('ikp/index');
        }
        else
            show_error('The ikp you are trying to delete does not exist.');
    }
    
}
