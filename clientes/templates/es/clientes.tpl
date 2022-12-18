  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Clientes</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{path}">Home</a></li>
              <li class="breadcrumb-item active">Clientes</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Consulte la base de datos de clientes registrados.</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="mainTable" class="table table-bordered table-striped table-hover">
                  <thead>
                  <tr>
                    <th>Cliente</th>
                    <th>Documento</th>
                    <th>Direcci&oacute;n</th>
                    <th>Correo electr&oacute;nico</th>
                    <th>Tel&eacute;fono</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                    {tableContent}
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script>
    $(function () {
      $("#mainTable").DataTable({

        language: {
          "decimal": "",
          "emptyTable": "No hay informaci&oacute;n",
          "info": "Mostrando _START_ a _END_ de _TOTAL_ Registros",
          "infoEmpty": "Mostrando 0 Registros",
          "infoFiltered": "(Filtrado de un total de _MAX_ registros)",
          "infoPostFix": "",
          "thousands": ",",
          "lengthMenu": "Registros mostrados por p&aacute;gina: _MENU_",
          "loadingRecords": "Cargando...",
          "processing": "Procesando...",
          "search": "Buscar:",
          "zeroRecords": "Sin resultados encontrados",
          "paginate": {
              "first": "Primero",
              "last": "Ultimo",
              "next": "Siguiente",
              "previous": "Anterior"
          }
        },

        "ordering": false,
        "responsive": true, 
        "autoWidth": false,
        "paging": true,
        "searching": true,
        "info": true
        
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
  </script>