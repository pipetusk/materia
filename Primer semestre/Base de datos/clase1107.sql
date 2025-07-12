CREATE DATABASE actividad;

-- Tabla de Géneros
CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(100) NOT NULL
);

-- Tabla de Editoriales
CREATE TABLE editorial (
    id_editorial INT AUTO_INCREMENT PRIMARY KEY,
    nombre_editorial VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
);

-- Tabla de Autores
CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_autor VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

-- Tabla de Libros
CREATE TABLE libro (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    anio_publicacion INT,
    id_autor INT,
    id_editorial INT,
    id_genero INT
);
-- Insertar géneros
INSERT INTO genero (nombre_genero) VALUES 
('Ficción'),
('Ciencia Ficción'),
('Fantasía'),
('Biografía'),
('Historia');

-- Insertar editoriales
INSERT INTO editorial (nombre_editorial, pais) VALUES 
('Penguin Random House', 'Estados Unidos'),
('Planeta', 'España'),
('Anagrama', 'España'),
('Alfaguara', 'España'),
('HarperCollins', 'Reino Unido');

-- Insertar autores
INSERT INTO autor (nombre_autor, nacionalidad) VALUES 
('Gabriel García Márquez', 'Colombiana'),
('Isabel Allende', 'Chilena'),
('J.K. Rowling', 'Británica'),
('Yuval Noah Harari', 'Israelí'),
('George Orwell', 'Británica');

-- Insertar libros
INSERT INTO libro (titulo, anio_publicacion, id_autor, id_editorial, id_genero) VALUES 
('Cien años de soledad', 1967, 1, 1, 1),
('La casa de los espíritus', 1982, 2, 2, 1),
('Harry Potter y la piedra filosofal', 1997, 3, 5, 3),
('Sapiens: De animales a dioses', 2011, 4, 1, 4),
('1984', 1949, 5, 5, 2);


-- PREGUNTAS

-- 1.   Agregue la columna descripcion a la tabla genero

ALTER TABLE actividad.genero ADD descripcion VARCHAR(50);

-- 2.   Agregue la columna id_autor como clave foranea para la tabla libro

ALTER TABLE actividad.libro ADD CONSTRAINT id_autor FOREIGN KEY(id_autor) REFERENCES autor(id_autor); 

-- 3.   Agregue la columna id_editorial como clave foranea para la tabla libro

ALTER TABLE actividad.libro ADD CONSTRAINT id_editorial FOREIGN KEY(id_editorial) REFERENCES editorial(id_editorial); 

-- 4.   Agregue la columna id_genero como clave foranea para la tabla libro

ALTER TABLE actividad.libro ADD CONSTRAINT id_genero FOREIGN KEY(id_genero) REFERENCES genero(id_genero); 

-- 5.   Cambie el nombre de la columna anio_publicacion por anio_publi

ALTER TABLE actividad.libro CHANGE libro.anio_publicacion anio_publi INT;

-- 6.   Actualice la nacionalidad de Isabel Allende por CHILENA

UPDATE actividad.autor SET nacionalidad = "CHILENA" WHERE id_autor = 2;

-- 7.   Actualice la descripcion de todos los generos por pendiente

UPDATE actividad.genero SET descripcion = "Pendiente";

-- 8.   Actualice la en año de publicaion del libro Cien años de soledad por 1990

UPDATE actividad.libro SET anio_publi = '1990' WHERE id_libro = 1;

-- 9.   Elimine el libro 1984

DELETE FROM actividad.libro WHERE id_libro = 5;

-- 10.  Elimine el libro con año de publicacion 1997

DELETE FROM actividad.libro WHERE id_libro = 3;
