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
				<div class="card">
					<div class="card-body">
						<a href="" class="btn btn-success" data-toggle="modal" data-target="#modal-add-presensi"> Tambah</a>
					</div>
				</div>
        <div class="card card-success card-outline">
              <div class="card-header">
                
							<div class="row">
								<div class="col-md-2">
									<label>
										Pilih Perangkat
									</label>
								</div>
								<div class="col-md-4">
									<select name="ip" id="ip" class="form-control">
									<option value="" selected disabled>Pilih Mesin</option>
										<?php foreach($mesin as $m):?>
											<option value="<?= $m['ip_address'];?>"><?= $m['nama_mesin'];?></option>
										<?php endforeach;?>										
									</select>
								</div>
								<div class="col">
									<div class="btn btn-group">
										<button onclick="masuk()" class="btn btn-success"><i class="fas fa-download"></i> Tarik Data Masuk</button>
										<button onclick="keluar()" class="btn btn-danger"><i class="fas fa-download"></i> Tarik Data Keluar</button>
										
									</div>
								</div>
							</div>

              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-striped table-hover">
                  	
                        <thead class="bg-primary">
                          <tr>                          
                            <th>#</th>
                            <th>Mesin</th>
							<th>NIP/NIS</th>
                            <th>Nama</th>
							<th>Tanggal</th>                           
                            <th>Masuk</th>
                            <th>Keluar</th>
							<th>Status</th>
                          </tr>
                        </thead>
                         <tbody id="view">
                          
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


  <div class="modal fade" id="modal-add-presensi">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Presensi Manual</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="" method="post">
            <div class="modal-body">
              
			    <div class="form-group">
                  <label>Nama</label>
                  <select name="idkelas" id="idkelas" class="form-control">
                    <option value="" selected disabled>::pilih::</option>
                    <?php foreach ($pin as $k): ?>
                      <option value="<?= $k->pin;?>"><?= $k->pin;?> | <?= $k->nama;?></option>
                    <?php endforeach ?>
                  </select>
                </div> 

				<div class="form-group">
                  <label>Nama</label>
                  <select name="nis" id="nis" class="form-control select2" style="width: 100%;"></select>
                </div>

				
				<div class="form-group">
					<label>Status</label>
					<select name="status" class="form-control">
						<option value="" selected disabled>::pilih::</option>
						<option value="H">Hadir</option>
						<option value="I">Izin</option>
						<option value="S">Sakit</option>
						<option value="A">Alpa</option>
						<option value="C">Cuti</option>
					</select>
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

  

<script>
 let csrfName = '<?php echo $this->security->get_csrf_token_name(); ?>',
     csrfHash = '<?php echo $this->security->get_csrf_hash(); ?>';
	

  view();
function view(){

  $.get( "<?= base_url('Presensi/view');?>", function( data ) {
			$( "#view" ).html( data );
		});
	}

	function masuk(){
		var ip = $("#ip").val();
		if(ip === null){
			alert('Pilih Mesin');
		}else{
			window.location.href = '<?= base_url("Presensi/getLogIn/");?>'+ip;			
		}		
	}

	function keluar(){
		var ip = $("#ip").val();
		if(ip === null){
			alert('Pilih Mesin');
		}else{
		window.location.href = '<?= base_url("Presensi/getLogOut/");?>'+ip;
		}
	}


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
    

</script>

      