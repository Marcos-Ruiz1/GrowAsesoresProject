drop database growasesores;
CREATE DATABASE growasesores;
use growasesores; 

CREATE TABLE usuario (
  id_usuario bigint(20) auto_increment primary key,
  nombre varchar(20) NOT NULL,
  apellidoPaterno varchar(20) NOT NULL,
  apellidoMaterno varchar(20) NOT NULL,
  telefono varchar(20) NOT NULL,
  correo varchar(50) NOT NULL,
  password varchar(30) NOT NULL,
  isAdmin tinyint(1) NOT NULL
);

CREATE TABLE solicitud_cita (
  id bigint(20) not null auto_increment primary key,
  horario varchar (50) DEFAULT NULL,
  estado varchar(50) DEFAULT NULL,
  motivo varchar(200) DEFAULT NULL,
  id_usuario bigint(20) NOT NULL,
  foreign key (id_usuario) references usuario(id_usuario)
) ;

CREATE TABLE cita (
  id_cita bigint(20) NOT NULL auto_increment primary key,
 horario varchar (50) DEFAULT NULL,
  descripcion varchar(255) DEFAULT NULL,
  estado varchar(50) DEFAULT NULL,
  id_solicitud bigint(20),
  foreign key (id_solicitud) references solicitud_cita(id)
);

INSERT INTO USUARIO (NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, TELEFONO, CORREO, PASSWORD, ISADMIN) VALUES('SAD', 'DASD', 'ASDA', '6442327211', 'lcon@gmail.com', 'asd', 1);