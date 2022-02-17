package co.edu.unbosque.backsucursal1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import co.edu.unbosque.backsucursal1.repositories.UsuarioDAO;
import co.edu.unbosque.backsucursal1.models.Usuarios;

@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.POST, RequestMethod.GET,
		RequestMethod.PUT, RequestMethod.DELETE})

@RequestMapping("/api/usuarios")
public class UsuariosAPI{
	
	@Autowired
	private UsuarioDAO usuariodao;
	
	@PostMapping("/guardar")
	public Usuarios guardar (@RequestBody Usuarios usuarios) {
		return usuariodao.insert(usuarios);
		
	}
	
	@GetMapping("/listar")
	public List<Usuarios> listar(){
		return usuariodao.findAll();
		
	}
	
	@PutMapping("/actualizar")
	public void actualizar(@RequestBody Usuarios usuarios) {
		usuariodao.save(usuarios);
	}
	
	@DeleteMapping("/eliminar/{id}")
	public void eliminar (@PathVariable String id) {
		usuariodao.deleteById(id);
	}

}