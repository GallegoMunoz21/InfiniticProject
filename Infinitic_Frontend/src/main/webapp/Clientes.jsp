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

<!--=============== Contiene el estilo de la tabla ===============-->
<link rel="stylesheet" href="css/Tabla.css">

<!--=============== Contiene el estilo del formulario ===============-->
<link rel="stylesheet" href="css/Formulario.css">

<!--=============== Contiene el estilo de los iconos ===============-->        
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
     
<!--=============== Contiene el estilo del icono para desplegar el menú responsive ===============-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">



<title>Clientes</title>
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
                    <a href="Controlador?menu=Usuarios&accion=Listar" class="nav_link">Usuarios</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Clientes&accion=Listar" class="nav_link">Clientes</a>
                </li>

                <li class="nav_opcion">
                    <a href="" class="nav_link" >Proveedores</a>
                </li>

                <li class="nav_opcion">
                    <a href="Controlador?menu=Productos&accion=Listar" class="nav_link">Productos</a>
                </li>

                <li class="nav_opcion">
                    <a href="" class="nav_link">Ventas</a>
                </li>

                <li class="nav_opcion">
                    <a href="" class="nav_link">Reportes</a>
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
       
       <!-- Botón para agregar un nuevo registro-->
      	
      	<div class="contenedor_agregar">

      	<div class="agregar_user">
      	<i id="abrir" class="boton_abrir fas fa-user-plus fa-2x"></i>
       </div>

       <div class="sucursal">
       
       <span><i class="fa-solid fa-wifi fa-fade"></i>Sede - Medellín</span>
       
       </div>
       </div>
       
       
       <!-- Seccion 1.1 --Formulario para actualizar los registros-->
       
       <div class="contenedor_actualizar">
		 <form class="formulario_update" method="get" action="Controlador" onsubmit="return validar()">
		 
		 <div class="form_update">
      <!--  Trae el id y lo guarda en el input que está oculto  -->
      <input type="hidden" name="menu" value="Clientes"> 
      <input type="hidden" name="txtid" value="${clienteSeleccionado.get_id()}">
      <!-- /////// -->
      <input maxlength="12"type="text" name="txtcedula" class="update_input" id="id_editar" placeholder="Cédula" readonly="readonly" required
		title="Este campo es obligatorio" required pattern="[0-9]+" value="${clienteSeleccionado.getCedula_cliente()}">		
	  </div>
	  
	  
	  <div class="form_update">
       <input maxlength="50" type="text" name="txtnombre" class="update_input" placeholder="Nombre"  required
		title="Este campo es obligatorio" required pattern="[a-zA-Z]+" value="${clienteSeleccionado.getNombre_cliente()}">          
      </div>
		 
		  <div class="form_update">
        <input type="text" name="txtemail" class="update_input" placeholder="@email" required
		title="Este campo es obligatorio" value="${clienteSeleccionado.getEmail_cliente()}">
      </div>
      
      <div class="form_update">
        <input type="text" name="txtdireccion"  class="update_input" placeholder="Direccion" required
		 title="Este campo es obligatorio" required pattern="[a-zA-Z0-9]+" value="${clienteSeleccionado.getDireccion_cliente()}">      
      </div>
      
      <div class="form_update"> 
          <input type="text" name="txttelefono"  class="update_input" placeholder="Telefono" required
         title="Este campo es obligatorio" required pattern="[0-9]+" value="${clienteSeleccionado.getTelefono_cliente()}">   
        </div>
      
       <div class="botones_update">  
      <input type="submit" class="boton_actualizar" id="boton" name="accion" value="Actualizar">
     </div>
      
      <div class="botones_update">  
      <a href="Controlador?menu=Clientes&accion=Listar">
   		<input type="button" class="boton_cancelar"  value="Cancelar">
		</a>
     </div>
      
	</form>	 
	</div>	       

       
       
        
      <!--Contenedor del modal--> 
       <div class="modal-contenedor" id="modal_contenedor">
	<div class="modal"> 
	
	 <!-- Seccion 1.2 --Formulario para agregar los registros-->
        <div class="formulario">
  <form class="formulario_registro" method="get" action="Controlador">
      <div class="formulario_titulo">CLIENTES</div>
      
      
      
      
      <div class="form_div">
      <i class="formulario_icono fas fa-id-card"></i>
      <!--  Trae el id y lo guarda en el input que está oculto  -->
      <input type="hidden" name="menu" value="Clientes"> 
      <input type="hidden" name="txtid">
      <!-- /////// -->
      
      <input maxlength="12" type="text" name="txtcedula" class="formulario_input" placeholder="Cedula..." title="Este campo es obligatorio" required pattern="[0-9]+">		
	  </div>	
	  
	  <div class="form_div">
        <i class="formulario_icono fas fa-user-tag"></i>
       <input maxlength="50" type="text" name="txtnombre" class="formulario_input" placeholder="Nombre..." title="Este campo es obligatorio" required pattern="[a-zA-Z]+">         
      </div>
		
      <div class="form_div">
        <i class="formulario_icono fas fa-at"></i>
        <input maxlength="50" type="email" name="txtemail" class="formulario_input" placeholder="@email..." title="Este campo es obligatorio">
      </div>
      
      <div class="form_div">
        <i class="formulario_icono fas fa-route"></i>
        <input maxlength="50" type="text" name="txtdireccion" class="formulario_input" placeholder="Direccion..." title="Este campo es obligatorio" required pattern="[a-zA-Z0-9]+">      
      </div>
     
      <div class="form_div">           
        <i class="formulario_icono fas fa-phone"></i>    
          <input maxlength="50" type="text" name="txttelefono" class="formulario_input"  placeholder="Telefono..." title="Este campo es obligatorio" required pattern="[0-9]+">   
        </div>
      
      
      <input type="submit" class="boton_agregar" name="accion" value="Agregar">

       <div class="boton_cerrar" id="cerrar">
                <span>&times;</span>
            </div>
  </form>
  </div>
</div>
</div>

	<!-- Seccion 2 Tabla de Usuarios-->
	
    		<div class="tabla">
            <table>
              <thead>
                <tr>
                  <th>Cedula</th>
                  <th>Nombre</th>
                  <th class="email">@correo</th>
                  <th>Direccion</th>
                  <th>Telefono</th>
                  <th class="opcion1">Editar</th>
                  <th class="opcion2">Eliminar</th>
                </tr>
              </thead>
           
          
              <tbody>
                <c:forEach var="lista" items="${listaClientes}">
						<tr>
							<td>${lista.getCedula_cliente()}</td>
							<td>${lista.getNombre_cliente()}</td>
							<td>${lista.getEmail_cliente()}</td>
							<td>${lista.getDireccion_cliente()}</td>
							<td>${lista.getTelefono_cliente()}</td>
							<td><a 
								href="Controlador?menu=Clientes&accion=Cargar&id=${lista.getCedula_cliente()}">
								<i id="abrir_editar" class="icono_editar fas fa-users-cog"></i></a></td> 
							<td> <a
								href="Controlador?menu=Clientes&accion=Eliminar&id=${lista.get_id()}">
									<i class="icono_eliminar fas fa-user-times"></i></a></td>
						</tr>
					</c:forEach>
                
              </tbody>
            </table>
          </div>
	
		
	
	<!--=============== Función para que la barra de menú se ajuste al tamaño de la resolución de pantalla ===============-->
        <script src="Js/menu_responsive.js"></script>
                
          <!--=============== Función para abrir y cerrar la ventana modal ===============-->
        <script src="Js/Modal.js"></script>
        
        
         <!--=============== Función para validar habilitar y deshabilitar el boton actualizar ===============-->
        <script src="Js/Formulario.js"></script>
</body>
</html>