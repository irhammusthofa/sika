<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Data Izin Kerja Dingin</h3>
            	<div class="box-tools">
                </div>
            </div>
            <div class="box-body">
			<table id="table1" class="table table-bordered table-hover">
                    <tr>
						<th>No</th>
						<th>Lanjutan No</th>
						<th>Tanggal Terbit</th>
						<th>Jam Kerja</th>
						<th>Nama Pelaksana</th>
						<th>Perusahaan</th>
						<th>Jumlah Pekerja</th>
						<th>Lokasi</th>
						<th>Izin Diperlukan</th>
						<th>Actions</th>
                    </tr>
                    <?php foreach($ikd as $i){ ?>
                    <tr>
						<td><?php echo $i['no']; ?></td>
						<td><?php echo $i['lanjutan_no']; ?></td>
						<td><?php echo $i['tanggal_terbit']; ?></td>
						<td><?php echo $i['jam_kerja']; ?></td>
						<td><?php echo $i['nama_pelaksana']; ?></td>
						<td><?php echo $i['perusahaan']; ?></td>
						<td><?php echo $i['jumlah_pekerja']; ?></td>
						<td><?php echo $i['lokasi']; ?></td>
						<td><?php echo $i['izin_diperlukan']; ?></td>
						<td>
                            <a href="<?php echo site_url('ikd/edit/'.$i['no']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> Edit</a> 
                            <a href="<?php echo site_url('ikd/remove/'.$i['no']); ?>" class="btn btn-danger btn-xs"><span class="fa fa-trash"></span> Delete</a>
                        </td>
                    </tr>
                    <?php } ?>
                </table>
				</div>
        <!-- /.box-body -->
        <div class="box-footer">
          <div class="form-group col-md-1">
            <?= anchor('ikd/add/','<i class="fa fa-plus"></i> Tambah', array('class' => 'btn btn-primary'));?>
          </div>
        </div>
        <!-- /.box-footer-->
      </div>     

            </div>
        </div>
    </div>
</div>
