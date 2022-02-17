package co.edu.unbosque.backSucursal2.controller;


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
 
import co.edu.unbosque.backSucursal2.repositories.ProveedoresDAO;
import co.edu.unbosque.backSucursal2.models.Proveedores;

@RestController 
@CrossOrigin(origins ="*", methods = {RequestMethod.POST,RequestMethod.GET,RequestMethod.PUT,RequestMethod.DELETE})
@RequestMapping("/api/proveedores")
public class ProveedoresAPI {
	
	@Autowired
	private ProveedoresDAO proveedoresdao;
	
	@PostMapping("/guardar")
		public Proveedores guardar(@Validated @RequestBody Proveedores proveedores) {
		return proveedoresdao.insert(proveedores);
	}
	
	@GetMapping("/listar")
	public List<Proveedores>listar(){
		return proveedoresdao.findAll();
	}
	@PutMapping("/actualizar")
    public void actualizar(@RequestBody Proveedores proveedores) {
        proveedoresdao.save(proveedores);
    }
	/*@PutMapping("/actualizar/{id}")
	public void actualizar(@PathVariable String id,@Validated @RequestBody Usuarios usuarios) {
		usuariosdao.save(usuarios);
	}*/
	
	@DeleteMapping("/eliminar/{id}")
	public void eliminar(@PathVariable String id) {
		proveedoresdao.deleteById(id);
	}
	

}