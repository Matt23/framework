<?php
	// Dev
	if ($_SERVER['HTTP_HOST']=='localhost:8080') {

		// Límite de tiempo de ejecución en segundos. Si lo pongo en 0, no tiene límite de tiempo.
		set_time_limit(0);
		
		// Errores
		ini_set('error_reporting', E_ALL | E_NOTICE | E_STRICT);
		ini_set('display_errors', '1');
		error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
		// error_reporting(E_ALL ^ E_NOTICE); // Notificar todos los errores excepto E_NOTICE 
		// error_reporting(-1); // Notificar todos los errores de PHP 

		// Directorio de instalación.
		define('INSTALLPATH','/fwmvc/');


		// Confirguración del envío de mails.
		define('mailMailer','smtp');
		define('mailHost','email.25securehost.com');
		define('mailAuth',true);
		define('mailUsername','from@dominio.com');
		define('mailPassword','123456');
		
		define('mailFrom','operaciones@gl-tours.com');
		define('mailFromName','Dominio.com');
		define('mailTo','m.zamora@graylineargentina.com');


		// Base de datos
		define('DB_HOSTNAME',"localhost");
		define('DB_USERNAME',"root");
		define('DB_PASSWORD',"");
		define('DB_NAME',"grayline_gltours");

	// Prod
	} else {

		// Límite de tiempo de ejecución.
		set_time_limit(30);

		// Errores
		ini_set('error_reporting', '0');
		ini_set('display_errors', '0');
		error_reporting(0); // Desactivar toda notificación de error.

		// Directorio de instalación.
		define('INSTALLPATH','/fwmvc/');

		
		// Confirguración del envío de mails.
		define('mailMailer','smtp');
		define('mailHost','email.25securehost.com');
		define('mailAuth',true);
		define('mailUsername','from@dominio.com');
		define('mailPassword','123456');
		
		define('mailFrom','operaciones@gl-tours.com');
		define('mailFromName','Dominio.com');
		define('mailTo','m.zamora@graylineargentina.com');


		// Base de datos
		define('DB_HOSTNAME',"");
		define('DB_USERNAME',"");
		define('DB_PASSWORD',"");
		define('DB_NAME',"");
	}
?>