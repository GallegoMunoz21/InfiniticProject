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



<title>Productos</title>
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

      	<div class="producto">
      	<i id="abrir" class="boton_abrir fas fa-cart-plus fa-2x"></i>
       </div>
       
       <div class="agregar_producto">
					<form action="http://Localhost:8083/api/productos/import" method="post" enctype="multipart/form-data">
					<h6>Importar Archivo csv:</h6>
					<input type="file" name="file" class="btncargar_archivo" id="archivoInput" onchange="return validarExt()">
					<input type="submit" class="btnsubir_archivo" value="cargar">	
					</form>	
		</div>
       <div class="sucursal2">
       
       <span><i class="fa-solid fa-wifi fa-fade"></i>Sede - Cali</span>
       
       </div>
       </div>
       
       
       <!-- Seccion 1.1 --Formulario para actualizar los registros-->
       
       <div class="contenedor_actualizar">
		 <form class="formulario_update" method="get" action="Controlador" onsubmit="return validar()">
		 
		 <div class="form_update">
      <!--  Trae el id y lo guarda en el input que está oculto  -->
      <input type="hidden" name="menu" value="Productos"> 
      <input type="hidden" name="txtid" value="${productoSeleccionado.get_id()}">
      <!-- /////// -->
      <input maxlength="12" type="text" name="txtcodigo" class="update_input2" id="id_editar" placeholder="Codigo" required readonly="readonly"
		title="Este campo es obligatorio" required pattern="[0-9]+" value="${productoSeleccionado.getCodigo_producto()}">		
	  </div>
	  
	  
	  <div class="form_update">
       <input maxlength="50" type="text" name="txtnombre" class="update_input2" placeholder="Producto"  required
		value="${productoSeleccionado.getNombre_producto()}">          
      </div>
		 
		  <div class="form_update">
        <input maxlength="12" type="text" name="txtnit" class="update_input2" placeholder="Nit" required
		 title="Este campo es obligatorio" required pattern="[0-9]+" value="${productoSeleccionado.getNit_proveedor()}">
      </div>
      
      <div class="form_update">
        <input maxlength="12" type="text" name="txtpreciocompra" class="update_input2" placeholder="$ compra" required
		 title="Este campo es obligatorio" required pattern="[0-9]+" value="${productoSeleccionado.getPrecio_compra()}">      
      </div>
      
      <div class="form_update"> 
          <input maxlength="12" type="text" name="txtiva"  class="update_input2" placeholder="Iva" readonly="readonly"  required
          title="Este campo es obligatorio" required pattern="[0-9]+" value="${productoSeleccionado.getIva_compra()}">   
        </div>
      
      <div class="form_update"> 
          <input maxlength="12"  type="text" name="txtprecioventa"  class="update_input2" placeholder="$ venta" required
          title="Este campo es obligatorio" required pattern="[0-9]+" value="${productoSeleccionado.getPrecio_venta()}">   
        </div>
      
       <div class="botones_update">  
      <input type="submit" class="boton_actualizar" id="boton" name="accion" value="Actualizar">
     </div>
      
      <div class="botones_update">  
      <a href="Controlador?menu=Productos&accion=Listar">
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
  <form class="formulario_registro2" method="get" action="Controlador">
      <div class="formulario_titulo">PRODUCTOS</div>
      
      
      
      
      <div class="form_div">
      <i class="formulario_icono fas fa-barcode"></i>
      <!--  Trae el id y lo guarda en el input que está oculto  -->
      <input type="hidden" name="menu" value="Productos"> 
      <input type="hidden" name="txtid">
      <!-- /////// -->
      
      <input maxlength="12"  type="text" name="txtcodigo" class="formulario_input" placeholder="Código..." title="Este campo es obligatorio" required pattern="[0-9]+">		
	  </div>	
	  
	  <div class="form_div">
        <i class="formulario_icono fas fa-laptop"></i>
       <input maxlength="50" type="text" name="txtnombre" class="formulario_input" placeholder="Nombre producto..." title="Este campo es obligatorio" required pattern="[a-zA-Z]+">         
      </div>
		
      <div class="form_div">
        <i class="formulario_icono fas fa-pen-alt"></i>
        <input maxlength="12" type="text" name="txtnit" class="formulario_input" placeholder="Nit proveedor..." title="Este campo es obligatorio" required pattern="[0-9]+" >
      </div>
        
      <div class="form_div">          
        <i class="formulario_icono fas fa-coins"></i>   
          <input maxlength="12" type="text" name="txtpreciocompra" class="formulario_input"  placeholder="Precio de compra..." title="Este campo es obligatorio" required pattern="[0-9]+" >   
        </div>
        
         <div class="form_div">
        <i class="formulario_icono fas fa-percentage"></i>
        <input maxlength="12" type="text" name="txtiva" class="formulario_input" value="19.0" readonly="readonly" title="Este campo es obligatorio" required pattern="[0-9]+" >      
      </div>
        
        <div class="form_div">          
        <i class="formulario_icono fas fa-coins"></i>  
          <input maxlength="12" type="text" name="txtprecioventa" class="formulario_input"  placeholder="Precio venta..." title="Este campo es obligatorio" required pattern="[0-9]+" >   
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
                  <th>Codigo producto</th>
                  <th>Nombre producto</th>
				  <th>Nit proveedor</th>
				  <th>Precio compra</th>
				  <th>Iva compra</th>
				  <th>Precio venta</th>
                  <th class="opcion1">Editar</th>
                  <th class="opcion2">Eliminar</th>
                </tr>
              </thead>
           
          
              <tbody>
                <c:forEach var="lista" items="${listaProductos}">
						<tr>
							<td>${lista.getCodigo_producto()}</td>
							<td>${lista.getNombre_producto()}</td>
							<td>${lista.getNit_proveedor()}</td>	
							<td>${lista.getPrecio_compra()}</td>
							<td>${lista.getIva_compra()}</td>
							<td>${lista.getPrecio_venta()}</td>
							<td><a 
								href="Controlador?menu=Productos&accion=Cargar&id=${lista.getCodigo_producto()}">
								<i id="abrir_editar" class="icono_editar fas fa-pencil-alt"></i></a></td> 
							<td> <a 
								href="Controlador?menu=Productos&accion=Eliminar&id=${lista.get_id()}">
									<i class="icono_eliminar fas fa-trash-alt"></i></a></td>
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
        
        <!--=============== Función para validar que el archivo tenga extensión .csv ===============-->
        <script src="./Js/Validar.js"></script>
        
        
</body>
</html>