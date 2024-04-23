package hn.unah.bases.proyecto.drive.Entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.List;

@Entity
@Table(name="tbl_grupos")
@Data
public class Grupos {
  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_grupo")
    private int codigoGrupo;

    private String nombre;

    @Column(name="fecha_creacion")
    private int fechaCreacion;

    @ManyToMany(mappedBy = "grupos")
    private List<Usuarios> usuarios;
}
