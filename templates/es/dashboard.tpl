<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{titulo}</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{tplFolder}plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{tplFolder}plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{tplFolder}dist/css/adminlte.min.css">
</head>

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="{tplFolder}plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="{tplFolder}plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="{tplFolder}plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="{tplFolder}dist/js/adminlte.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="{tplFolder}plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="{tplFolder}plugins/raphael/raphael.min.js"></script>
<script src="{tplFolder}plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="{tplFolder}plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="{tplFolder}plugins/chart.js/Chart.min.js"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{tplFolder}dist/js/pages/dashboard2.js"></script>

<!-- DataTables  & Plugins -->
<script src="{tplFolder}plugins/datatables/jquery.dataTables.min.js"></script>
<script src="{tplFolder}plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="{tplFolder}plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="{tplFolder}plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="{tplFolder}plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="{tplFolder}plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="{tplFolder}plugins/jszip/jszip.min.js"></script>
<script src="{tplFolder}plugins/pdfmake/pdfmake.min.js"></script>
<script src="{tplFolder}plugins/pdfmake/vfs_fonts.js"></script>
<script src="{tplFolder}plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="{tplFolder}plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="{tplFolder}plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<style>
  input:-webkit-autofill,
  input:-webkit-autofill:focus {
      transition: background-color 600000s 0s, color 600000s 0s;
  }
  input[data-autocompleted] {
      background-color: transparent !important;
  }
</style>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->

    {mainMenu}

    {rightNavBar}

  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">

    {sideBar}

    <!-- /.sidebar -->
  </aside>

  {content}

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

{footer}

<script>
  $('body').addClass('text-sm')
</script>
</body>
</html>