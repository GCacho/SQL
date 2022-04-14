/*-------Creación y manipulación de base de datos--------*/

/*CREATE SCHEMA 'basededatos' DEFAULT CHARACTER SET utf8; /*Crear una base de datos*/
CREATE DATABASE test_db;
USE DATABASE test_db;

CREATE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT, 
    nombre varchar(255) NULL,
    apellido varchar(255) NULL,
    direccion varchar(255) NULL,
    ciudad varchar(255) NULL,
    PRIMARY KEY (id));

CREATE TABLE usuarios(id INT, nombre varchar(255), apellido varchar(255), direccion varchar(255), ciudad varchar(255));

/*Consultas*/

SELECT * FROM usuarios; /*Selecciona todos los campos de la tabla usuarios*/

SELECT nombre FROM usuarios /*Realizar consultas*/

/*Vistas*/

CREATE ver_usuarios AS
    SELECT * FROM usuarios;

/*Editar tablas*/

ALTER TABLE usuarios
ADD COLUMN fecha_de_nacimiento DATETIME NULL AFTER city; /*Agrega una columna nueva*/

/*Borrar bases de datos*/

DROP TABLE usuarios; /*Borrar tabla*/

DROP DATABASE test_db /*Borrar base de datos*/

/*------------DML----------*/

INSERT INTO usuarios (nombre, apellido, direccion, ciudad) VALUES ('Guillermo', 'Cacho', 'Paraíso del sol', 'La Paz'); /*Inserta datos a la tabla*/

UPDATE usuarios SET nombre = 'Memo', ciudad = 'Cuernavaca' WHERE id = 1; /*Edita el campo*/

DELETE FROM usuarios WHERE id = 1; /*Borra el primer registro*/

DELETE FROM usuarios; /*Borra toda la tabla*/

SELECT nombre FROM usuarios /*Realizar consultas*/

/*-------SQLMD comandos de SHELL----------*/

/* \c test_db;   ===>   Selecciona la base de datos */
/* \dt    ===>   Muestra las tablas de la base de datos */

CREATE TABLE usuarios(id INT, nombre varchar(255), apellido varchar(255), direccion varchar(255), ciudad varchar(255));
