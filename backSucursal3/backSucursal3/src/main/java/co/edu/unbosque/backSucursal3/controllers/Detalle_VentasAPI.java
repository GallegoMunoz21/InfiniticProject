package co.edu.unbosque.backSucursal3.controllers;

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

import co.edu.unbosque.backSucursal3.models.Detalle_venta;
import co.edu.unbosque.backSucursal3.repositories.Detalle_ventasDAO;

@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.POST, RequestMethod.GET,
		RequestMethod.PUT, RequestMethod.DELETE})

@RequestMapping("/api/detalleventa")

public class Detalle_VentasAPI {
	@Autowired
	private Detalle_ventasDAO detalle_ventadao;
	
	@PostMapping("/guardar")
	public Detalle_venta guardar (@Validated @RequestBody Detalle_venta detalle_venta) {
		return detalle_ventadao.insert(detalle_venta);
		
	}
	
	@GetMapping("/listar")
	public List<Detalle_venta> listar(){
		return detalle_ventadao.findAll();
		
	}
	
	@PutMapping("/actualizar")
	public void actualizar(@RequestBody Detalle_venta detalle_venta) {
		detalle_ventadao.save(detalle_venta);
	}
	
	@DeleteMapping("/eliminar/{id}")
	public void eliminar (@PathVariable String id) {
		detalle_ventadao.deleteById(id);

}
}
	

