<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--=============== Contiene el estilo de la cabecera del sitio web ===============--> 
<link rel="stylesheet" href="css/cabecera.css">

<!--=============== Contiene el estilo del cuerpo del sitio web ===============-->
<link rel="stylesheet" href="css/cuerpo.css">


<!--=============== Contiene el estilo del módulo de ventas ===============-->
<link rel="stylesheet" href="css/reportes.css">

<!--=============== Contiene el estilo de los iconos ===============-->        
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">

<!--=============== Contiene el estilo del icono para desplegar el menú responsive ===============-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">


<title>Reportes</title>
</head>

    <!--==================== Cabecera ====================-->
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
                    <a href="Controlador?menu=Ventas&accion=default&UsuarioActivo=${usuario.getCedula_usuario()}"  class="nav_link">Ventas</a>    
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
         <!--=============== Diseño del icono para cerrar el menú responsive ===============-->
            <div class="nav_cerrar" id="nav-cerrar">
                <i class='bx bx-x'></i>
            </div>
        </div>
        <!--=============== Diseño del icono del menú responsive ===============-->
        <div class="nav_toggle" id="nav-toggle">
            <i class='bx bx-dialpad'></i>
        </div>


            </nav>
        </header>
        
<body>



	<div class="contenedor_agregar">

       <div class="sucursal">
       
       <span>Sede - Bogotá</span>
       
       </div>
       </div>
       






<!--=============== Función para que la barra de menú se ajuste al tamaño de la resolución de pantalla ===============-->
        <script src="Js/menu_responsive.js"></script>

</body>
</html>