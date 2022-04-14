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

SELECT nombre FROM usuarios; /*Realizar consultas*/

SELECT nombre FROM usuarios AS nombrezaso; /*Se muestra la tabla con otro nombre*/

SELECT COUNT(*) FROM direccion; /*Cuenta la cantidad de registros*/

SELECT * FROM usuarios WHERE nombre IS NULL AND apellido = 'Cacho'; --Muestra solo los que no tienen nombre asignado y que tienen el apellido cacho

SELECT * FROM usuarios ORDER BY fecha_de_nacimiento DESC LIMIT 5; --Asigna un límite de 5 a las consultas

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

INSERT INTO usuarios (nombre, apellido, direccion, ciudad, fecha_de_nacimiento) VALUES ('Guillermo', 'Cacho', 'Paraíso del sol', 'La Paz', '24-09-1995'); /*Inserta datos a la tabla*/

UPDATE usuarios SET nombre = 'Memo', ciudad = 'Cuernavaca' WHERE id = 1; /*Edita el campo*/
 
DELETE FROM usuarios WHERE id = 1; /*Borra el primer registro*/

DELETE FROM usuarios; /*Borra toda la tabla*/

SELECT nombre FROM usuarios /*Realizar consultas*/

/*-------SQLMD comandos de SHELL----------*/

/* \c test_db;   ===>   Selecciona la base de datos */
/* \dt    ===>   Muestra las tablas de la base de datos */

CREATE TABLE usuarios(id INT, nombre varchar(255), apellido varchar(255), direccion varchar(255), ciudad varchar(255));

/*----------------------WHERE---------------------------*/

SELECT * FROM usuarios WHERE fecha_de_nacimiento > '24-09-95';

SELECT * FROM usuarios WHERE MONTH(fecha_de_nacimiento) = '04'; --Muerstra solo los usuarios que nacieron en el mes 4 - abril

SELECT * FROM usuarios WHERE nombre IS NULL; --Muestra solo los que no tienen nombre asignado

SELECT * FROM usuarios WHERE nombre IS NULL AND apellido = 'Cacho'; --Muestra solo los que no tienen nombre asignado y que tienen el apellido cacho

/*----------------------GROUP BY---------------------------*/

--GROUP BY tiene que ver con agrupación. Indica 
--a la base de datos qué criterios debe tener en 
--cuenta para agrupar.

/*----------------------ORDER BY---------------------------*/

SELECT * FROM usuarios ORDER BY fecha_de_nacimiento DESC;

-- La sentencia ORDER BY tiene que ver con el ordenamiento de los datos dependiendo de los criterios que quieras usar.

-- ASC sirve para ordenar de forma ascendente.
-- DESC sirve para ordenar de forma descendente.
-- LIMIT se usa para limitar la cantidad de resultados que arroja el query.
-- HAVING tiene una similitud muy grande con WHERE, sin embargo el uso de ellos depende del orden. Cuando se quiere seleccionar tuplas agrupadas únicamente se puede hacer con HAVING.

SELECT * FROM usuarios ORDER BY fecha_de_nacimiento DESC LIMIT 5; --Asigna un límite de 5 a las consultas

