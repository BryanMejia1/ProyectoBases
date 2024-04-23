package hn.unah.bases.proyecto.drive.Entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;

@Entity
@Table(name="tbl_historial_cambios")
@Data
public class HistorialCambios {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_cambio")
    private int codigoCambio;

    @OneToOne
    @JoinColumn(name = "codigo_archivo", referencedColumnName = "codigo_archivo")
    private Archivos archivo;

    private String descripcion;

    @Column(name="fecha_cambio")
    private Date fechaCambio;
}
