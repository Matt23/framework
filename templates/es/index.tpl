<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link rel="shortcut icon" href="{tplFolder}assets/images/logo.png" type="image/x-icon">
        <script src="https://kit.fontawesome.com/8c5a9e6b08.js" crossorigin="anonymous"></script>

        <title>{titulo}</title>

        <!-- Vendor css -->
        <link rel="stylesheet" href="{tplFolder}src/vendors/@mdi/font/css/materialdesignicons.min.css">

        <!-- Base css with customised bootstrap included -->
        <link rel="stylesheet" href="{tplFolder}src/css/miri-ui-kit-free.css">

        <!-- Stylesheet for demo page specific css -->
        <link rel="stylesheet" href="{tplFolder}assets/css/demo.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <style>
            .a-contacto {
                text-decoration: none;
                color: #234F75 !important;
            }

            .a-contacto:hover {
                text-decoration: none;
                color: #3E668D !important;
            }
             .a-footer {
                text-decoration: none;
                color: #234F75 !important;
                margin-left:20px;
            }

            .a-footer:hover {
                text-decoration: none;
                color: #3E668D !important;
            }
           
            .fixed-top,
            .fixed-on-scroll.fixed-on-top {
                background-color: #000 !important;
                box-shadow: 0 1px 10px rgb(0 0 0 / 40%);
            }

            .nav-link .clickmenuhref {
                color: #fff !important;
            }
        </style>
    </head>

    <body>

        <a id="inicio"></a>

        <header class="miri-ui-kit-header landing-header header-bg-2">
            <div style="color:#fff;font-weight: bold; font-size: 12px; background:#3E668D; /*#395f61*/ width:100%;padding:10px;padding-right:30px; text-align:right; box-shadow: 20px 20px 30px #000; border-bottom: solid 4px #000;">
                <span style="margin-left:20px;"><a href="./clientes" style="color:#fff; text-decoration: none;"><i class="fa-regular fa-pen-to-square"></i> Registrarse</a></span>
                <span style="margin-left:20px;"><a href="./clientes" style="color:#fff; text-decoration: none;"><i class="fa-solid fa-arrow-right-to-bracket"></i> Ingresar</a></span>
            </div>
            <nav style="padding:0px 18px!important;" class="navbar navbar-expand-lg navbar-dark bg-transparent fixed-on-scroll">
                <div class="container">
                    <h6 class="text-white" style="width:420px!important;">
                        <a href="#inicio" class="text-white" style="position:relative;">
                            <img src="{tplFolder}assets/images/logo.png" alt="logo" style="height: 120px; float:left;">
                            <span style="height: 120px; float:left; font-size: 40px; padding-top: 25px; margin-left: 10px; position: absolute;">
                                cloudStudio
                            </span>
                        </a>
                    </h6>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#miriUiKitNavbar" aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="mdi mdi-menu" id="mdi-menuok" style="color:#fff;">
                        </span>
                    </button>

                    <style>
                        .fixed-on-scroll.fixed-on-top .nav-link {
                            color: rgb(255, 255, 255) !important;
                        }

                        .navbar .nav-link {
                            color: white !important;
                        }

                        @media only screen and (min-width: 991px) {
                            #main-menu-bar {
                                width: 480px !important;
                            }

                            #landingContentHeader {
                                position: absolute;
                                margin: 180px 5% 0px 5%;
                                width: 90%;
                            }
                        }

                        @media only screen and (max-width: 990px) {

                            #landingContentHeader {
                                position: absolute;
                                margin: 180px 5% 0px 5%;
                                width: 90%;
                            }
                        }

                        .btn-primary {
                            background-color: #234F75 !important;
                            border-color: #234F75 !important;
                        }

                        .btn-primary:hover {
                            background-color: #3E668D !important;
                            border-color: #3E668D !important;
                        }
                    </style>

                    <div class="collapse navbar-collapse" id="miriUiKitNavbar">
                        <div class="navbar-nav ml-auto" id="main-menu-bar" style="text-align:right!important;">

                            <li class="nav-item" style="float:right!important;">
                                <a class="nav-link clickmenuhref" href="#inicio">Inicio</a>
                            </li>

                            <li class="nav-item" style="float:right!important;">
                                <a class="nav-link clickmenuhref" href="#nuestroservicio">Nuestro Servicio</a>
                            </li>

                            <li class="nav-item" style="float:right!important;">
                                <a class="nav-link clickmenuhref" href="#planesyprecios">Planes y Precios</a>
                            </li>

                            <li class="nav-item" style="float:right!important;">
                                <a class="nav-link clickmenuhref" href="#infocontacto">Contacto</a>
                            </li>

                        </div>
                    </div>
                </div>
            </nav>

            <div id="landingContentHeader">
                <div class="miri-ui-kit-header-content text-center text-white d-flex flex-column justify-content-center align-items-center" style="display:block!important;overflow:hidden;">
                    <h1 class="display-3 text-white" style="text-shadow:0 2px 4px #000;font-size:3.5rem;margin-top:40px;">
                        Haga crecer su
                        <br>
                        Estudio Jur&iacute;dico
                    </h1>
                    <p class="h5 font-weight-light text-white" style="text-shadow:0 2px 4px #000;">
                        No pierda clientes, ni deje de facturar consultas.
                    </p>
                    <p class="h5 font-weight-light text-white" style="text-shadow:0 2px 4px #000;">
                        Ofrezca una mejor experiencia y ascesoramiento en la nube.
                    </p>
                    <p class="mt-4">
                        <a href="#planesyprecios">
                            <button class="btn btn-primary btn-pill mr-2">
                                Conozca Nuestros Planes
                            </button>
                        </a>
                    </p>
                </div>
            </div>
        </header>

        <style>
            .container {
                width: 100%;
            }
        
            .container .header {
                width: 200px;
                cursor: pointer;
                margin: 0 auto;
            }
        
            .container .headerservicio {
                width: 200px;
                cursor: pointer;
                margin: 0 auto;
            }
        
            .container .content {
                display: none;
                padding: 5px;
            }
        </style>

        <div class="pt-5 mt-2">
            <div class="container">
                <section class="footer-content text-center">

                    <h2>
                        Por qu&eacute; elegirnos
                    </h2>

                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                        culpa qui officia deserunt mollit anim id est laborum.
                        <br>

                        <div class="container">

                            <div class="header btn btn-primary btn-pill mr-2">
                                <span>
                                    Continuar leyendo...
                                </span>
                            </div>

                            <div class="content">
                                <p>
                                    <br>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                                        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                                        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                </p>
                            </div>
                        </div>

                        <a id="nuestroservicio"></a>
                        <br><br><br>
                    </p>

                </section>
            </div>
        </div>

        <section class="miri-ui-kit-section how-we-work-section">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="h1 font-weight-semibold mb-4">
                            Nuestro Servicio.
                        </h2>
                        <p class="mb-2">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                            ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                            in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                    <div class="col-md-6">
                        <img style="width:100%;" src="{tplFolder}assets/images/lawer1.webp">
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <img style="width:100%;" src="{tplFolder}assets/images/lawer2.jpg">
                    </div>
                    <div class="col-md-6">
                        <p class="mb-5">
                            <b>
                                <br>
                                <br>
                                M&aacute;s Informaci&oacute;n:
                            </b>
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                            pariatur. Excepteur
                            sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                            laborum.
                            
                            <div class="container">
                                <div class="headerservicio btn btn-primary btn-pill mr-2">
                                    <span>
                                        Soporte 24hs.
                                    </span>
                                </div>
                                <div class="content">

                                    <p class="mb-5">
                                        <br>
                                        <b>
                                            M&aacute;s Informaci&oacute;n
                                        </b>
                                        <br>
                                        <br>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                        incididunt ut labore et
                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                        nisi ut aliquip ex
                                        ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat
                                        nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit
                                        anim id est laborum.
                                    </p>
                                </div>
                            </div>

                        </p>
                    </div>
                </div>
            </div>

            <a id="planesyprecios"></a>
            <br>
        </section>
        <style>
            #tabla-precios {
                display:inline-block;
                width:100%;
                margin-top:10px
            }

            /*Columnas*/

            .precio-col {
                display:inline-block;
                background-color:#f3f3f3;
                width:100%;
                max-width:500px;
                border-radius:10px;
                margin-bottom:0px;
                box-shadow: 0px 2px 5px #ddd
            }
            
            @media screen and (min-width:768px) and (max-width:991px) {
                
                .precio-col-header h3 {
                    font-size: 20px !important;
                }
            }

            @media screen and (min-width:768px) {

                .precio-col {
                    width:32%;
                    float:left;
                    margin-right:2%
                }
            
                .precio-col:last-child {
                    margin-right:0
                }
            }

            /*Headers*/

            .precio-col-header {
                background-color:#333;
                padding:20px;
                border-top-left-radius:10px;
                border-top-right-radius:10px
            }

            .precio-col:nth-child(2) .precio-col-header {
                background-color:#234F74
            }

            .precio-col-header h3 {
                color:#f3f3f3;
                text-align:center;
                font-size:30px;
                font-weight:600;
                margin-bottom:0
            }

            .precio-col-header p {
                text-align:center;
                color:#f3f3f3;
                font-size:14px;
                margin-bottom:0
            }

            /*Caracter&iacute;sticas*/

            .precio-col-features {
                padding: 0 20px 20px 20px
            }

            .precio-col-features p {
                padding:20px 0;
                margin:0;
                text-align:center;
                border-top:1px solid #ddd
            }

            .precio-col-features p:first-child,
            .precio-col-features p:last-child {
                border-top:none
            }

            /*Comprar*/

            .precio-col-comprar {
                padding:10px;
                max-width:250px;
                text-align:center;
                background-color:#234F75;
                margin: 0 auto 20px;
                border-radius:10px;
                border: 2px solid #234F75;
                transition: all 0.3s;
                cursor: pointer;
            }

            .precio-col-comprar a {
                color:#f3f3f3;
                padding:10px;
                font-size:20px;
                transition: all 0.3s
            }

            .precio-col-comprar:hover {
                background-color: #3E668D !important;
                border-color: #3E668D !important;
                transition: all 0.3s;
                text-decoration: none;
            }

            .precio-col-comprar:hover a {
                background-color: #3E668D !important;
                border-color: #3E668D !important;
                transition: all 0.3s;
                text-decoration: none;
            }
        </style>
        <section class="miri-ui-kit-section how-we-work-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="h1 font-weight-semibold mb-4">
                            Planes y Precios.
                        </h2>
                        <div id="tabla-precios">
                            <div class="precio-col">
                                <div class="precio-col-header">
                                    <h3>AR$ 3.500 / mes</h3>
                                    <p>Plan B&aacute;sico</p>
                                </div>

                                <div class="precio-col-features">
                                    <p>Caracter&iacute;stica 1</p>
                                    <p>Caracter&iacute;stica 2</p>
                                    <p>Caracter&iacute;stica 3</p>
                                </div>

                                <div class="precio-col-comprar">
                                    <a href="#">15 d&iacute;as, Gratis!</a>
                                </div>
                            </div>

                            <div class="precio-col">
                                <div class="precio-col-header">
                                    <h3>AR$ 4.500 / mes</h3>
                                    <p>Plan Profesional</p>
                                </div>

                                <div class="precio-col-features">
                                    <p>Caracter&iacute;stica 1</p>
                                    <p>Caracter&iacute;stica 2</p>
                                    <p>Caracter&iacute;stica 3</p>
                                </div>

                                <div class="precio-col-comprar">
                                    <a href="#">15 d&iacute;as, Gratis!</a>
                                </div>
                            </div>

                            <div class="precio-col">
                                <div class="precio-col-header">
                                    <h3>AR$ 7.500 / mes</h3>
                                    <p>Plan Premium</p>
                                </div>

                                <div class="precio-col-features">
                                    <p>Caracter&iacute;stica 1</p>
                                    <p>Caracter&iacute;stica 2</p>
                                    <p>Caracter&iacute;stica 3</p>
                                </div>

                                <div class="precio-col-comprar">
                                    <a href="#">15 d&iacute;as, Gratis!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a id="infocontacto"></a>
            <br>
        </section>

        <footer class="pt-5 mt-2">
            <div class="container">
                <h2 class="h1 font-weight-semibold mb-4">
                    Contacto.
                </h2>
                <p>
                    <h6>
                        Tel&eacute;fonos
                    </h6>

                    <a class="a-contacto" href="tel:5491145678910">54 9 11 4567 8910</a><br>
                    <a class="a-contacto" href="tel:5491145678910">54 9 11 4567 8910</a><br>
                </p>

                <p>
                    <h6>
                        Correo electr&oacute;nico
                    </h6>
                    
                    <a class="a-contacto" href="info@gmail.com">
                        info@gmail.com
                    </a>
                    <br>
                </p>

                <p>
                    <h6>
                        Horarios de atenci&oacute;n comercial
                    </h6>
                    Lunes a Viernes, de 9 a 18 hs.
                </p>

                <p>
                    <h6>
                        Env&iacute;enos sus dudas y consultas, y a la brevedadad nos contactaremos.
                    </h6>
                    <div class="col-md-6">
                        <form id="formulario">
                            <div class="form-group">
                                <input id="nombre" required type="text" placeholder="Nombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="apellido" required type="text" placeholder="Apellido" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="tel" required type="text" placeholder="Tel&eacute;fono" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="email" required type="text" placeholder="Direcci&oacute;n de correo electr&oacute;nico" class="form-control">
                            </div>
                            <div class="form-group">
                                <textarea id="mensaje" required type="text" placeholder="Mensaje" class="form-control"></textarea>
                            </div>
                            <input id="submit" type="submit" value="Enviar" class="btn btn-primary btn-block mb-3">
                        </form>
                    </div>
                </p>
            </div>
            
            <div class="container">
                <nav class="navbar navbar-light bg-transparent navbar-expand d-block d-sm-flex text-center">
                    <span class="navbar-text" style="color: #234F75;">
                        &copy; Todos los derechos reservados.
                    </span>
                    <div class="navbar-nav ml-auto justify-content-center">
                        <a class="a-footer" href="./clientes">Soporte</a>
                        <a class="a-footer" href="#">T&eacute;rminos y condiciones</a>
                        <a class="a-footer" href="#">Pol&iacute;tica de privacidad</a>
                    </div>
                </nav>
            </div>

        </footer>
        
        <div id="demoVideoLightbox" class="lightbox" onclick="hideVideo('video','youtube')">
            <div class="lightbox-container">
                <div class="lightbox-content">
                    <button data-close="lightbox" class="lightbox-close">
                        Close | ✕
                    </button>
                    <div class="video-container">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/123456" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>

        <script src="{tplFolder}src/vendors/jquery/dist/jquery.min.js"></script>
        <script src="{tplFolder}src/vendors/popper.js/dist/umd/popper.min.js"></script>
        <script src="{tplFolder}src/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="{tplFolder}src/js/miri-ui-kit.js"></script>

        <script>
            function isMobile() {
                if (sessionStorage.desktop)
                    return false;
                else if (localStorage.mobile)
                    return true;
                var mobile = ['iphone', 'ipad', 'android', 'blackberry', 'nokia', 'opera mini', 'windows mobile', 'windows phone', 'iemobile'];
                for (var i in mobile)
                    if (navigator.userAgent.toLowerCase().indexOf(mobile[i].toLowerCase()) > 0) return true;
                return false;
            }

            const formulario = document.querySelector('#formulario');
            const buttonSubmit = document.querySelector('#submit');
            const urlDesktop = 'https://web.whatsapp.com/';
            const urlMobile = 'whatsapp://';
            const telefono = '541145678910';

            formulario.addEventListener('submit', (event) => {
                event.preventDefault()
                buttonSubmit.innerHTML = '<i class="fas fa-circle-notch fa-spin"></i>'
                buttonSubmit.disabled = true
                setTimeout(() => {
                    let nombre = document.querySelector('#nombre').value
                    let apellido = document.querySelector('#apellido').value
                    let tel = document.querySelector('#tel').value
                    let email = document.querySelector('#email').value
                    let msj = document.querySelector('#mensaje').value
                    let mensaje = 'send?phone=' + telefono + '&text=%0A*Nombre:*%0A' + nombre + '%0A*Apellido:*%0A' + apellido + '%0A*Teléfono:*%0A' + tel + '%0A*Correo electrónico:*%0A' + email + '%0A*Mensaje:*%0A' + msj + ''
                    if (isMobile()) {
                        window.open(urlMobile + mensaje, '_blank')
                    } else {
                        window.open(urlDesktop + mensaje, '_blank')
                    }
                    buttonSubmit.innerHTML = '<i class="fab fa-whatsapp"></i> Enviar WhatsApp'
                    buttonSubmit.disabled = false
                }, 1000);
            });
        </script>

        <script>
            $(".headerservicio").click(function () {
                $header = $(this);
                //getting the next element
                $content = $header.next();
                //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
                $content.slideToggle(250, function () {
                    //execute this after slideToggle is done
                    //change text of header based on visibility of content div
                    $header.text(function () {
                        //change text based on condition
                        return $content.is(":visible") ? "Soporte 24hs." : "Soporte 24hs.";
                    });
                });

            });

            $(".header").click(function () {
                $header = $(this);
                //getting the next element
                $content = $header.next();
                //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
                $content.slideToggle(250, function () {
                    //execute this after slideToggle is done
                    //change text of header based on visibility of content div
                    $header.text(function () {
                        //change text based on condition
                        //return $content.is(":visible") ? "Continuar leyendo..." : "Continuar leyendo...";
                    });
                });
            });
        </script>

        <script>
            $(".clickmenuhref").click(function () {
                var cmhref = document.getElementById("mdi-menuok");
                cmhref.click();
                $('#landingContentHeader').css('display', 'block');
            });

            $('#mdi-menuok').on('click',
                function (event) {
                    if (!event.detail || event.detail == 1) {
                        if ($(window).width() < 991) {
                            if ($('#landingContentHeader').css('display') == 'block') {
                                $('#landingContentHeader').css('display', 'none');
                                $('#miriUiKitNavbar').css('display', 'block');
                            } else {
                                $('#landingContentHeader').css('display', 'block');
                                $('#miriUiKitNavbar').css('display', 'none');
                            }
                        }
                    }
                }
            );

            $(window).resize(function () {
                windowsize = $(window).width();
                if (windowsize < 991) {
                    $('#miriUiKitNavbar').removeClass('show');
                    $('#miriUiKitNavbar').css('display', 'none');
                    $('#landingContentHeader').css('display', 'block');
                } else {
                    $('#landingContentHeader').css('display', 'block');
                }
            });
        </script>

    </body>

</html>