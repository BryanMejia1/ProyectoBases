package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Archivos;

@Repository
public interface ArchivosRepository extends CrudRepository<Archivos, Integer>{
    
}
