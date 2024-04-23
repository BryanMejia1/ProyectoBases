package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.DatosPrivacidad;

@Repository
public interface DatosPrivacidadRepository extends CrudRepository<DatosPrivacidad, Integer>{
    
}
