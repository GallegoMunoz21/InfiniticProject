
  function validar() {

        cedula = document.getElementById("id_editar").value;
        if (cedula.length == 0) {
	alert("No es posible actualizar un registro inexistente. Por favor, seleccione un registro e intente de nuevo"); 
        

		return false;
        }
		
	
        return true;
}
    




