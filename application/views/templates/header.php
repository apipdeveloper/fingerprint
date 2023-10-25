<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>E-Presensi</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/icheck-bootstrap/icheck-bootstrap.min.css">

  
  
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?= base_url('assets/plugins');?>/summernote/summernote-bs4.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <!-- Toastr -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/toastr/toastr.min.css">
  <!-- jQuery -->
  <script src="<?= base_url('assets/plugins');?>/jquery/jquery.min.js"></script>

	<!-- Select2 -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
	<style>
		#loading {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: center no-repeat #fff;
		}
		
		/*-- css spin --*/
		@-webkit-keyframes spin {
				0% { -webkit-transform: rotate(0deg); }
				100% { -webkit-transform: rotate(360deg); }
		}
		@keyframes spin {
				0% { transform: rotate(0deg); }
				100% { transform: rotate(360deg); }
		}
		
		/*-- css loader --*/
		.no-js #loader { display: none; }
		.js #loader { display: block; position: absolute; left: 100px; top: 0; }
		
		.loader {
				border: 10px solid #f3f3f3;
				border-radius: 50%;
				border-top: 10px solid #3498db;
				border-bottom: 10px solid #FFC107;
				width: 150px;
				height: 150px;
				left: 43.5%;
				top: 20%;
				-webkit-animation: spin 2s linear infinite;
				position: fixed;
				animation: spin 2s linear infinite;
		}
		
		.textLoader{
				position: fixed;
				top: 56%;
				left: 45.6%;
				color: #34495e;
		}
			
		/*-- responsive --*/
				@media screen and (max-width: 1034px){
						.textLoader{
								left: 46.2%;
						}
				}
		
				@media screen and (max-width: 824px){
						.textLoader {
								left: 47.2%;
						}
				}
		
				@media screen and (max-width: 732px){
						.textLoader {
								left: 48.2%;
						}
				}
		
				@media screen and (max-width: 500px){
						.loader{
								left: 36.5%;;
						}
						.textLoader {
								left: 40.5%;
						}
				}
		
				@media screen and (max-height: 432px){
						.textLoader {
								top: 65%;
						}
				}
		
				@media screen and (max-height: 350px){
						.textLoader {
								top: 75%;
						}
				}
		
				@media screen and (max-height: 312px){
						.textLoader {
								display: none;
						}
				}
		/*-- responsive --*/
	</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center bg-light">
    <img class="animation__shake" src="<?= base_url('assets/');?>dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="100" width="100">
  </div>

	<!-- loading -->
	<div id="loading">
				<span class="loader"></span>
				<div class="textLoader">
						<center>
						<b>Please Wait ... </b>
						</center>
				</div>
		</div>


   <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-light-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?= base_url('Dashboard'); ?>" class="brand-link bg-primary text-center">      
      <span class="brand-text font-weight-light"><i class="fas fa-fingerprint"></i> E-Presensi</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          

          <li class="nav-item ">
            <a href="<?= base_url('Dashboard'); ?>" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>Dashboard</p>
            </a>  
          </li>

         
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-database"></i>
              <p>
                Master Data
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="<?= base_url('Pegawai'); ?>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Pegawai</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="<?= base_url('Siswa'); ?>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Siswa</p>
                </a>
              </li>
  
            </ul>
          </li> 

          
         
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-fingerprint"></i>
              <p>
                Fingerprint
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="<?= base_url('Fingerprint'); ?>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pendaftaran User</p>
                </a>
              </li>

              <!-- <li class="nav-item">
                <a href="<?= base_url('Pegawai'); ?>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cloning User</p>
                </a>
              </li> -->

               <li class="nav-item">
                <a href="<?= base_url('Mesin'); ?>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Mesin</p>
                </a>
              </li>  

             
  
            </ul>
          </li>   

          <li class="nav-item ">
            <a href="<?= base_url('Presensi'); ?>" class="nav-link">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>Log Presensi</p>
            </a>  
          </li>

					<li class="nav-item ">
            <a href="<?= base_url('Pelaporan'); ?>" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>Pelaporan</p>
            </a>  
          </li>

                    

          <li class="nav-item ">
            <a href="<?= base_url('auth/logout'); ?>" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>Logout</p>
            </a>  
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  