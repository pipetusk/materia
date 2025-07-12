--crear base de datos
CREATE DATABASE libreria;

USE libreria;

--crear tabla autor
CREATE TABLE libreria.autor(
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    nacionalidad VARCHAR(50)
);

--crear tabla libro
CREATE TABLE libreria.libro(
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
    id_autor INT,
    precio INT,
    stock INT,
    FOREIGN KEY(id_autor)REFERENCES autor(id_autor)
);

--agregar 3 autores
INSERT INTO libreria.autor(nombre, nacionalidad) VALUES('Gabriel García Márquez','Colombiana');
INSERT INTO libreria.autor(nombre, nacionalidad) VALUES('Isabel Allende','Chilena');
INSERT INTO libreria.autor(nombre, nacionalidad) VALUES('J.K Rowling','Británica');

--agregar 3 libros

INSERT INTO libreria.libro(titulo, id_autor, precio, stock) VALUES ('Cien años de Soledad', 1, 15000, 10);
INSERT INTO libreria.libro(titulo, id_autor, precio, stock) VALUES ('La casa de los espíritus', 2, 12000, 5);
INSERT INTO libreria.libro(titulo, id_autor, precio, stock) VALUES ('Harry Potter y la Piedra Filosofal', 3, 18000, 10);

--consultar por todos los autores (son lo mismo)
SELECT * FROM libreria.autor;
SELECT nombre, nacionalidad FROM libreria.autor;

--consultar por todos los libros
SELECT * FROM libreria.libros;

--consultar solo el nombre de los autores
SELECT nombre FROM libreria.autor;

--consultar solo el nombre de los libros
SELECT titulo FROM libreria.libro;

--buscar los libros con stock superior a 5
SELECT * FROM libreria.libro WHERE stock>5;

--buscar los libros cuando su precio sea menor a 15000
SELECT * FROM libreria.libro WHERE precio<15000;

--buscar los libros con stock superior o igual a 5
SELECT * FROM libreria.libro WHERE stock >= 5;

--buscar los libros cuando su precio sea menor o igual 15000
SELECT * FROM libreria.libro WHERE precio <= 15000;

--buscar el nombre de autores con nacionalidad Chilena
SELECT * FROM libreria.autor WHERE nacionalidad = 'Chilena';