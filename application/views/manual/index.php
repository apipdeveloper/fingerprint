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
                							
              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		
								<form action="<?= base_url('Manual/add_manual');?>" method="post">
								
                  <table id="example2" class="table table-striped table-hover">
                  	
                        <thead class="bg-primary">
                          <tr>                          
                            <th>#</th>
                            <th>NIS</th>
                            <th>Nama</th>
														<th>Kelas</th>
														<th>Keterangan</th> 														
                          </tr>
                        </thead>
                         <tbody id="view">
                          
                        </tbody>
                  </table>

									<button class="btn btn-success float-right mt-3"><i class="fas fa-save"></i> Simpan</button>
									</form>
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
  

<script>

  view();
function view(){

  $.get( "<?= base_url('Manual/view');?>", function( data ) {
			$( "#view" ).html( data );
		});
	}

	
    

</script>

      