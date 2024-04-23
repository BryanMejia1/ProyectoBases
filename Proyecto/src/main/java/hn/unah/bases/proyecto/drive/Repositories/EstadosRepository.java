package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Estados;

@Repository
public interface EstadosRepository extends CrudRepository<Estados, Integer> {
    
}
