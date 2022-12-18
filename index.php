<?php

	/**
	*  PHP Simple Framework
	*  Matías / 2016
	*/

	// Modifica la zona horaria del servidor.
	date_default_timezone_set('America/Argentina/Buenos_Aires');

	session_start();

	include_once('./config/config.php');

	$_SESSION['lang'] = !$_SESSION['lang'] ? 'es/' : $_SESSION['lang'];

	function my_autoloader($class) {
		if (strpos($class, 'CI_') !== 0) {
			if (file_exists($file = './app/' . $class . '.php')) {
				require_once $file;
			}
		}
	}

	spl_autoload_register('my_autoloader');

	//---------------------------------------------------------------------------------
	//Prevención de ataques XSS.
	$RequestSignature = '';
	if (is_array($_POST)) {
		foreach ($_POST as $key => $value) {
			if ($value && !is_array($value)) {
				$_POST[$key] = htmlentities($value);
				//---------------------------------------------------------------------
				// Prevención del reenvío de formularios: 
				$RequestSignature = md5($_SERVER['REQUEST_URI'] . $_SERVER['QUERY_STRING'] . print_r($_POST, true));
				if ($_SESSION['LastRequest'] == $RequestSignature) {
					die(header('location:' . INSTALLPATH . 'users/login'));
				}
				//---------------------------------------------------------------------
			} elseif (is_array($value)) {
				foreach ($value as $key1 => $value1) {
					if (!is_array($value1)) {
						$_POST[$key][$key1] = htmlentities($value1);
					}
				}
			}
		}	
	}
	
	if ( is_array($_GET) ) {
		foreach ($_GET as $key => $value) {
			if ($value && !is_array($value)) {
				$_GET[$key] = htmlentities($value);
			}
		}
	}
	$_SESSION['LastRequest'] = $RequestSignature;
	//---------------------------------------------------------------------------------

    $url = trim($_SERVER['REQUEST_URI'], '/');
	$url = explode('/', $url);
    $newurl = null;

	if (trim(end($url)) == '' || trim(end($url)) == trim(INSTALLPATH, '/')) {
		array_push($url, 'home');
	}

	// Defino las rutas. Si no defino rutas, el default es tal como estaba la url.
    switch (end($url)) {
        case 'home':
            $newurl = '/home/index';
            break;
        case 'value-added-services':
            $newurl = '/corp/services';
            break;
        default:
            $newurl = $_SERVER['REQUEST_URI'];
            break;
    }

    $url = explode('/', $newurl);

    $installDir = explode('/', INSTALLPATH);

	$controller = null;
	$method     = null;
	$params     = null;
	$a          = 0;
	$b          = 0;
	$obj        = null;

	foreach ($url as $value) {
		if (!in_array($value, $installDir)) { 
			$a++;
			if ($a == 1) {
				$controller = $value;
			}
			if ($a == 2) {
				$method = $value;
			}
			if ($a > 2) {
				$params[$b] = $value;
				$b++;
			}
		}
	}

	if (file_exists('./app/' . $controller . '.php') && class_exists($controller, true)) {
		$obj = new $controller;
		if (is_object($obj)) {
			if (method_exists($obj, $method)) {
				$obj->$method($_GET, $_POST, $params);
			} else {
				$main = new main();
				$main->notFound();
			}
		} else {
			$main = new main();
			$main->notFound();
		}
	} else {
		header('location:' . INSTALLPATH);
	}
?>