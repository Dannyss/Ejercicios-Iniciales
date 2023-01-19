DROP DATABASE IF EXISTS EJERCICIO3;
CREATE DATABASE EJERCICIO3;
USE EJERCICIO3;
CREATE TABLE REGION(
    Nombre_region varchar(25) primary key
);
CREATE TABLE PROVINCIA(
    CodigoProvincia int auto_increment primary key,
    Nombre_provincia varchar(25),
    Nombre_region varchar(25),
    CONSTRAINT FOREIGN KEY PROV_REG (Nombre_region)REFERENCES REGION(Nombre_region) ON DELETE CASCADE ON UPDATE CASCADE

);
CREATE TABLE LOCALIDAD(
    Codigo_localidad int auto_increment primary key,
    Nombre varchar(25),
    CodigoProvincia int,
    CONSTRAINT FOREIGN KEY LOC_PROV (CodigoProvincia)REFERENCES PROVINCIA(CodigoProvincia) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE EMPLEADO(
    Id_E int auto_increment primary key,
    DNI_E char(9),
    Nombre varchar(25),
    Telefono int(9),
    Salario decimal(7,2),
    Codigo_localidad int,
    CONSTRAINT FOREIGN KEY EMPL_LOC (Codigo_localidad) REFERENCES LOCALIDAD (Codigo_localidad) ON DELETE CASCADE ON UPDATE CASCADE
);