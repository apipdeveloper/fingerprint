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

                <table class="col-md-6">
	                  <tr>
	                    <td>Kelas :</td>
	                    <td>
	                      <select name="idkelas" id="kelas" class="form-control">
	                      <option value="" selected disabled>Pilih Kelas</option>
	                        <?php foreach ($kelas as $k): ?>
	                          <option value="<?= $k->kelas; ?>"><?= $k->kelas; ?></option>
	                        <?php endforeach ?>
	                      </select>
	                    </td>
	                    
	                  </tr>
	                </table>
              </div>
              <div class="card-body">
               
                <div class="table-responsive">	        		

                  <table id="example2" class="table table-bordered table-hover">
                  	
                        <thead>
                          <tr>
                            
                            <th>NISN</th>
                            <th>Nama</th>
                            <th>Tempat Lahir</th>
                            <th>Tgl Lahir</th>
                            <th>Kelas</th>
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
  

  <script>

   

    let csrfName = '<?php echo $this->security->get_csrf_token_name(); ?>',
        csrfHash = '<?php echo $this->security->get_csrf_hash(); ?>';


  $('#kelas').change(function(){

    var kelas = $('#kelas').val();
    $.ajax({
      type    : "POST",
      dataType  : "JSON",
      url     :"<?= base_url(); ?>/Siswa/getSiswa/",
      data    :{[csrfName]: csrfHash, kelas : kelas},
      success   :function(data){
        	
          var status = "";	
          var html = "";

          for (var i = 0; i < data.length; i++) {
	         

             html +="<tr>"+
                    
                    "<td>"+data[i].nis+"</td>"+
                    "<td>"+data[i].nama+"</td>"+
                    "<td>"+data[i].tempat_lahir+"</td>"+
                    "<td>"+data[i].tgl_lahir+"</td>"+
                    "<td>"+data[i].kelas+"</td>"+
                    "</tr>";
          }
          
          $('#v_siswa').html(html);
      }

    })

  });
  



 </script>

      