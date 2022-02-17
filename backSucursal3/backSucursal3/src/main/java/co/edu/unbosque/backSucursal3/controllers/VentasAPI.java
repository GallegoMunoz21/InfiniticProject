package co.edu.unbosque.backSucursal3.controllers;



import java.util.List;
import java.util.Scanner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.Scanner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.multipart.MultipartFile;
import  org.springframework.web.bind.annotation.RequestParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import org.springframework.web.multipart.MultipartFile;

import co.edu.unbosque.backSucursal3.repositories.VentasDAO;
import co.edu.unbosque.backSucursal3.models.Ventas;

@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.POST, RequestMethod.GET,
		RequestMethod.PUT, RequestMethod.DELETE})

@RequestMapping("/api/ventas")

public class VentasAPI {
	@Autowired
	private VentasDAO ventasdao;
	
	@PostMapping("/guardar")
	public Ventas guardar (@Validated @RequestBody Ventas ventas) {
		return ventasdao.insert(ventas);
		
	}
	
	@GetMapping("/listar")
	public List<Ventas> listar(){
		return ventasdao.findAll();
		
	}
	
	@PutMapping("/actualizar")
	public void actualizar(@RequestBody Ventas ventas) {
		ventasdao.save(ventas);
	}
	
	@DeleteMapping("/eliminar/{id}")
	public void eliminar (@PathVariable String id) {
		ventasdao.deleteById(id);

}
}
