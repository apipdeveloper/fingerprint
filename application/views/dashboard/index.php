<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"><?= $title; ?></h1>
          </div><!-- /.col -->
          <div class="col-sm-6"></div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
       <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Pegawai</span>
                <span class="info-box-number">
                  <?= $pegawai;?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-purple elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Siswa</span>
                <span class="info-box-number"><?= $siswa;?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-home"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Kelas</span>
                <span class="info-box-number"><?= $kelas;?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Members</span>
                <span class="info-box-number"><?= $member;?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- 2 -->


          <!-- syc -->
        <div class="container-fluid">

          <div class="card">
            <div class="card-header">
              Syncron Data
            </div>
            <div class="card-body">
              
              <table class="table table-bordered">
                <thead class="bg-primary">
                  <tr>
                    <th >Data</th>
                    <th>Total</th>
                    <th>#</th>
                </tr>
                </thead>

                <tbody id="view">

                  
                  
                </tbody>               
                

              </table>
            </div>
          </div>
          
        </div>
       
      </div><!-- /.container-fluid -->
    </section>
    <!-- chart -->

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<script>
view();
function view(){

  $.get( "<?= base_url('Dashboard/view');?>", function( data ) {
    $( "#view" ).html( data );
  });
}

function tingkat(){

  $.get( "<?= base_url('Dashboard/get_tingkat');?>", function( data ) {
    view();
    if (data === "200") {
        flash_alert('bg-success','Berhasil','Berhasil Update data.');
    }else{
        flash_alert('bg-success','Berhasil','Berhasil Insert data.');
    }
  });

}

function kelas(){

  $.get( "<?= base_url('Dashboard/get_kelas');?>", function( data ) {
    view();
    if (data === "200") {
        flash_alert('bg-success','Berhasil','Berhasil Update data.');
    }else{
        flash_alert('bg-success','Berhasil','Berhasil Insert data.');
    }
  });

}

function pegawai(){

  $.get( "<?= base_url('Dashboard/get_pegawai');?>", function( data ) {
    view();
    if (data === "200") {
        flash_alert('bg-success','Berhasil','Berhasil Update data.');
    }else {
        flash_alert('bg-success','Berhasil','Berhasil Insert data.');
    }
  });

}

function siswa(){

  $.get( "<?= base_url('Dashboard/get_siswa');?>", function( data ) {
    view();
    if (data === "200") {
        flash_alert('bg-success','Berhasil','Berhasil Update data.');
    }else{
        flash_alert('bg-success','Berhasil','Berhasil Insert data.');
    }
  });

  
}


</script>


  


    



