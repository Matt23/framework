<?php 

class securityClass {
	
	function __construct($get=null,$post=null,$params=null) {

		if (!$_SESSION['logId']) die(header('Location: ' . INSTALLPATH));
	}
}
?>