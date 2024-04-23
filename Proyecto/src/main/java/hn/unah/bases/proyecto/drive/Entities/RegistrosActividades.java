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
@Table(name="tbl_registros_actividades")
@Data
public class RegistrosActividades {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_regi_act")
    private int codigoRegistroActividad;

    @OneToOne
    @JoinColumn(name = "codigo_usuario", referencedColumnName = "codigo_usuario")
    private Usuarios usuario;

    @Column(name="tipo_actividad")
    private String tipoActividad;

    @Column(name="fecha_actividad")
    private Date fechaActividad;
}
