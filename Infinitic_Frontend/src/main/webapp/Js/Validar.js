function validarExt(){
	var archivoInput = document.getElementById("archivoInput");
	var archivoRuta = archivoInput.value;
	var extPermitida = /(.csv| .CSV)$/i;
	
	if(!extPermitida.exec(archivoRuta)){
	alert('Seleccione un archivo csv'),
	archivoInput.value="";
	return false;
	
	}
}