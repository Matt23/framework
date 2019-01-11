<?php
class login {

	private $tpl;
	private $mysql;

	public function __construct() {

        $this->tpl = new tplClass();
        $this->mysql = new mysql();

	}

	function ingresar($get=null,$post=null,$params=null) {

        header('Content-Type: text/html; charset=ISO-8859-1');

        $datos['path'] = INSTALLPATH;
        $datos['titulo'] =' GL-Tours :: Suppliers';
        $datos['description'] ='';
        $datos['keywords'] ='';
        $datos['error'] ='';

        if ($post) {
            // validación de usuario y password.
        }

        echo $this->tpl->printTemplate("loginHeader", $datos);
        echo $this->tpl->printTemplate("loginForm",   $datos);
        echo $this->tpl->printTemplate("loginFooter", $datos);

	}

}
?>