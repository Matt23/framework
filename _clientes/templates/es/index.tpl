<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="{tplFolder}assets/images/logo.png" type="image/x-icon">
    <title>{titulo}</title>

    <!-- Vendor css -->
    <link rel="stylesheet" href="{tplFolder}src/vendors/@mdi/font/css/materialdesignicons.min.css">

    <!-- Base css with customised bootstrap included -->
    <link rel="stylesheet" href="{tplFolder}src/css/miri-ui-kit-free.css">

    <!-- Stylesheet for demo page specific css -->
    <link rel="stylesheet" href="{tplFolder}assets/css/demo.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>               
        .fixed-top, .fixed-on-scroll.fixed-on-top {
            background-color: #290000 !important;
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
        <div style="color:#fff;font-weight: bold; font-size: 16px; background:#DD3333;width:100%;padding:5px;text-align:center;">
            REMATE EN VIVO <a href="#inicio"><button class="btn btn-outline-dark btn-pill mr-2" style="padding:2px 16px;margin: 0px 10px;color:#fff;border-color:#fff;">Ver Remate</button></a>
        </div>
        <nav style="padding:30px 18px!important;" class="navbar navbar-expand-lg navbar-dark bg-transparent fixed-on-scroll">
            <div class="container">
                <h6 class="text-white" style="width:74px!important;"><a href="#inicio" class="text-white" style="position:relative;"><img src="{tplFolder}assets/images/logo.png" alt="logo"></a></h6>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#miriUiKitNavbar"
                    aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="mdi mdi-menu" id="mdi-menuok" style="color:#fff;"></span>
                </button>
            
                <style>

                    .fixed-on-scroll.fixed-on-top .nav-link {
                        color: rgb(255, 255, 255)!important;
                    }
                    .navbar .nav-link {
                        color: white!important;
                    }

                    @media only screen and (min-width: 991px) {
                        #main-menu-bar {
                            width:580px!important;
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
                        background-color: #290000 !important;
                        border-color: #290000 !important;
                    } 
                    
                    .btn-primary:hover {
                        background-color: #5a2121 !important;
                        border-color: #5a2121 !important;
                    }

                </style>

                <div class="collapse navbar-collapse" id="miriUiKitNavbar">
                    <div class="navbar-nav ml-auto" id="main-menu-bar" style="text-align:right!important;">

                        <li class="nav-item" style="float:right!important;">
                            <a class="nav-link clickmenuhref" href="#inicio">INICIO</a>
                        </li>
                        
                        <li class="nav-item" style="float:right!important;">
                            <a class="nav-link clickmenuhref" href="#proxremates">PROXIMOS REMATES</a>
                        </li>
                        
                        <li class="nav-item" style="float:right!important;">
                            <a class="nav-link clickmenuhref" href="#comoofertar">COMO OFERTAR</a>
                        </li>

                        <li class="nav-item" style="float:right!important;">
                            <a class="nav-link clickmenuhref" href="#nosotros">NOSOTROS</a>
                        </li>

                        <li class="nav-item" style="float:right!important;">
                            <a class="nav-link clickmenuhref" href="#infocontacto">CONTACTO</a>
                        </li>
                        
                    </div>
                </div>
            </div>
        </nav>
        <div id="landingContentHeader">
            <div
                class="miri-ui-kit-header-content text-center text-white d-flex flex-column justify-content-center align-items-center" style="display:block!important;overflow:hidden;">
                <h1 class="display-3 text-white" style="text-shadow:0 2px 4px #000;font-size:3.5rem;margin-top:40px;">Gran Venta<br>FALLOW PELLEGRINI</h1>
                <p class="h5 font-weight-light text-white" style="text-shadow:0 2px 4px #000;">Yeguas Madres - Animales del Training</p>
                <p class="h5 font-weight-light text-white" style="text-shadow:0 2px 4px #000;">Yearlings - Productos 2020</p>
                <p class="mt-4"><a href="#inicio"><button class="btn btn-primary btn-pill mr-2">Ver Cat&aacute;logo</button></a></p>
            </div>
        </div>
    </header>

    
    <div class="pt-5 mt-2">
        <div class="container">
            <section class="footer-content text-center">

                <h2 class="">Por qu&eacute; elegirnos</h2>

                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    <br>
                    
                        <style>
                            .container {
                                width:100%;
                            }
                            .container div {
                                width:100%;
                            }
                            .container .header {
                                width: 200px;
                                cursor: pointer;
                                margin: 0 auto;
                            }
                            .container .headertratamiento {
                                width: 200px;
                                cursor: pointer;
                                margin: 0 auto;
                            }
                            .container .content {
                                display: none;
                                padding : 5px;
                            }
                        </style>
                        
                        <div class="container">
                            <div class="header btn btn-primary btn-pill mr-2"><span>Continuar leyendo...</span>
                        
                            </div>
                            <div class="content">
                                                 
                          <p><br>

                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                          </p>

                        </div>
                    </div>
    
                    <a id="proxremates"></a>
                    <br><br><br>
                </p>

            </section>
        </div>
    </div>

    <section class="miri-ui-kit-section how-we-work-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                        <h2 class="h1 font-weight-semibold mb-4">Pr&oacute;ximos Remates. </h2>
                        <p class="mb-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <p class="mb-5"><br>
                            <b>M&aacute;s Informaci&oacute;n:</b><br>
                            
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                            <div class="container">
                                <div class="headertratamiento btn btn-primary btn-pill mr-2"><span>Programa</span>
                            
                                </div>
                                <div class="content">

                                    <p class="mb-5">
                                    <br><b>M&aacute;s Informaci&oacute;n</b><br><br>

                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                                    </p>
                                </div>
                            </div>

                        </p> 

                 </div>
                <div class="col-md-6">
                    <iframe style="width:100%;height:300px;" src="https://www.youtube.com/embed/wCVhh5MjDLs">
                    </iframe>
                </div>
            </div>
        </div>
    
        <a id="comoofertar"></a>
        <br>
    </section>


    <section class="miri-ui-kit-section how-we-work-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                        <h2 class="h1 font-weight-semibold mb-4">C&oacute;mo Ofertar. </h2>
                        <p class="mb-5">
    
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                        </p>
                        <p class="mt-4"><a href="tel:5491145678910"><button class="btn btn-primary btn-pill mr-2">Llamanos ahora</button></a></p>                           
                 </div>
                 <div class="col-md-6">
                    <iframe style="width:100%;height:300px;" src="https://www.youtube.com/embed/wCVhh5MjDLs">
                    </iframe>
                </div>
            </div>
        </div>
    
        <a id="nosotros"></a>
        <br>
    </section>


    <section class="miri-ui-kit-section how-we-work-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                        <h2 class="h1 font-weight-semibold mb-4">Nosotros. </h2>
                        <p class="mb-5">
    
                            <b>M&aacute;s Informaci&oacute;n</b><br><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                                </p>
                        <p class="mt-4"><a href="tel:5491145678910"><button class="btn btn-primary btn-pill mr-2">Llamanos ahora</button></a></p>                            
                 </div>
                 <div class="col-md-6">
                    <iframe style="width:100%;height:300px;" src="https://www.youtube.com/embed/wCVhh5MjDLs">
                    </iframe>
                </div>
            </div>
        </div>
    
        <a id="infocontacto"></a>
        <br>
    </section>



    <footer class="pt-5 mt-2">
        <div class="container">
            <h2 class="h1 font-weight-semibold mb-4">
            Contacto.</h2>
<p><h6>TELEFONOS</h6>

<a href="tel:5491145678910">54 9 11 4567 8910</a><br>
<a href="tel:5491145678910">54 9 11 4567 8910</a><br>
<a href="tel:5491145678910">CASA CENTRAL: 54 9 11 4567 8910</a><br>
</p>

<p>
<h6>MAIL</h6>

<a href="info@gmail.com">info@gmail.com</a><br>

</p>
<p>
<h6>HORARIOS DE ATENCION</h6>

Lunes a Viernes, de 9 a las 18 hs.

</p>

        <p>
        <h6>
        Envianos tus dudas y consultas y a la brevedadad nos contactaremos.
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
                <span class="navbar-text">&copy; Todos los derechos reservados.</span>
                <div class="navbar-nav ml-auto justify-content-center">
                    <a href="#" class="nav-link">Soporte</a>
                    <a href="#" class="nav-link">T&eacute;rminos y condiciones</a>
                    <a href="#" class="nav-link">Pol&iacute;tica de privacidad</a>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/wCVhh5MjDLs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                if(isMobile()) {
                    window.open(urlMobile + mensaje, '_blank')
                }else{
                    window.open(urlDesktop + mensaje, '_blank')
                }
                buttonSubmit.innerHTML = '<i class="fab fa-whatsapp"></i> Enviar WhatsApp'
                buttonSubmit.disabled = false
            }, 1000);
        });
    </script>


<script>                                        
    $(".headertratamiento").click(function () {

        $header = $(this);
        //getting the next element
        $content = $header.next();
        //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
        $content.slideToggle(250, function () {
            //execute this after slideToggle is done
            //change text of header based on visibility of content div
            $header.text(function () {
                //change text based on condition
                return $content.is(":visible") ? "Programa" : "Programa";
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
            function(event) {
                if(!event.detail || event.detail == 1) {
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

        $(window).resize(function() {
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