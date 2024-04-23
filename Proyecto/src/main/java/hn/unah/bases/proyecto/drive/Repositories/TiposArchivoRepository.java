package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.TiposArchivo;

@Repository
public interface TiposArchivoRepository extends CrudRepository<TiposArchivo, Integer> {
    
}
