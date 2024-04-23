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
@Table(name="tbl_comentarios")
@Data
public class Comentarios {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="codigo_comentario")
    private int codigoComentario;

    @OneToOne
    @JoinColumn(name = "codigo_archivo", referencedColumnName = "codigo_archivo")
    private Archivos archivo;

    @OneToOne
    @JoinColumn(name = "usuario", referencedColumnName = "codigo_usuario")
    private Usuarios usuario;

    private String comentario;

    @Column(name="fecha_comentario")
    private Date fechaComentario;
}