  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Eliminar Cliente</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{path}">Home</a></li>
              <li class="breadcrumb-item active">Eliminar Cliente</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <div class="container-fluid">
    <div class="col-md-6">
      {confirmarBorrado}
    <div class="card card-primary" style="{styleDisplayNone}">
      <div class="card-header">
        <h3 class="card-title">Confirme que desea eliminar este cliente.</h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form method="post" action="{path}clientes/eliminar/{id}">
        <input type="hidden" class="form-control" id="id" name="id" value="{id}">
        <div class="card-body">
          <div class="form-group">
            Nombre: {nombre}<br>
            Apellido: {apellido}<br>
            Documento: {tipodoc} {nrodoc}<br>
          </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    
    <div class="card" style="{styleDisplayNone}">
      <div class="card-footer">
        <button type="submit" class="btn btn-primary" style="float:right;">Eliminar Cliente</button>
        </form>
        <a href="{path}clientes/listar"><button class="btn btn-default">Cancelar</button></a>
      </div>
    </div>

    </div>
    </div>
  
  </div>
  <!-- /.content-wrapper -->
