package co.edu.unbosque.backConsolidacionTienda.controllers;

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

import co.edu.unbosque.backConsolidacionTienda.repositories.ConsolidacionDAO;
import co.edu.unbosque.backConsolidacionTienda.models.Consolidacion;



@RestController
@CrossOrigin(origins="*", methods= {RequestMethod.POST, RequestMethod.GET,
		RequestMethod.PUT, RequestMethod.DELETE})

@RequestMapping("/api/consolidacion")
public class ConsolidacionAPI {
	
	@Autowired
	private ConsolidacionDAO consolidaciondao;
	
	@PostMapping("/guardar")
	public Consolidacion guardar (@RequestBody Consolidacion consolidacion) {
		return consolidaciondao.insert(consolidacion);
		
	}
	
	@GetMapping("/listar")
	public List<Consolidacion> listar(){
		return consolidaciondao.findAll();
		
	}

}
