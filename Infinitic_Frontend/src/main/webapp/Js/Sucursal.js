const mensaje = document.getElementById('mensaje');

const ValidarMenu =(m) =>{
	switch(m){
		case "usuarios":
		case "clientes":
			mensaje.innerHTML="Medellin";
		break;
		case "productos":
		case "proveedores":
			mensaje.innerHTML="Cali";
		break;
		case "ventas":
		case "reportes":
			mensaje.innerHTML="Bogota";
		break;
	}
	return true;
}