<?php
class clientes {

	private $tpl;
    private $datos;
	private $mysql;
    private $securityClass;

	public function __construct() {

        $this->securityClass = new securityClass();
        $this->tpl = new tplClass();
        $this->mysql = new mysql();
        
        $this->datos['path'] = INSTALLPATH;
        $this->datos['tplFolder'] = TEMPLATESFOLDER;
        $this->datos['titulo'] = SYSNAME;
        $this->datos['description'] = '';
        $this->datos['keywords'] = '';
        $this->datos['version'] = '2.0';
        $this->datos['error'] = '';
        $this->datos['confirmarRegistro'] = '';
        $this->datos['confirmarBorrado'] = '';
        $this->datos['tableContent'] = '';
        $this->datos['styleDisplayNone'] = '';
        
        $this->datos['mainMenu'] = $this->tpl->printTemplate("mainMenu", $this->datos);
        $this->datos['sideBar'] = $this->tpl->printTemplate("sideBar", $this->datos);
        $this->datos['rightNavBar'] = $this->tpl->printTemplate("rightNavBar", $this->datos);
        $this->datos['footer'] = $this->tpl->printTemplate("footer", $this->datos);
        
        $this->datos['nombre'] = '';
        $this->datos['apellido'] = '';
        $this->datos['tipodoc'] = '';
        $this->datos['nrodoc'] = '';
        $this->datos['ciudad'] = '';
        $this->datos['dir'] = '';
        $this->datos['email'] = '';
        $this->datos['tel'] = '';
	}

	function listar($get=null,$post=null,$params=null) {

        header('Content-Type: text/html; charset=utf-8');

        try {
            $query = 'select * from clientes where 
            merchant = :merchant and 
            fechab is null 
            order by apellido, nombre asc;';
            $vars['merchant'] = $_SESSION['logId'];

            $rs = $this->mysql->runQuery($query,$vars);

            foreach ($rs as $cliente) {
                $this->datos['tableContent'] .= '
                <tr>
                <td nowrap>' . $cliente['apellido'] . ' ' . $cliente['nombre'] . '</td>
                <td>' . $cliente['tipodoc'] . ' ' .$cliente['nrodoc'] . '</td>
                <td>' . $cliente['dir'] . ', ' . $cliente['ciudad'] . '</td>
                <td>' . $cliente['email'] . '</td>
                <td>' . $cliente['tel'] . '</td>
                <td><a href="'.$this->datos['path'].'clientes/editar/'.$cliente['id'].'" style="color:#bbb;"><i class="nav-icon fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="'.$this->datos['path'].'clientes/eliminar/'.$cliente['id'].'" style="color:#bbb;"><i class="nav-icon fas fa-trash"></i></a></td>
                </tr>';
            }

        } catch(Exception $e) {
                $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
        }

        $this->datos['content'] = $this->tpl->printTemplate("clientes", $this->datos);
        echo $this->tpl->printTemplate("dashboard", $this->datos);
	}

    function registrar($get=null,$post=null,$params=null) {

        header('Content-Type: text/html; charset=utf-8');

        $rs = null;
        $this->datos['error'] = '';

        if ($post) {

            foreach ($post as $key => $value) {
                if (trim($value) == '') {
                    $this->datos['error'] = '
                    <div class="card-header alert-danger">
                    Recuerde completar todos los datos.
                    </div>';
                }
                $this->datos[$key] = $value;
            }

            if (!$this->datos['error']) {

                $query = 'insert into clientes 
                (merchant, nombre, apellido, tipodoc, nrodoc, ciudad, dir, email, tel, fechaa)
                values
                (:merchant, :nombre, :apellido, :tipodoc, :nrodoc, :ciudad, :dir, :email, :tel, :fechaa) ;';

                $vars['merchant'] = $_SESSION['logId'];
                $vars['nombre'] = $post['nombre'];
                $vars['apellido'] = $post['apellido'];
                $vars['tipodoc'] = $post['tipodoc'];
                $vars['nrodoc'] = $post['nrodoc'];
                $vars['ciudad'] = $post['ciudad'];
                $vars['dir'] = $post['dir'];
                $vars['email'] = $post['email'];
                $vars['tel'] = $post['tel'];
                $vars['fechaa'] = date('d/m/Y h:i:s a', time());

                try {
                        $rs = $this->mysql->runQuery($query,$vars);

                        $this->datos['confirmarRegistro'] = '
                        <div class="card-header alert-success">
                        El cliente ha sido registrado correctamente.
                        </div>';

                        $this->datos['styleDisplayNone'] = 'display:none;';

                        foreach ($post as $key => $value) {
                            $this->datos[$key] = '';
                        }

                } catch(Exception $e) {
                        $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
                }
            }
        }

        $this->datos['content'] = $this->tpl->printTemplate("clientesRegistrar", $this->datos);
        echo $this->tpl->printTemplate("dashboard", $this->datos);
    }

    function editar($get=null,$post=null,$params=null) {

        header('Content-Type: text/html; charset=utf-8');

        $rs = null;
        $this->datos['error'] = '';

        if ($post) {

            foreach ($post as $key => $value) {

                if (trim($value) == '') {
                    $this->datos['error'] = '
                    <div class="card-header alert-danger">
                    Recuerde completar todos los datos.
                    </div>';
                }

                $this->datos[$key] = $value;
            }

            if (!$this->datos['error']) {

                $query = 'update clientes set  
                nombre = :nombre, 
                apellido = :apellido, 
                tipodoc = :tipodoc, 
                nrodoc = :nrodoc, 
                ciudad = :ciudad, 
                dir = :dir, 
                email = :email, 
                tel = :tel, 
                fecham = :fecham 
                where id = :id and merchant = :merchant and fechab is null;';

                $vars['nombre'] = $post['nombre'];
                $vars['apellido'] = $post['apellido'];
                $vars['tipodoc'] = $post['tipodoc'];
                $vars['nrodoc'] = $post['nrodoc'];
                $vars['ciudad'] = $post['ciudad'];
                $vars['dir'] = $post['dir'];
                $vars['email'] = $post['email'];
                $vars['tel'] = $post['tel'];
                
                $vars['merchant'] = $_SESSION['logId'];
                $vars['id'] = $params[0];
                $vars['fecham'] = date('d/m/Y h:i:s a', time());

                try {
                        $rs = $this->mysql->runQuery($query,$vars);

                        $this->datos['confirmarRegistro'] = '
                        <div class="card-header alert-success">
                        El cliente ha sido actualizado.
                        </div>';

                        $this->datos['styleDisplayNone'] = 'display:none;';

                } catch(Exception $e) {
                        $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
                }
            }
        }

        $query = 'select * from clientes where id = :id and merchant = :merchant and fechab is null;';

        $varsOk['merchant'] = $_SESSION['logId'];
        $varsOk['id'] = $params[0];

        try {
            $rs = $this->mysql->runQuery($query,$varsOk);
        } catch(Exception $e) {
                $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
        }

        if (!count($rs)) {
            header('location:'.INSTALLPATH);
        }

        if (!$this->datos['error']) {

            $this->datos['nombre'] = $rs[0]['nombre'];
            $this->datos['apellido'] = $rs[0]['apellido'];
            $this->datos['tipodoc'] = $rs[0]['tipodoc'];
            $this->datos['nrodoc'] = $rs[0]['nrodoc'];
            $this->datos['ciudad'] = $rs[0]['ciudad'];
            $this->datos['dir'] = $rs[0]['dir'];
            $this->datos['email'] = $rs[0]['email'];
            $this->datos['tel'] = $rs[0]['tel'];

        } else {

            $this->datos['nombre'] = $post['nombre'];
            $this->datos['apellido'] = $post['apellido'];
            $this->datos['tipodoc'] = $post['tipodoc'];
            $this->datos['nrodoc'] = $post['nrodoc'];
            $this->datos['ciudad'] = $post['ciudad'];
            $this->datos['dir'] = $post['dir'];
            $this->datos['email'] = $post['email'];
            $this->datos['tel'] = $post['tel'];
        }

        $this->datos['id'] = $params[0];
        $this->datos['content'] = $this->tpl->printTemplate("clientesEditar", $this->datos);

        echo $this->tpl->printTemplate("dashboard", $this->datos);
    }

    function eliminar($get=null,$post=null,$params=null) {

        header('Content-Type: text/html; charset=utf-8');

        if ($post) {

            $rs = null;
            
            $query = 'update clientes set  
            fechab = :fechab  
            where id = :id and merchant = :merchant and fechab is null;';

            $vars['merchant'] = $_SESSION['logId'];
            $vars['id'] = $params[0];
            $vars['fechab'] = date('d/m/Y h:i:s a', time());

            try {
                    $rs = $this->mysql->runQuery($query,$vars);

                    $this->datos['confirmarBorrado'] = '
                    <div class="card-header alert-success">
                    El cliente ha sido eliminado.
                    </div>';

                    $this->datos['styleDisplayNone'] = 'display:none;';

            } catch(Exception $e) {
                    $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
            }
        }

        $query = 'select * from clientes where id = :id and merchant = :merchant and fechab is null;';

        $varsOk['merchant'] = $_SESSION['logId'];
        $varsOk['id'] = $params[0];

        try {
            $rs = $this->mysql->runQuery($query,$varsOk);
        } catch(Exception $e) {
                $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
        }

        if (count($rs)) {
            $this->datos['nombre'] = $rs[0]['nombre'];
            $this->datos['apellido'] = $rs[0]['apellido'];
            $this->datos['tipodoc'] = $rs[0]['tipodoc'];
            $this->datos['nrodoc'] = $rs[0]['nrodoc'];    
        } else {
            if (!$post) {
                header('location:'.INSTALLPATH);
            }
        }

        $this->datos['id'] = $params[0];
        $this->datos['content'] = $this->tpl->printTemplate("clientesEliminar", $this->datos);

        echo $this->tpl->printTemplate("dashboard", $this->datos);
    }
}
?>