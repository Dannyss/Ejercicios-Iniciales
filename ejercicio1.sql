DROP DATABASE EJERCICIO1;
CREATE DATABASE EJERCICIO1; 
USE EJERCICIO1;
CREATE TABLE EMPLEADO(
    Id_E int auto_increment primary key,
    DNI_E char(9) not null,
    Nombre varchar(50),
    Teléfono int(9),
    Salario decimal(7,2),
    Codigo_D int,
    CONSTRAINT FOREIGN KEY FK_EMPL_DEP (Codigo_D) REFERENCES DEPARTAMENTO (Codigo_D) ON UPDATE CASCADE ON DELETE CASCADE 
);

CREATE TABLE DEPARTAMENTO (
    Codigo_D int auto_increment primary key,
    Nombre varchar(50),
    Localizacion varchar(50)
)
