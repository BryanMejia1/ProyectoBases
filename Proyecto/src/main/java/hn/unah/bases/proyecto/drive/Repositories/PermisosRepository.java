package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Permisos;

@Repository
public interface PermisosRepository extends CrudRepository<Permisos, Integer>{
    
}
