<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
  <!-- Contiene el estilo del Login --> 
  <link rel="stylesheet" href="css/Login.css">

   <!-- Contiene el estilo de los iconos --> 
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>

  <title>Login</title>

</head>

<body>
<!-- partial:index.partial.html -->
<!-- Contiene las partículas --> 
<div id="particles-js"></div>

<!-- Formulario --> 
<div class="formulario">
  <form action="./Servlet" method="post" class="formulario_registro">
  		<div class="logo">
      <img src="imagen/Infinitic.png" class="logo">
      </div>

      <div class="form_div">
        <label for="usuario" class="formulario_label"></label>
        <i class="login_icono fas fa-user"></i>
          <input type="text" class="formulario_input" name="txtusuario" id="usuario" placeholder="Usuario..."  autocomplete="off" required title="NO se permiten caracteres especiales" pattern="[a-zA-Z0-9_]+( [a-zA-Z0-9_]+)*$">       
        </div>
     

      <div class="form_div"> 
        <label for="password" class="formulario_label"></label>   
        <i class="login_icono fas fa-lock"></i>      
          <input type="password" class="formulario_input" name="txtpassword" id="password" placeholder="Contraseña..." required title="Mínimo 4 caracteres" pattern="^.{4,12}">   
        </div>
      

      <input type="submit" class="formulario_boton" name="accion" value="Acceder">

    
  </form>
</div>



<!-- particles.js lib - https://github.com/VincentGarreau/particles.js --> 
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<!-- Contiene las partículas que se despliegan en la pantalla -->
  <script  src="Js/Partículas.js"></script>

</body>

</html>
