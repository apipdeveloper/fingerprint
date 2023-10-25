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
        <div class="card card-success card-outline">
              <div class="card-header">
							<input type="radio" name="option" onclick="viewSiswa();">Log Siswa
							<input type="radio" name="option" onclick="viewPegawai();">Log Pegawai
							<div class="btn-group float-right">
							<a href="" class="btn btn-info" data-toggle="modal" data-target="#modal-add-pelaporan"><i class="fas fa-sync"                                           ></i> Pelaporan</a>
							</div>
                
              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-bordered table-hover">
                  	
                        <thead>
                          <tr>
													<th>#</th>
                            <th>NIS</th>
                            <th>Nama</th>
														<th>Kelas</th> 
														<th>Tanggal</th>
														<th>Masuk</th>
														<th>Keluar</th>
														<th>Status</th>
														<th>Flag</th>
                          </tr>
                        </thead>
                         <tbody id="v_siswa">
												 
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

	<div class="modal fade" id="modal-add-pelaporan">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Pelaporan</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="<?= base_url('Pelaporan/syncron');?>" method="post">
            <div class="modal-body">
              
							<div class="form-group">
												<label>Jenis</label>
												<select name="jenis" class="form-control">
												<option value="" selected disabled>::pilih::</option>
													<option value="siswa">Siswa</option>
													<option value="pegawai">Pegawai</option>
												</select>
              </div> 

							<div class="form-group">
								<label for="tanggal">Tanggal</label>
								<input type="date" name="tanggal" class="form-control">
							</div>

            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Laporkan</button>
            </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->


	<script>
		//viewSiswa();

		function viewSiswa(){

			$.get( "<?= base_url('Pelaporan/view_siswa');?>", function( data ) {
					$( "#v_siswa" ).html( data );
				});
			}

			function viewPegawai(){

			$.get( "<?= base_url('Pelaporan/view_pegawai');?>", function( data ) {
					$( "#v_siswa" ).html( data );
				});
			}
	</script>
