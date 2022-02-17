<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         
        <!--=============== Contiene el estilo de la cabecera del sitio web ===============--> 
        <link rel="stylesheet" href="css/cabecera.css">

         <!--=============== Contiene el estilo del cuerpo del sitio web ===============--> 
         <link rel="stylesheet" href="css/cuerpo.css">

        <!--=============== Contiene el estilo del pie de p�gina del home ===============--> 
        <link rel="stylesheet" href="css/Pie_de_Pagina.css">

        <!--=============== Contiene el estilo del icono de usuario ===============--> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
          <!--=============== Contiene el estilo del icono para desplegar el men� responsive ===============-->
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <title>Inicio</title>
    </head>
    <body>

<header class="header" id="header">
    <nav class="nav container">
         <a href="Controlador?menu=Principal">
            <img src="imagen/Infinitic.png" class="nav_home" >
        </a>
        

        <div class="nav_menu" id="nav-menu">
            <ul class="nav_lista">


                <li class="nav_opcion">
                    <a href="Controlador?menu=Usuarios&accion=Listar"   class="nav_link">Usuarios</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Clientes&accion=Listar"  class="nav_link">Clientes</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Proveedores&accion=Listar" class="nav_link">Proveedores</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Productos&accion=Listar"  class="nav_link">Productos</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Ventas&accion=default&UsuarioActivo=${usuario.getCedula_usuario()}"  class="nav_link" target="myFrame">Ventas</a>    
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Reportes&accion=Listar"  class="nav_link" >Reportes</a>
                </li>
                

                <li class="nav_opcion">
                    <a href=""><i class="desplegar fas fa-caret-down"></i></a>
                    <ul class="nav_submenu">
                        <!--  <li><a class="nav_usuarioactivo"><i class="fas fa-user-check"></i>&nbsp&nbsp NombreUsuario</a></li><br>  -->            
                        <li><a  href="#" class="nav_desconectar"><i class="fas fa-window-close"></i>&nbsp&nbsp Desconectar</a></li>
                    </ul>
                </li>
                
            </ul>
         <!--=============== Dise�o del icono para cerrar el men� responsive ===============-->
            <div class="nav_cerrar" id="nav-cerrar">
                <i class='bx bx-x'></i>
            </div>
        </div>
        <!--=============== Dise�o del icono del men� responsive ===============-->
        <div class="nav_toggle" id="nav-toggle">
            <i class='bx bx-dialpad'></i>
        </div>


            </nav>
        </header>
 
       
               <!--==================== Pie de P�gina ====================-->
               <footer class="footer section">
                <div class="footer__container container grid">
                    <div class="footer__content">
                        <h3 class="footer__title">S�guenos en:</h3>
                        
                        <div class="footer__social">
                            <a href="https://www.facebook.com/" target="_blank" class="footer__social-link">
                                <i class='bx bxl-facebook'></i>
                            </a>
                            <a href="https://www.instagram.com/" target="_blank" class="footer__social-link">
                                <i class='bx bxl-instagram-alt' ></i>
                            </a>
                            <a href="https://twitter.com/" target="_blank" class="footer__social-link">
                                <i class='bx bxl-twitter' ></i>
                            </a>
                        </div>
                    </div>

                    <div class="footer__content">
                        <h3 class="footer__title">Cont�ctenos</h3>
                        
                        <ul class="footer__links">
                            <li>
                                <a class="footer_dato">Tel�fono</a>
                            </li>
                            <li>
                                <a class="footer_dato">Direcci�n</a>
                            </li>
                            <li>
                                <a class="footer_dato">Email</a>
                            </li>
                        </ul>
                    </div>



                 
                    

                    <div class="footer__content">
                        <h3 class="footer__title">�Quienes somos?</h3>
                        
                        <ul class="footer__links">
                            <li>
                                <a href="#" class="footer__link">Link</a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer__content">
                        <h3 class="footer__title">Enlaces de Inter�s</h3>
                        
                        <ul class="footer__links">
                            <li>
                                <a href="#" class="footer__link">Link</a>
                            </li>
                            <li>
                                <a href="#" class="footer__link">Link</a>
                            </li>
                        </ul>
                    </div>
                    </div>
                </footer>
                    

               

   
            <!--=============== Dise�o del icono para regresar a la parte de arriba de la p�gina ===============-->
            <a href="#" class="scrollup" id="scroll-up">
                <i class='bx bx-up-arrow-alt scrollup__icon'></i>
            </a>
            
            
           

        
        <!--=============== JS para pegresar a la parte de arriba de la p�gina web ===============-->
        <script src="Js/scrollreveal.es.js"></script>

        
        <!--=============== JS para que la barra de men� se ajuste al tama�o de la resoluci�n de pantalla ===============-->
        <script src="Js/menu_responsive.js"></script>
        
         <!--=============== Sucursal ===============-->
        <script src="Js/Sucursal.js"></script>
    </body>
</html>