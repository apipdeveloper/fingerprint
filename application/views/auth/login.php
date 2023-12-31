
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>E-Presensi</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets/');?>dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
  
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-success shadow p-3 mb-5 bg-body rounded">
    <div class="card-header text-center">
      <a href="<?= base_url('admin') ?>" class="h1"><b>E</b>-Presensi</a>
    </div>
    <div class="card-body ">
      <p class="login-box-msg">Sign in to start your session</p>
      
       <?= $this->session->flashdata('message'); ?>

      <form class="user" method="post" action="<?= base_url('auth'); ?>">
        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" placeholder="Email" value="<?= set_value('email'); ?>">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">           
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>           
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-success">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-success btn-block">Log In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      

      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?= base_url('assets/');?>plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url('assets/');?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url('assets/');?>dist/js/adminlte.min.js"></script>
</body>
</html>
