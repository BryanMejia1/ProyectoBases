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
@Table(name="tbl_historiales")
@Data
public class Historiales {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_historial")
    private int codigoHistorial;

    private String historial;

    private String estado;

    @ManyToMany(mappedBy = "historiales")
    private List<DatosPrivacidad> datosprivacidad;
}
