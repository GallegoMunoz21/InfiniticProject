package co.edu.unbosque.backSucursal3.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import co.edu.unbosque.backSucursal3.models.Detalle_venta;

@Repository
public interface  Detalle_ventasDAO extends MongoRepository<Detalle_venta, String> {

}
