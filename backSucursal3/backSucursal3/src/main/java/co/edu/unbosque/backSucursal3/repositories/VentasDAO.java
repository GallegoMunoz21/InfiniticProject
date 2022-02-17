package co.edu.unbosque.backSucursal3.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import co.edu.unbosque.backSucursal3.models.Ventas;

@Repository
public interface  VentasDAO extends MongoRepository<Ventas, String>{

}
