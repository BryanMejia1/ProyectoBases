package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.HistorialCambios;

@Repository
public interface HistorialCambiosRepository extends CrudRepository<HistorialCambios, Integer>{
    
}
