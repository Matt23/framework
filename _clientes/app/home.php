<?php
class home {

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
        
        $this->datos['mainMenu'] = $this->tpl->printTemplate("mainMenu", $this->datos);
        $this->datos['sideBar'] = $this->tpl->printTemplate("sideBar", $this->datos);
        $this->datos['rightNavBar'] = $this->tpl->printTemplate("rightNavBar", $this->datos);
        $this->datos['footer'] = $this->tpl->printTemplate("footer", $this->datos);
	}

	function index($get=null, $post=null, $params=null) {

                header('Content-Type: text/html; charset=ISO-8859-1');
                
                $this->datos['content'] = $this->tpl->printTemplate("home", $this->datos);
                echo $this->tpl->printTemplate("dashboard", $this->datos);
	}

}
?>