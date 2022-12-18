  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Registrar Cliente</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{path}">Home</a></li>
              <li class="breadcrumb-item active">Registrar Cliente</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <div class="container-fluid">
    <div class="col-md-6">
      {error}
      {confirmarRegistro}
    <div class="card card-primary" style="{styleDisplayNone}">
      <div class="card-header">
        <h3 class="card-title">Ingrese los datos del nuevo cliente.</h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form method="post" action="{path}clientes/registrar">
        <div class="card-body">
          <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="{nombre}" placeholder="Nombre">
          </div>
          <div class="form-group">
            <label for="apellido">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido" value="{apellido}" placeholder="Apellido">
          </div>
          <div class="form-group">
            <label for="tipodoc">Tipo de documento</label>
            <input type="text" class="form-control" id="tipodoc" name="tipodoc" value="{tipodoc}" placeholder="Tipo de documento">
          </div>
          <div class="form-group">
            <label for="nrodoc">N&uacute;mero de documento</label>
            <input type="text" class="form-control" id="nrodoc" name="nrodoc" value="{nrodoc}" placeholder="N&uacute;mero de documento">
          </div>
          <div class="form-group">
            <label for="ciudad">Ciudad</label>
            <input type="text" class="form-control" id="ciudad" name="ciudad" value="{ciudad}" placeholder="Ciudad">
          </div>
          <div class="form-group">
            <label for="dir">Direcci&oacute;n</label>
            <input type="text" class="form-control" id="dir" name="dir" value="{dir}" placeholder="Direcci&oacute;n">
          </div>
          <div class="form-group">
            <label for="email">Correo electr&oacute;nico</label>
            <input type="text" class="form-control" id="email" name="email" value="{email}" placeholder="Correo electr&oacute;nico">
          </div>
          <div class="form-group">
            <label for="tel">N&uacute;mero de tel&eacute;fono / celular</label>
            <input type="text" class="form-control" id="tel" name="tel" value="{tel}" placeholder="N&uacute;mero de tel&eacute;fono / celular">
          </div>

        </div>
        <!-- /.card-body -->

    </div>
    <!-- /.card -->
    
    <div class="card" style="{styleDisplayNone}">
      <div class="card-footer">
        <button type="submit" class="btn btn-primary" style="float:right;">Registrar Cliente</button>
        </form>
      </div>
    </div>

    </div>
    </div>
  
  </div>
  <!-- /.content-wrapper -->
