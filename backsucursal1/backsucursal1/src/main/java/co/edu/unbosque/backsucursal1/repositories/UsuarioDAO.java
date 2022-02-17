package co.edu.unbosque.backsucursal1.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import co.edu.unbosque.backsucursal1.models.Usuarios;


@Repository
public interface UsuarioDAO extends MongoRepository<Usuarios,String> {

}
