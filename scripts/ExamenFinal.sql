CREATE DATABASE examenfinal;
USE examenfinal;
CREATE TABLE IF NOT EXISTS usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(60) NOT NULL,
  password VARCHAR(25)NOT NULL,
  PRIMARY KEY (id_usuario) )
ENGINE = InnoDB CHARACTER SET = latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Alumnos`
-- -----------------------------------------------------
CREATE TABLE alumnos
 (
  carnet_alumno VARCHAR(15),
  nombre_alumno VARCHAR(45),
  direccion_alumno VARCHAR(45),
  telefono_alumno VARCHAR(45),
  email_alumno VARCHAR(20),
  estatus_alumno VARCHAR(1),
  PRIMARY KEY (carnet_alumno)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE secciones
(
  codigo_seccion VARCHAR(5),
  nombre_seccion VARCHAR(45),
  estatus_seccion VARCHAR(1),
  PRIMARY KEY (codigo_seccion)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table`.`Bancos`
-- -----------------------------------------------------
CREATE TABLE bancos
(
  id_banco INT NOT NULL AUTO_INCREMENT,
  nombre_banco VARCHAR(45),
  estatus_legal VARCHAR(20),
  direccion_principal VARCHAR(100),
  PRIMARY KEY (id_banco)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;


-- -----------------------------------------------------
-- Table `siu`.`TiposDePagos`
-- -----------------------------------------------------
CREATE TABLE TiposDePagos
(
  id_tipo_pago INT NOT NULL AUTO_INCREMENT,
  nombre_tipo_pago VARCHAR(45),
  cantidad_tipo_pago VARCHAR(45),
  PRIMARY KEY (id_tipo_pago)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

-- -----------------------------------------------------
-- Table `siu`.`Tipo_Monedas`
-- -----------------------------------------------------
CREATE TABLE tiposdemoneda
(
  id_moneda INT NOT NULL AUTO_INCREMENT,
  nombre_moneda VARCHAR(45),
  valor_moneda VARCHAR(45),
  PRIMARY KEY (id_moneda)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `siu`.`Tesoreria`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS aplicacion(
  aplid int NOT NULL AUTO_INCREMENT,
    aplnombre VARCHAR(50),
    aplestatus VARCHAR(50),
    PRIMARY KEY (aplid)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- Creanción de la Bitacora de seguridad
CREATE TABLE IF NOT EXISTS bitacora (
  bitid int auto_increment PRIMARY KEY,
    bitfecha datetime NULL,
    bitaccion VARCHAR(10) NOT NULL,
    bitip VARCHAR(25) NOT NULL,
    bitnombrepc VARCHAR(50) NOT NULL,
    usuid INT NOT NULL,
    aplid INT NOT NULL,
    FOREIGN KEY (aplid) references aplicacion (aplid),
    FOREIGN KEY (usuid) references usuario (id_usuario)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS boletas (
    codigo_maestro VARCHAR(50),
    tipo_de_pago VARCHAR(50),
    semestre VARCHAR(50),
    año VARCHAR(4),
    mes VARCHAR(20),
    codigo_boleta VARCHAR(50)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
