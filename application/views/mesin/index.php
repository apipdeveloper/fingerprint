<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"><?= $title; ?></h1>
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="col-md-12 mt-4">
        <div class="card card-primary card-outline">
              <div class="card-header">
                <a href="#" class="btn btn-success" data-toggle="modal" data-target="#modal-add-mesin"><i class="fas fa-plus"></i> Tambah</a>
              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-bordered table-striped table-hover">
                  	
                        <thead class="bg-primary">
                          <tr>
                            
                            <th>#</th>
                            <th>Nama Mesin</th>
                            <th>Model</th>
                            <th>SN</th>
                            <th>IP Address</th>   
                            <th>Action</th>
                          </tr>
                        </thead>
                         <tbody>
                          <?php $no=1; foreach ($mesin as $mc): ?>
                          	<tr>
                          		<td><?= $no++;?></td>
                          		<td><?= $mc->nama_mesin;?></td>
                              <td><?= $mc->model;?></td>
                              <td><?= $mc->sn;?></td>
                          		<td><?= $mc->ip_address;?></td>
                          		<td class="text-center">
                                <a href="#" id="sync" class="btn  btn-info btn-xs" onclick="cek_koneksi('<?= encrypt_url($mc->id_mesin);?>')"><i class="fas fa-sync"></i> Koneksi</a>

                                 <a href="#" class="btn  btn-default btn-xs" data-toggle="modal" data-target="#modal-opsi<?= $mc->id_mesin;?>" data-keyboard="false" data-backdrop="static"><i class="fas fa-wrench"></i> opsi</a>   

                                <a href="#"  class="btn  btn-primary btn-xs" data-toggle="modal" data-target="#edit-mesin<?= $mc->id_mesin;?>"><i class="fas fa-edit"></i> Edit</a>

                                <a href="<?= base_url('Mesin/DeleteMesin/'.encrypt_url($mc->id_mesin));?>" class="btn  btn-danger btn-xs"><i class="fas fa-trash"></i> Delete</a> 

                              </td>
                          	</tr>
                          <?php endforeach ?>
                        </tbody>
                        

                  </table>
                </div>

              </div>
              <!-- /.card -->
            </div>
        </div>
       
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <div class="modal fade" id="modal-add-mesin">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Mesin</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="" method="post">
            <div class="modal-body">
              
                <div class="form-group">
                  <label>Nama Mesin</label>
                  <input type="text" name="nama_mesin" class="form-control">
                </div>

                <div class="form-group">
                  <label>IP Address</label>
                  <input type="text" name="ip_address" class="form-control">
                </div>
                
              

            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->


      

      <?php foreach ($mesin as $mc): ?>
        <div class="modal fade" id="edit-mesin<?= $mc->id_mesin;?>">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Ubah Mesin</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="<?= base_url('Mesin/editMesin/'.encrypt_url($mc->id_mesin));?>" method="post">
            <div class="modal-body">
              
                <div class="form-group">
                  <label>Nama Mesin</label>
                  <input type="text" name="nama_mesin" class="form-control" value="<?= $mc->nama_mesin; ?>">
                </div>

                <div class="form-group">
                  <label>IP Address</label>
                  <input type="text" name="ip_address" class="form-control" value="<?= $mc->ip_address; ?>">
                </div>
                
              

            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->




      <!-- opsi mesin -->

       <div class="modal fade" id="modal-opsi<?= $mc->id_mesin;?>" >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tools <?= $mc->nama_mesin; ?></h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="" method="post">
            <div class="modal-body">
              
                <ul class="list-group">
                 
                  <li class="list-group-item d-flex justify-content-between align-items-center">
                    Restart device
                    <button type="button" id="restart" class="btn btn-danger"><i class="fas fa-power-off"></i></button>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center">
                    Update Time
                    <button type="button" onclick="cek_tanggal('<?= $mc->ip_address;?>');" class="btn btn-info"><i class="fas fa-sync"></i></button>
                  </li>
                </ul>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <?php endforeach ?>
  

<script>

function cek_koneksi(id)
{
   $.ajax({
      type    : "POST",
      dataType  : "JSON",
      url     :"<?= base_url(); ?>/Mesin/cek_koneksi/"+id,      
      success   :function(data){
        if (data === "200") {
          flash_alert('bg-success','Berhasil','Berhasil Melakukan Koneksi Ke Fingerprint.');
        }else{
          flash_alert('bg-danger','Gagal.!','Gagal Melakukan Koneksi Ke Fingerprint.');
        }
      }
    });
}

//synchronize
function cek_tanggal(ip)
{
	
   $.ajax({
      type    : "POST",
      dataType  : "JSON",
      url     :"<?= base_url(); ?>/Mesin/tanggal/"+ip,      
      success   :function(data){
        if (data['message'] === "200") {
          flash_alert('bg-success','Berhasil','Syncronize success.');
        }else{
          flash_alert('bg-danger','Gagal.!','Gagal Melakukan Koneksi Ke Fingerprint.');
        }
      }
    });
}



</script>

      