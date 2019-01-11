<?php 

class securityClass {
	
	function __construct($get=null,$post=null,$params=null) {

		if (!$_SESSION['logAdmin'] && !$_SESSION['idSupplier']) die(header('Location: ' . INSTALLPATH));
	}
}
?>