drop database GoogleDrive;
create database GoogleDrive;
use GoogleDrive;
CREATE TABLE tbl_archivos (
    codigo_archivo INTEGER AUTO_INCREMENT NOT NULL,
    estado         INTEGER NOT NULL,
    usuario        INTEGER NOT NULL,
    carpeta        INTEGER,
    tipo_archivo   INTEGER NOT NULL,
    nombre_archivo VARCHAR(50) NOT NULL,
    descripcion    VARCHAR(200),
    fecha_subido   DATE NOT NULL,
    PRIMARY KEY(codigo_archivo)
);

CREATE TABLE tbl_carpetas (
    codigo_carpeta INTEGER AUTO_INCREMENT NOT NULL,
    estado         INTEGER NOT NULL,
    carpeta_padre  INTEGER,
    nombre_carpeta VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_carpeta)
);

CREATE TABLE tbl_comentarios (
    codigo_comentario INTEGER AUTO_INCREMENT NOT NULL,
    codigo_archivo    INTEGER NOT NULL,
    usuario           INTEGER NOT NULL,
    comentario        VARCHAR(50) NOT NULL,
    fecha_comentario  DATE NOT NULL,
    PRIMARY KEY(codigo_comentario)
);
 
CREATE TABLE tbl_compartidos (
    archivo             INTEGER NOT NULL,
    usuario_propietario INTEGER,
    usuario_compartido  INTEGER NOT NULL,
    PRIMARY KEY(archivo)
);

CREATE TABLE tbl_compartidos_x_permisos (
    archivo INTEGER NOT NULL,
    permiso INTEGER NOT NULL
);

CREATE TABLE tbl_computadoras (
    codigo_computadora INTEGER AUTO_INCREMENT NOT NULL,
    usuario            INTEGER NOT NULL,
    nombre_pc          VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_computadora)
);

CREATE TABLE tbl_datos_privacidad (
    codigo_datos_priv INTEGER AUTO_INCREMENT NOT NULL,
    verificacion      VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_datos_priv)
);

CREATE TABLE tbl_datos_x_historial (
    datos_priv INTEGER NOT NULL,
    historial  INTEGER NOT NULL
);

CREATE TABLE tbl_direcciones (
    codigo_direccion INTEGER AUTO_INCREMENT NOT NULL,
    tipo_direccion   INTEGER NOT NULL,
    PRIMARY KEY(codigo_direccion)
);

CREATE TABLE tbl_estados (
    codigo_estado INTEGER AUTO_INCREMENT NOT NULL,
    estado        VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_estado)
);

CREATE TABLE tbl_etiquetas (
    codigo_etiqueta INTEGER AUTO_INCREMENT NOT NULL,
    codigo_usuario  INTEGER NOT NULL,
    etiqueta        VARCHAR(50) NOT NULL,
    color           VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_etiqueta)
);

CREATE TABLE tbl_grupos (
    codigo_grupo   INTEGER AUTO_INCREMENT NOT NULL,
    nombre         VARCHAR(50) NOT NULL,
    fecha_creacion INTEGER NOT NULL,
    PRIMARY KEY(codigo_grupo)
);

CREATE TABLE tbl_grupos_x_usuarios (
    codigo_administrador INTEGER NOT NULL,
    codigo_grupo         INTEGER NOT NULL,
    codigo_archivo       INTEGER NOT NULL,
    codigo_usuario       INTEGER NOT NULL,
    usuario_dueño_arc    INTEGER NOT NULL
);

ALTER TABLE tbl_grupos_x_usuarios 
ADD CONSTRAINT tbl_grupos_x_usuarios_pk 
PRIMARY KEY ( codigo_administrador, codigo_grupo );

CREATE TABLE tbl_historial_cambios (
    codigo_cambio  INTEGER AUTO_INCREMENT NOT NULL,
    codigo_archivo INTEGER NOT NULL,
    tbl_archivos   INTEGER NOT NULL,
    descripcion    VARCHAR(50) NOT NULL,
    fecha_cambio   DATE NOT NULL,
    PRIMARY KEY(codigo_cambio)
);

CREATE TABLE tbl_historiales (
    codigo_historial INTEGER AUTO_INCREMENT NOT NULL,
    historial        VARCHAR(100) NOT NULL,
    estado           VARCHAR(5) NOT NULL,
    PRIMARY KEY(codigo_historial)
);

CREATE TABLE tbl_metodos_pago (
    codigo_metodo_pago INTEGER AUTO_INCREMENT NOT NULL,
    tipo_metodo_pago   VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_metodo_pago)
);

CREATE TABLE tbl_notificaciones (
    codigo_notificacion INTEGER AUTO_INCREMENT NOT NULL,
    tipos_notif         INTEGER NOT NULL,
    descripcion         VARCHAR(200) NOT NULL,
    PRIMARY KEY(codigo_notificacion)
);

CREATE TABLE tbl_notificaciones_x_usr (
    codigo_usuario      INTEGER NOT NULL,
    codigo_notificacion INTEGER NOT NULL
);

ALTER TABLE tbl_notificaciones_x_usr 
ADD CONSTRAINT tbl_notificaciones_x_usr_pk 
PRIMARY KEY ( codigo_usuario, codigo_notificacion );
                                                                                              
CREATE TABLE tbl_ofertas (
    codigo_oferta INTEGER AUTO_INCREMENT NOT NULL,
    descuento     INTEGER NOT NULL,
    duracion      DATE NOT NULL,
    PRIMARY KEY(codigo_oferta)
);

CREATE TABLE tbl_permisos (
    codigo_permiso INTEGER AUTO_INCREMENT NOT NULL,
    tipo_permiso   VARCHAR(10) NOT NULL,
    PRIMARY KEY(codigo_permiso)
);

CREATE TABLE tbl_planes (
    codigo_plan    INTEGER AUTO_INCREMENT NOT NULL,
    oferta         INTEGER,
    nombre_plan    VARCHAR(50) NOT NULL,
    duracion       DATE NOT NULL,
    descripcion    VARCHAR(200) NOT NULL,
    precio         INTEGER NOT NULL,
    almacenamiento INTEGER NOT NULL,
    PRIMARY KEY(codigo_plan)
);

CREATE TABLE tbl_preferencias (
    codigo_preferencia INTEGER AUTO_INCREMENT NOT NULL,
    tipo_preferencia   INTEGER NOT NULL,
    PRIMARY KEY(codigo_preferencia)
);

CREATE TABLE tbl_registros_actividades (
    codigo_regi_act INTEGER AUTO_INCREMENT NOT NULL,
    codigo_usuario  INTEGER NOT NULL,
    tipo_actividad  VARCHAR(50) NOT NULL,
    fecha_actividad DATE NOT NULL,
    PRIMARY KEY(codigo_regi_act)
);

CREATE TABLE tbl_tarjetas (
    codigo_tarjeta    INTEGER AUTO_INCREMENT NOT NULL,
    metodo_pago       INTEGER NOT NULL,
    numero_tarjeta    VARCHAR(20) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    codigo_seguridad  INTEGER NOT NULL,
    codigo_postal     VARCHAR(10) NOT NULL,
    PRIMARY KEY(codigo_tarjeta)
);

CREATE TABLE tbl_tipos_archivo (
    codigo_tipo_archivo INTEGER AUTO_INCREMENT NOT NULL,
    tipo_archivo        VARCHAR(50) NOT NULL,
    peso                INTEGER NOT NULL,
    PRIMARY KEY(codigo_tipo_archivo)
);

CREATE TABLE tbl_tipos_notificaciones(
    codigo_tipos_notif INTEGER AUTO_INCREMENT NOT NULL,
    tipo_notificacion  VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_tipos_notif)
);

CREATE TABLE tbl_usuarios (
    codigo_usuario   INTEGER AUTO_INCREMENT NOT NULL,
    preferencia      INTEGER NOT NULL,
    tarjeta          INTEGER NOT NULL,
    datos_priv       INTEGER NOT NULL,
    plan             INTEGER NOT NULL,
    direccion        INTEGER NOT NULL,
    fotoperfil       BLOB,
    nombre           VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero           VARCHAR(10),
    correo           VARCHAR(90) NOT NULL,
    clave            VARCHAR(50) NOT NULL,
    correo_adicional VARCHAR(90),
    telefono         VARCHAR(100),
    formacion        VARCHAR(50),
    trabajo          VARCHAR(50),
    PRIMARY KEY(codigo_usuario)
);

CREATE TABLE tbl_versiones_archivo (
    codigo_version      INTEGER AUTO_INCREMENT NOT NULL,
    codigo_archivo      INTEGER NOT NULL,
    usuario             INTEGER NOT NULL,
    fecha_actualizacion DATE NOT NULL,
    PRIMARY KEY(codigo_version)
);

CREATE TABLE tbl_tipo_preferencia (
    codigo_tipo_preferencia INTEGER AUTO_INCREMENT NOT NULL,
    tipo_preferencia        VARCHAR(200) NOT NULL,
    PRIMARY KEY(codigo_tipo_preferencia)
);

CREATE TABLE tbl_tipos_direccion (
    codigo_tipo_direccion INTEGER AUTO_INCREMENT NOT NULL,
    tipo_direccion        VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo_tipo_direccion)
);

ALTER TABLE tbl_archivos
ADD CONSTRAINT tbl_archivos_tbl_carpetas_fk 
FOREIGN KEY ( carpeta ) REFERENCES tbl_carpetas ( codigo_carpeta );

ALTER TABLE tbl_archivos
ADD CONSTRAINT tbl_archivos_tbl_estados_fk 
FOREIGN KEY ( estado ) REFERENCES tbl_estados ( codigo_estado );

ALTER TABLE tbl_archivos
ADD CONSTRAINT tbl_archivos_tbl_tipos_archivo_fk 
FOREIGN KEY ( tipo_archivo ) REFERENCES tbl_tipos_archivo ( codigo_tipo_archivo );

ALTER TABLE tbl_archivos
ADD CONSTRAINT tbl_archivos_tbl_usuarios_fk 
FOREIGN KEY ( usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_carpetas
ADD CONSTRAINT tbl_carpetas_tbl_carpetas_fk 
FOREIGN KEY ( carpeta_padre ) REFERENCES tbl_carpetas ( codigo_carpeta );

ALTER TABLE tbl_carpetas
ADD CONSTRAINT tbl_carpetas_tbl_estados_fk
FOREIGN KEY ( estado ) REFERENCES tbl_estados ( codigo_estado );

ALTER TABLE tbl_comentarios
ADD CONSTRAINT tbl_comentarios_tbl_archivos_fk 
FOREIGN KEY ( codigo_archivo ) REFERENCES tbl_archivos ( codigo_archivo );

ALTER TABLE tbl_compartidos
ADD CONSTRAINT tbl_compartidos_tbl_archivos_fk 
FOREIGN KEY ( usuario_propietario ) REFERENCES tbl_archivos ( codigo_archivo );

ALTER TABLE tbl_compartidos
ADD CONSTRAINT tbl_compartidos_tbl_usuarios_fk
FOREIGN KEY ( usuario_compartido ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_compartidos_x_permisos
ADD CONSTRAINT tbl_compartidos_x_permisos_tbl_compartidos_fk 
FOREIGN KEY ( archivo ) REFERENCES tbl_compartidos ( archivo );

ALTER TABLE tbl_compartidos_x_permisos
ADD CONSTRAINT tbl_compartidos_x_permisos_tbl_permisos_fk 
FOREIGN KEY ( permiso ) REFERENCES tbl_permisos ( codigo_permiso );

ALTER TABLE tbl_computadoras
ADD CONSTRAINT tbl_computadoras_tbl_usuarios_fk 
FOREIGN KEY ( usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_datos_x_historial
ADD CONSTRAINT tbl_datos_x_historial_tbl_datos_privacidad_fk 
FOREIGN KEY ( datos_priv ) REFERENCES tbl_datos_privacidad ( codigo_datos_priv );

ALTER TABLE tbl_datos_x_historial
ADD CONSTRAINT tbl_datos_x_historial_tbl_historiales_fk 
FOREIGN KEY ( historial ) REFERENCES tbl_historiales ( codigo_historial );

ALTER TABLE tbl_direcciones
ADD CONSTRAINT tbl_direcciones_tipos_direccion_fk 
FOREIGN KEY ( tipo_direccion ) REFERENCES tbl_tipos_direccion ( codigo_tipo_direccion );

ALTER TABLE tbl_etiquetas
ADD CONSTRAINT tbl_etiquetas_tbl_usuarios_fk 
FOREIGN KEY ( codigo_usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_grupos_x_usuarios
ADD CONSTRAINT tbl_grupos_x_usuarios_tbl_archivos_fk 
FOREIGN KEY ( usuario_dueño_arc ) REFERENCES tbl_archivos ( codigo_archivo );

ALTER TABLE tbl_grupos_x_usuarios
ADD CONSTRAINT tbl_grupos_x_usuarios_tbl_grupos_fk 
FOREIGN KEY ( codigo_grupo ) REFERENCES tbl_grupos ( codigo_grupo );

ALTER TABLE tbl_grupos_x_usuarios
ADD CONSTRAINT tbl_grupos_x_usuarios_tbl_usuarios_fk 
FOREIGN KEY ( codigo_usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_grupos_x_usuarios
ADD CONSTRAINT tbl_grupos_x_usuarios_tbl_usuarios_fk2
FOREIGN KEY ( codigo_administrador ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_historial_cambios
ADD CONSTRAINT tbl_historial_cambios_tbl_archivos_fk 
FOREIGN KEY ( codigo_archivo ) REFERENCES tbl_archivos ( codigo_archivo );

ALTER TABLE tbl_notificaciones
ADD CONSTRAINT tbl_notificaciones_tbl_tipos_notificacion_fk 
FOREIGN KEY ( tipos_notif ) REFERENCES tbl_tipos_notificaciones ( codigo_tipos_notif );

ALTER TABLE tbl_notificaciones_x_usr
ADD CONSTRAINT tbl_notificaciones_x_usr_tbl_notificaciones_fk 
FOREIGN KEY ( codigo_notificacion ) REFERENCES tbl_notificaciones ( codigo_notificacion );

ALTER TABLE tbl_notificaciones_x_usr
ADD CONSTRAINT tbl_notificaciones_x_usr_tbl_usuarios_fk 
FOREIGN KEY ( codigo_usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_planes
ADD CONSTRAINT tbl_planes_tbl_ofertas_fk 
FOREIGN KEY ( oferta ) REFERENCES tbl_ofertas ( codigo_oferta );

ALTER TABLE tbl_preferencias
ADD CONSTRAINT tbl_preferencias_tipo_preferencia_fk 
FOREIGN KEY ( tipo_preferencia ) REFERENCES tbl_tipo_preferencia ( codigo_tipo_preferencia );

ALTER TABLE tbl_registros_actividades
ADD CONSTRAINT tbl_registros_actividades_tbl_usuarios_fk 
FOREIGN KEY ( codigo_usuario ) REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_tarjetas
ADD CONSTRAINT tbl_tarjetas_tbl_metodos_pago_fk 
FOREIGN KEY ( metodo_pago ) REFERENCES tbl_metodos_pago ( codigo_metodo_pago );

ALTER TABLE tbl_usuarios
ADD CONSTRAINT tbl_usuarios_tbl_datos_privacidad_fk 
FOREIGN KEY ( datos_priv ) REFERENCES tbl_datos_privacidad ( codigo_datos_priv );

ALTER TABLE tbl_usuarios
ADD CONSTRAINT tbl_usuarios_tbl_direcciones_fk
FOREIGN KEY ( direccion ) REFERENCES tbl_direcciones ( codigo_direccion );

ALTER TABLE tbl_usuarios
ADD CONSTRAINT tbl_usuarios_tbl_planes_fk 
FOREIGN KEY ( plan ) REFERENCES tbl_planes ( codigo_plan );

ALTER TABLE tbl_usuarios
ADD CONSTRAINT tbl_usuarios_tbl_preferencias_fk 
FOREIGN KEY ( preferencia ) REFERENCES tbl_preferencias ( codigo_preferencia );

ALTER TABLE tbl_usuarios
ADD CONSTRAINT tbl_usuarios_tbl_tarjetas_fk 
FOREIGN KEY ( tarjeta ) REFERENCES tbl_tarjetas ( codigo_tarjeta );

ALTER TABLE tbl_versiones_archivo
ADD CONSTRAINT tbl_versiones_archivo_tbl_archivos_fk 
FOREIGN KEY ( codigo_archivo) REFERENCES tbl_archivos ( codigo_archivo );
