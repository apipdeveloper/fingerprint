<footer class="main-footer">
    <strong>Copyright &copy; <?= date('Y'); ?> E-Presensi. </strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url('assets/plugins');?>/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= base_url('assets/plugins');?>/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url('assets/plugins');?>/chart.js/Chart.min.js"></script>

<!-- jQuery Knob Chart -->
<script src="<?= base_url('assets/plugins');?>/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?= base_url('assets/plugins');?>/moment/moment.min.js"></script>
<script src="<?= base_url('assets/plugins');?>/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= base_url('assets/plugins');?>/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?= base_url('assets/plugins');?>/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url('assets/plugins');?>/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url('assets/');?>dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url('assets/');?>dist/js/demo.js"></script>

<!-- DataTables  & Plugins -->
<script src="<?= base_url('assets/');?>plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/jszip/jszip.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?= base_url('assets/');?>plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- btstiper -->

<!-- Select2 -->
<script src="<?= base_url('assets/');?>plugins/select2/js/select2.full.min.js"></script>

<!-- SweetAlert2 -->
<script src="<?= base_url('assets/');?>plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="<?= base_url('assets/');?>plugins/toastr/toastr.min.js"></script>


 
<!-- Page specific script -->
<script>
	

  $(function () {

		//Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })
    
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });


    function flash_toast(icon, title) {

      var Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 5000
        });

      Toast.fire({
        icon: icon,
        title: title
      });
    }

    function flash_alert(bg, title, body) {

      var Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 3000
        });

       $(document).Toasts('create', {
        class: bg,
        title: title,
        subtitle: 'Tutup',
        body: body
      })
    }

 
</script>

<script>
	// set delay 10s
	var delay = 500;
	
	$(window).on('load', function() {
			setTimeout(function(){
					$("#loading").hide();
					$(".loader").hide();
			},delay);
	});
</script>


 <?php if ($this->session->userdata('message')): ?>
      <script>
				Swal.fire(
					'Sukses!',
					'<?= $this->session->userdata("message")?>',
					'success'
				);
			</script>
	<?php elseif($this->session->userdata("error")): ?>

		<script>
				Swal.fire(
					'Error!',
					'<?= $this->session->userdata("error")?>',
					'error'
				);
			</script>
	<?php else :?>

  <?php endif ?>

</body>
</html>
