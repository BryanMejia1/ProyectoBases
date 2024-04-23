package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Direcciones;

@Repository
public interface DireccionesRepository extends CrudRepository<Direcciones, Integer>{
    
}
