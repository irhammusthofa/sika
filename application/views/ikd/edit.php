<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Ikd Edit</h3>
            </div>
			<?php echo form_open('ikd/edit/'.$ikd['no']); ?>
			<div class="box-body">
				<div class="row clearfix">
					<div class="col-md-6">
						<label for="lanjutan_no" class="control-label">Lanjutan No</label>
						<div class="form-group">
							<input type="text" name="lanjutan_no" value="<?php echo ($this->input->post('lanjutan_no') ? $this->input->post('lanjutan_no') : $ikd['lanjutan_no']); ?>" class="form-control" id="lanjutan_no" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="tanggal_terbit" class="control-label">Tanggal Terbit</label>
						<div class="form-group">
							<input type="text" name="tanggal_terbit" value="<?php echo ($this->input->post('tanggal_terbit') ? $this->input->post('tanggal_terbit') : $ikd['tanggal_terbit']); ?>" class="has-datepicker form-control" id="tanggal_terbit" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="jam_kerja" class="control-label">Jam Kerja</label>
						<div class="form-group">
							<input type="text" name="jam_kerja" value="<?php echo ($this->input->post('jam_kerja') ? $this->input->post('jam_kerja') : $ikd['jam_kerja']); ?>" class="form-control" id="jam_kerja" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_pelaksana" class="control-label">Nama Pelaksana</label>
						<div class="form-group">
							<input type="text" name="nama_pelaksana" value="<?php echo ($this->input->post('nama_pelaksana') ? $this->input->post('nama_pelaksana') : $ikd['nama_pelaksana']); ?>" class="form-control" id="nama_pelaksana" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="perusahaan" class="control-label">Perusahaan</label>
						<div class="form-group">
							<input type="text" name="perusahaan" value="<?php echo ($this->input->post('perusahaan') ? $this->input->post('perusahaan') : $ikd['perusahaan']); ?>" class="form-control" id="perusahaan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="jumlah_pekerja" class="control-label">Jumlah Pekerja</label>
						<div class="form-group">
							<input type="text" name="jumlah_pekerja" value="<?php echo ($this->input->post('jumlah_pekerja') ? $this->input->post('jumlah_pekerja') : $ikd['jumlah_pekerja']); ?>" class="form-control" id="jumlah_pekerja" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="lokasi" class="control-label">Lokasi</label>
						<div class="form-group">
							<input type="text" name="lokasi" value="<?php echo ($this->input->post('lokasi') ? $this->input->post('lokasi') : $ikd['lokasi']); ?>" class="form-control" id="lokasi" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="izin_diperlukan" class="control-label">Izin Diperlukan</label>
						<div class="form-group">
							<input type="text" name="izin_diperlukan" value="<?php echo ($this->input->post('izin_diperlukan') ? $this->input->post('izin_diperlukan') : $ikd['izin_diperlukan']); ?>" class="form-control" id="izin_diperlukan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="sifat_pekerjaan" class="control-label">Sifat Pekerjaan</label>
						<div class="form-group">
							<input type="text" name="sifat_pekerjaan" value="<?php echo ($this->input->post('sifat_pekerjaan') ? $this->input->post('sifat_pekerjaan') : $ikd['sifat_pekerjaan']); ?>" class="form-control" id="sifat_pekerjaan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="keterangan" class="control-label">Keterangan</label>
						<div class="form-group">
							<input type="text" name="keterangan" value="<?php echo ($this->input->post('keterangan') ? $this->input->post('keterangan') : $ikd['keterangan']); ?>" class="form-control" id="keterangan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="isolasi_peralatan" class="control-label">Isolasi Peralatan</label>
						<div class="form-group">
							<input type="text" name="isolasi_peralatan" value="<?php echo ($this->input->post('isolasi_peralatan') ? $this->input->post('isolasi_peralatan') : $ikd['isolasi_peralatan']); ?>" class="form-control" id="isolasi_peralatan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="lampiran" class="control-label">Lampiran</label>
						<div class="form-group">
							<input type="text" name="lampiran" value="<?php echo ($this->input->post('lampiran') ? $this->input->post('lampiran') : $ikd['lampiran']); ?>" class="form-control" id="lampiran" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="identiikasi_bahaya" class="control-label">Identiikasi Bahaya</label>
						<div class="form-group">
							<input type="text" name="identiikasi_bahaya" value="<?php echo ($this->input->post('identiikasi_bahaya') ? $this->input->post('identiikasi_bahaya') : $ikd['identiikasi_bahaya']); ?>" class="form-control" id="identiikasi_bahaya" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="pengendalian_bahaya" class="control-label">Pengendalian Bahaya</label>
						<div class="form-group">
							<input type="text" name="pengendalian_bahaya" value="<?php echo ($this->input->post('pengendalian_bahaya') ? $this->input->post('pengendalian_bahaya') : $ikd['pengendalian_bahaya']); ?>" class="form-control" id="pengendalian_bahaya" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama1" class="control-label">Nama1</label>
						<div class="form-group">
							<input type="text" name="nama1" value="<?php echo ($this->input->post('nama1') ? $this->input->post('nama1') : $ikd['nama1']); ?>" class="form-control" id="nama1" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date1" class="control-label">Date1</label>
						<div class="form-group">
							<input type="text" name="date1" value="<?php echo ($this->input->post('date1') ? $this->input->post('date1') : $ikd['date1']); ?>" class="has-datepicker form-control" id="date1" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama2" class="control-label">Nama2</label>
						<div class="form-group">
							<input type="text" name="nama2" value="<?php echo ($this->input->post('nama2') ? $this->input->post('nama2') : $ikd['nama2']); ?>" class="form-control" id="nama2" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date2" class="control-label">Date2</label>
						<div class="form-group">
							<input type="text" name="date2" value="<?php echo ($this->input->post('date2') ? $this->input->post('date2') : $ikd['date2']); ?>" class="has-datepicker form-control" id="date2" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama3" class="control-label">Nama3</label>
						<div class="form-group">
							<input type="text" name="nama3" value="<?php echo ($this->input->post('nama3') ? $this->input->post('nama3') : $ikd['nama3']); ?>" class="form-control" id="nama3" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date3" class="control-label">Date3</label>
						<div class="form-group">
							<input type="text" name="date3" value="<?php echo ($this->input->post('date3') ? $this->input->post('date3') : $ikd['date3']); ?>" class="has-datepicker form-control" id="date3" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama4" class="control-label">Nama4</label>
						<div class="form-group">
							<input type="text" name="nama4" value="<?php echo ($this->input->post('nama4') ? $this->input->post('nama4') : $ikd['nama4']); ?>" class="form-control" id="nama4" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date4" class="control-label">Date4</label>
						<div class="form-group">
							<input type="text" name="date4" value="<?php echo ($this->input->post('date4') ? $this->input->post('date4') : $ikd['date4']); ?>" class="has-datepicker form-control" id="date4" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama" class="control-label">Nama</label>
						<div class="form-group">
							<input type="text" name="nama" value="<?php echo ($this->input->post('nama') ? $this->input->post('nama') : $ikd['nama']); ?>" class="form-control" id="nama" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date" class="control-label">Date</label>
						<div class="form-group">
							<input type="text" name="date" value="<?php echo ($this->input->post('date') ? $this->input->post('date') : $ikd['date']); ?>" class="has-datepicker form-control" id="date" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date_penghentian" class="control-label">Date Penghentian</label>
						<div class="form-group">
							<input type="text" name="date_penghentian" value="<?php echo ($this->input->post('date_penghentian') ? $this->input->post('date_penghentian') : $ikd['date_penghentian']); ?>" class="has-datepicker form-control" id="date_penghentian" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="waktu_penghentian" class="control-label">Waktu Penghentian</label>
						<div class="form-group">
							<input type="text" name="waktu_penghentian" value="<?php echo ($this->input->post('waktu_penghentian') ? $this->input->post('waktu_penghentian') : $ikd['waktu_penghentian']); ?>" class="form-control" id="waktu_penghentian" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_penghentian" class="control-label">Nama Penghentian</label>
						<div class="form-group">
							<input type="text" name="nama_penghentian" value="<?php echo ($this->input->post('nama_penghentian') ? $this->input->post('nama_penghentian') : $ikd['nama_penghentian']); ?>" class="form-control" id="nama_penghentian" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date_pengesahan" class="control-label">Date Pengesahan</label>
						<div class="form-group">
							<input type="text" name="date_pengesahan" value="<?php echo ($this->input->post('date_pengesahan') ? $this->input->post('date_pengesahan') : $ikd['date_pengesahan']); ?>" class="has-datepicker form-control" id="date_pengesahan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="waktu_pengesahan" class="control-label">Waktu Pengesahan</label>
						<div class="form-group">
							<input type="text" name="waktu_pengesahan" value="<?php echo ($this->input->post('waktu_pengesahan') ? $this->input->post('waktu_pengesahan') : $ikd['waktu_pengesahan']); ?>" class="form-control" id="waktu_pengesahan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_pengesahan" class="control-label">Nama Pengesahan</label>
						<div class="form-group">
							<input type="text" name="nama_pengesahan" value="<?php echo ($this->input->post('nama_pengesahan') ? $this->input->post('nama_pengesahan') : $ikd['nama_pengesahan']); ?>" class="form-control" id="nama_pengesahan" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="penutupan_izin" class="control-label">Penutupan Izin</label>
						<div class="form-group">
							<input type="text" name="penutupan_izin" value="<?php echo ($this->input->post('penutupan_izin') ? $this->input->post('penutupan_izin') : $ikd['penutupan_izin']); ?>" class="form-control" id="penutupan_izin" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_penerima" class="control-label">Nama Penerima</label>
						<div class="form-group">
							<input type="text" name="nama_penerima" value="<?php echo ($this->input->post('nama_penerima') ? $this->input->post('nama_penerima') : $ikd['nama_penerima']); ?>" class="form-control" id="nama_penerima" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date_penerima" class="control-label">Date Penerima</label>
						<div class="form-group">
							<input type="text" name="date_penerima" value="<?php echo ($this->input->post('date_penerima') ? $this->input->post('date_penerima') : $ikd['date_penerima']); ?>" class="has-datepicker form-control" id="date_penerima" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_pengawas" class="control-label">Nama Pengawas</label>
						<div class="form-group">
							<input type="text" name="nama_pengawas" value="<?php echo ($this->input->post('nama_pengawas') ? $this->input->post('nama_pengawas') : $ikd['nama_pengawas']); ?>" class="form-control" id="nama_pengawas" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date_pengawas" class="control-label">Date Pengawas</label>
						<div class="form-group">
							<input type="text" name="date_pengawas" value="<?php echo ($this->input->post('date_pengawas') ? $this->input->post('date_pengawas') : $ikd['date_pengawas']); ?>" class="has-datepicker form-control" id="date_pengawas" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="nama_pemberi" class="control-label">Nama Pemberi</label>
						<div class="form-group">
							<input type="text" name="nama_pemberi" value="<?php echo ($this->input->post('nama_pemberi') ? $this->input->post('nama_pemberi') : $ikd['nama_pemberi']); ?>" class="form-control" id="nama_pemberi" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="date_pemberi" class="control-label">Date Pemberi</label>
						<div class="form-group">
							<input type="text" name="date_pemberi" value="<?php echo ($this->input->post('date_pemberi') ? $this->input->post('date_pemberi') : $ikd['date_pemberi']); ?>" class="has-datepicker form-control" id="date_pemberi" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="uraian_pekerjaan" class="control-label">Uraian Pekerjaan</label>
						<div class="form-group">
							<textarea name="uraian_pekerjaan" class="form-control" id="uraian_pekerjaan"><?php echo ($this->input->post('uraian_pekerjaan') ? $this->input->post('uraian_pekerjaan') : $ikd['uraian_pekerjaan']); ?></textarea>
						</div>
					</div>
					<div class="col-md-6">
						<label for="peralatan" class="control-label">Peralatan</label>
						<div class="form-group">
							<textarea name="peralatan" class="form-control" id="peralatan"><?php echo ($this->input->post('peralatan') ? $this->input->post('peralatan') : $ikd['peralatan']); ?></textarea>
						</div>
					</div>
					<div class="col-md-6">
						<label for="identifikasi_tambahan" class="control-label">Identifikasi Tambahan</label>
						<div class="form-group">
							<textarea name="identifikasi_tambahan" class="form-control" id="identifikasi_tambahan"><?php echo ($this->input->post('identifikasi_tambahan') ? $this->input->post('identifikasi_tambahan') : $ikd['identifikasi_tambahan']); ?></textarea>
						</div>
					</div>
					<div class="col-md-6">
						<label for="permintaan_tambahan" class="control-label">Permintaan Tambahan</label>
						<div class="form-group">
							<textarea name="permintaan_tambahan" class="form-control" id="permintaan_tambahan"><?php echo ($this->input->post('permintaan_tambahan') ? $this->input->post('permintaan_tambahan') : $ikd['permintaan_tambahan']); ?></textarea>
						</div>
					</div>
					<div class="col-md-6">
						<label for="alasan" class="control-label">Alasan</label>
						<div class="form-group">
							<textarea name="alasan" class="form-control" id="alasan"><?php echo ($this->input->post('alasan') ? $this->input->post('alasan') : $ikd['alasan']); ?></textarea>
						</div>
					</div>
					<div class="col-md-6">
						<label for="catatan" class="control-label">Catatan</label>
						<div class="form-group">
							<textarea name="catatan" class="form-control" id="catatan"><?php echo ($this->input->post('catatan') ? $this->input->post('catatan') : $ikd['catatan']); ?></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="box-footer">
            	<button type="submit" class="btn btn-success">
					<i class="fa fa-check"></i> Save
				</button>
	        </div>				
			<?php echo form_close(); ?>
		</div>
    </div>
</div>