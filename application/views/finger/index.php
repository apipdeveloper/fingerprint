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

			<?= $this->session->flashdata('message'); ?>
        
        <div class="col-md-12 mt-4">
        <div class="card card-success card-outline">
              <div class="card-header">
                <a href="#" class="btn btn-success" data-toggle="modal" data-target="#modal-add-siswa"><i class="fas fa-user-plus"></i> Daftar Siswa</a>
                <a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-add-guru"><i class="fas fa-user-plus"></i> Daftar Guru</a>
              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-bordered table-hover">
                  	
                        <thead class="bg-info">
                          <tr>
                            <th>PIN</th>
														<th>NIP/NIS</th>
                            <th>Nama</th>
                            <th>#</th>
                          </tr>
                        </thead>
                         <tbody>
                          <?php $no=1; foreach ($member as $m): ?>
                            <tr>
                              <td><?= $m->pin;?></td>
															<td>
																<?php if($m->nis === ''){
																	$nama = $m->nip;
																	echo $m->nip;
																}else{
																	$nama = $m->nis;
																	echo $m->nis;
																}?>	
															</td>
															<td><?= join_member($nama);?></td>
                              
                              
                              <td>
																<a href="#" class="fas fa-trash text-danger" data-toggle="modal" data-target="#modal-del-siswa<?= $m->pin;?>"></a>
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
  

		<!--add siswa-->
      <div class="modal fade" id="modal-add-siswa">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah User</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="<?= base_url('Fingerprint/add_user');?>" method="post">
            <div class="modal-body">
                
                 <div class="form-group">
                  <label>Device</label>
                  <select name="ip" id="ip" class="form-control">
                    <option value="" selected disabled>::pilih::</option>
                    <?php foreach ($mesin as $m): ?>
                      <option value="<?= $m->ip_address;?>"><?= $m->nama_mesin;?></option>
                    <?php endforeach ?>
                  </select>
                </div>

                <div class="form-group">
                  <label>PIN</label>
                  <input type="text" name="pin" class="form-control" value="<?= $pin;?>">
                </div>

                <div class="form-group">
                  <label>Kelas</label>
                  <select name="idkelas" id="idkelas" class="form-control">
                    <option value="" selected disabled>::pilih::</option>
                    <?php foreach ($kelas as $k): ?>
                      <option value="<?= $k->kelas;?>"><?= $k->kelas;?></option>
                    <?php endforeach ?>
                  </select>
                </div>

                <div class="form-group">
                  <label>Nama</label>
                  <select name="nis" id="nis" class="form-control select2" style="width: 100%;"></select>
                </div>

                <div class="form-group">
                  <label>Nama di Finger</label>
                  <input type="text" name="nama" id="nama" class="form-control">            
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
			
			<!--add guru-->
      <div class="modal fade" id="modal-add-guru">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Guru</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="<?= base_url('Fingerprint/add_guru');?>" method="post">
            <div class="modal-body">
                
                 <div class="form-group">
                  <label>Device</label>
                  <select name="ip" id="ip" class="form-control">
                    <option value="" selected disabled>::pilih::</option>
                    <?php foreach ($mesin as $m): ?>
                      <option value="<?= $m->ip_address;?>"><?= $m->nama_mesin;?></option>
                    <?php endforeach ?>
                  </select>
                </div>

                <div class="form-group">
                  <label>PIN</label>
                  <input type="text" name="pin" class="form-control" value="<?= $pin;?>">
                </div>

               
                <div class="form-group">
                  <label>Nama</label>
                  <select name="nip" id="nip_guru" class="form-control select2" style="width: 100%;">
										<option value="" selected disabled>:: Pilih ::</option>	
										<?php foreach($guru as $guru): ?>
                      <option value="<?= $guru->nip;?>"><?= $guru->nama;?></option>
                    <?php endforeach; ?>	
									</select>
                </div>

                <div class="form-group">
                  <label>Nama di Finger</label>
                  <input type="text" name="nama" id="nama_guru" class="form-control">            
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
      <!-- /.modal guru --> 
			
			<?php foreach ($member as $m):?>

			<!-- del user -->
			<div class="modal fade" id="modal-del-siswa<?= $m->pin;?>">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header bg-danger">
              <h4 class="modal-title"><?= $m->nama ;?> | <?= $m->kelas ;?></h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="<?= base_url('Fingerprint/del_user/'.$m->pin);?>" method="post">
            <div class="modal-body">
                
                 <div class="form-group">
                  <label>Device</label>
                  <select name="ip" id="ip" class="form-control">
                    <option value="" selected disabled>::pilih::</option>
                    <?php foreach ($mesin as $m): ?>
                      <option value="<?= $m->ip_address;?>"><?= $m->nama_mesin;?></option>
                    <?php endforeach ?>
                  </select>
                </div>

            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Hapus</button>
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

   

    let csrfName = '<?php echo $this->security->get_csrf_token_name(); ?>',
        csrfHash = '<?php echo $this->security->get_csrf_hash(); ?>';
	
		


  $('#idkelas').change(function(){

    var id_kelas = $('#idkelas').val();
    $.ajax({
      type    : "POST",
      dataType  : "JSON",
      url     :"<?= base_url(); ?>/Fingerprint/getSiswa/",
      data    :{[csrfName]: csrfHash, id_kelas : id_kelas},
      success   :function(data){
           
          var html = "";
						html +="<option value='' selected disabled>::Pilih Siswa::</option>";
          for (var i = 0; i < data.length; i++) {
           

             html +="<option value='"+data[i].nis+"'>"+data[i].nis+" | "+data[i].nama+"</option>";
          }
          
          $('#nis').html(html);
          
      }

    })

  });

  $('#nis').change(function(){
    var nis = $('#nis').val();
		$.ajax({
      type    : "POST",
      dataType  : "JSON",
      url     :"<?= base_url(); ?>/Fingerprint/getSiswaByNis/",
      data    :{[csrfName]: csrfHash, nis : nis},
      success   :function(data){
           
				 $('#nama').val(data.nama);
				
          
      }

    })
    
  });


  $('#nip_guru').change(function(){
			var nip = $('#nip_guru').val();
			$.ajax({
				type    : "POST",
				dataType  : "JSON",
				url     :"<?= base_url(); ?>/Fingerprint/getGuruByNip/",
				data    :{[csrfName]: csrfHash, nip : nip},
				success   :function(data){
						
					$('#nama_guru').val(data.nama);
					
						
				}

			})
			
		});


  



 </script>

 