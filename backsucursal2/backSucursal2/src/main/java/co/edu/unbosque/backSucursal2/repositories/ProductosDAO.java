package co.edu.unbosque.backSucursal2.repositories;



import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import co.edu.unbosque.backSucursal2.models.Productos;


@Repository
public interface ProductosDAO extends MongoRepository<Productos,String> {

}

