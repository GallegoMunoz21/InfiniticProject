package co.edu.unbosque.backConsolidacionTienda.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import co.edu.unbosque.backConsolidacionTienda.models.Consolidacion;


@Repository
public interface ConsolidacionDAO extends MongoRepository<Consolidacion,String> {

}

