const abrir = document.getElementById('abrir');
const cerrar = document.getElementById('cerrar');
const modal = document.getElementById('modal_contenedor');

abrir.addEventListener('click', () => {
	modal.classList.add('mostrar');
});

cerrar.addEventListener('click', () => {
	modal.classList.remove('mostrar');
});

