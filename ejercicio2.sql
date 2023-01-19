DROP DATABASE EJERCICIO2;
CREATE DATABASE EJERCICIO2; 
USE EJERCICIO2;

CREATE TABLE ALUMNO(
    Num_matricula INT(10) primary key,
    Nombre varchar(50),
    FechaNacimiento Date,
    Telefono INT(9)
);

CREATE TABLE PROFESOR(
    Id_P int auto_increment PRIMARY KEY,
    NIF_P VARCHAR(9) ,
    Nombre varchar(50),
    Especialidad varchar(50),
    Telefono INT(9)

);

CREATE TABLE ASIGNATURA(
    Codigo_asignatura int auto_increment,
    Nombre varchar(50),
    Id_P_imp int,
	PRIMARY KEY (Codigo_asignatura,Id_P_imp),
    CONSTRAINT FOREIGN KEY FK_ASIG_PROF (Id_P_imp) REFERENCES PROFESOR(Id_P) ON DELETE CASCADE ON UPDATE CASCADE
    
    );

CREATE TABLE MATRICULA(
    Num_matricula_alum int(10),
    Codigo_asignatura int,
    Curso_escolar varchar(25),
    CONSTRAINT FOREIGN KEY FK_MATR_ALUM (Num_matricula_alum) REFERENCES ALUMNO(Num_matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY FK_MATRI_ASIG (Codigo_asignatura) REFERENCES ASIGNATURA(Codigo_asignatura) ON DELETE CASCADE ON UPDATE CASCADE

)
