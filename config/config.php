<?php
	// Dev
	if ($_SERVER['HTTP_HOST'] == 'localhost:8023') {

		// Límite de tiempo de ejecución en segundos. Si lo pongo en 0, no tiene límite de tiempo.
		set_time_limit(0);
		
		// Errores
		ini_set('display_errors', '1');
		error_reporting(E_ALL ^ E_NOTICE); // Notificar todos los errores excepto E_NOTICE 

		// Directorio de instalación.
		define('INSTALLPATH', '/_site/');
		define('TEMPLATESFOLDER', INSTALLPATH . 'templates/' . $_SESSION['lang']);

		// Nombre del Sistema.
		define('SYSNAME', 'cloudStudio');

		// Confirguración del envío de mails.
		define('mailMailer', 'smtp');
		define('mailHost', 'email.25securehost.com');
		define('mailAuth', true);
		define('mailUsername', 'from@dominio.com');
		define('mailPassword', '123456');
		
		define('mailFrom', 'contact@dominio.com');
		define('mailFromName', 'Dominio.com');
		define('mailTo', 'usuario@dominio.com');
		
		// Base de datos
		define('DB_HOSTNAME', "127.0.0.1");
		define('DB_PORT', "3307");
		define('DB_USERNAME', "root");
		define('DB_PASSWORD', "");
		define('DB_NAME', "platformdb");

	// Prod
	} else {

		// Límite de tiempo de ejecución.
		set_time_limit(30);

		// Errores
		ini_set('error_reporting', '0');
		ini_set('display_errors', '0');
		error_reporting(0); // Desactivar toda notificación de error.

		// Directorio de instalación.
		define('INSTALLPATH', '/');
		define('TEMPLATESFOLDER', INSTALLPATH.'templates/'.$_SESSION['lang']);

		// Nombre del Sistema.
		define('SYSNAME', 'Plataforma omniSoft');
		
		// Confirguración del envío de mails.
		define('mailMailer', 'smtp');
		define('mailHost', 'email.25securehost.com');
		define('mailAuth', true);
		define('mailUsername', 'from@dominio.com');
		define('mailPassword', '123456');
		
		define('mailFrom', 'contact@dominio.com');
		define('mailFromName', 'Dominio.com');
		define('mailTo', 'usuario@dominio.com');

		// Base de datos
		define('DB_HOSTNAME', "localhost");
		define('DB_PORT', "3306");
		define('DB_USERNAME', "c2041280_prsNube");
		define('DB_PASSWORD', "poSU38rase");
		define('DB_NAME', "c2041280_prsNube");
	}
?>