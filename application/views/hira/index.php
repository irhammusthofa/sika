<div class="row">
    <div class="col-md-12">
      <?= fs_show_alert() ?>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Data Registrasi</h3>
            	<div class="box-tools">
           
                </div>
            </div>
            <div class="box-body">
            <table id="table1" class="table table-bordered table-hover">
                    <tr>
            <th>No</th>  
						<th>Judul Pekerjaan</th>
						<th>Jenis SIKA</th>						
            <th>No Notifikasi/WO</th>
						<th>Lampiran</th>
						<th>Actions</th>
                    </tr>
                    <?php foreach($hira as $h){
                    if (strtolower($h['jenis_sika'])=='izin kerja panas'){
                      $url_proses = 'ikp/add/';
                    }else{
                      $url_proses = 'ikd/add/';
                    } ?>
                    <tr>
              <td><?php echo $h['no']; ?></td>        
						  <td><?php echo $h['pekerjaan']; ?></td>
						  <td><?php echo $h['jenis_sika']; ?></td>
						<td><?php echo $h['no_notifikasi']; ?></td>
            <td><?= (empty($h['upload'])) ? '' : anchor('assets/lampiran/'.$h['upload'],'Lihat', array('target'=>'_blank')); ?></td>
						<td>
              <a href="<?php echo site_url('hira/edit/'.$h['no']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> Edit</a> 
              <a href="<?php echo site_url('hira/remove/'.$h['no']); ?>" class="btn btn-danger btn-xs"><span class="fa fa-trash"></span> Delete</a>

							<a href="<?php echo site_url($url_proses.$h['no']); ?>" class="btn btn-info btn-xs"><span class="fa fa-globe"></span> Proses </a>												

					    </td>
                    </tr>
                    <?php } ?>
                </table>

                           </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <div class="form-group col-md-1">
            <?= anchor('hira/add/','<i class="fa fa-plus"></i> Tambah', array('class' => 'btn btn-primary'));?>
          </div>
        </div>
        <!-- /.box-footer-->
      </div>      
            </div>
        </div>
    </div>
</div>
