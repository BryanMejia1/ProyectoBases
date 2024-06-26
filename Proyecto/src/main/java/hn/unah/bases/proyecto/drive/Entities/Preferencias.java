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

@Entity
@Table(name="tbl_preferencias")
@Data
public class Preferencias {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_preferencia")
    private int codigoPreferencia;

    @OneToOne
    @JoinColumn(name = "tipo_preferencia", referencedColumnName = "codigo_tipo_preferencia")
    private TipoPreferencia tipo_preferencia;

    @OneToOne(mappedBy = "preferencia")
    private Usuarios usuarios;
}
