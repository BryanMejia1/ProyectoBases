package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Etiquetas;

@Repository
public interface EtiquetasRepository extends CrudRepository<Etiquetas, Integer>{
    
}
