package hn.unah.bases.proyecto.drive.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hn.unah.bases.proyecto.drive.Entities.Notificaciones;

@Repository
public interface NotificacionesRepository extends CrudRepository<Notificaciones, Integer>{
    
}
