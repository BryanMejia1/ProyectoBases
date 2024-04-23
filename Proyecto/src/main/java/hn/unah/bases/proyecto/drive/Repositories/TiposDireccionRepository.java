package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.TiposDireccion;

@Repository
public interface TiposDireccionRepository extends CrudRepository<TiposDireccion, Integer>{
    
}
