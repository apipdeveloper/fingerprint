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
              
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-bordered table-hover">
                  	
                        <thead class="bg-info">
                          <tr>
                            <th>No</th>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>Tempat Lahir</th>
                            <th>Tgl Lahir</th>
                            <th>Bagian</th>
                          </tr>
                        </thead>
                         <tbody>
                          <?php $no=1; foreach ($pegawai as $pg): ?>
                            <tr>
                              <td><?= $no++;?></td>
                              <td><?= $pg->nip;?></td>
                              <td><?= $pg->nama;?></td>
                              <td><?= $pg->tmplahir;?></td>
                              <td><?= $pg->tgllahir;?></td>
                              <td><?= $pg->bagian;?></td>
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
  

  
      