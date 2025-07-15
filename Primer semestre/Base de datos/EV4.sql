CREATE DATABASE cine;

CREATE TABLE pelicula (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(100),
    director VARCHAR(100),
    duracion INT, -- en minutos
    clasificacion VARCHAR(10)
);

INSERT INTO pelicula VALUES 
(1, 'Inception', 'Christopher Nolan', 148, 'PG-13'),
(2, 'Toy Story', 'John Lasseter', 81, 'G'),
(3, 'El Padrino', 'Francis Ford Coppola', 175, 'R');

CREATE TABLE sala (
    id_sala INT PRIMARY KEY,
    nombre VARCHAR(50),
    capacidad INT
);

INSERT INTO sala VALUES
(1, 'Sala 1', 100),
(2, 'Sala 2', 80),
(3, 'Sala 3', 120);

CREATE TABLE funcion (
    id_funcion INT PRIMARY KEY,
    id_pelicula INT,
    id_sala INT,
    fecha DATE,
    hora TIME
); 

INSERT INTO funcion VALUES
(1, 1, 1, '2025-07-11', '18:00:00'),
(2, 2, 2, '2025-07-10', '16:30:00'),
(3, 3, 3, '2025-07-09', '20:00:00');


CREATE TABLE entrada (
    id_entrada INT PRIMARY KEY,
    id_funcion INT,
    asiento VARCHAR(10),
    precio DECIMAL(10,2)
);

INSERT INTO entrada VALUES
(1, 1, 'A1', 5000),
(2, 1, 'A2', 5000),
(3, 2, 'B1', 4500),
(4, 3, 'C1', 6000);


-- PREGUNTAS

-- 1.   Agregue la columna region a la tabla entrada

ALTER TABLE cine.entrada ADD region VARCHAR(30);

-- 2.   Agregue la columna id_pelicula como clave foranea para la tabla funcion

ALTER TABLE cine.funcion ADD CONSTRAINT id_pelicula FOREIGN KEY(id_pelicula) REFERENCES pelicula(id_pelicula); 

-- 3.   Agregue la columna id_sala como clave foranea para la tabla funcion

ALTER TABLE cine.funcion ADD CONSTRAINT id_sala FOREIGN KEY(id_sala) REFERENCES sala(id_sala); 

-- 4.   Agregue la columna id_funcion como clave foranea para la tabla entrada

ALTER TABLE cine.entrada ADD CONSTRAINT id_funcion FOREIGN KEY(id_funcion) REFERENCES funcion(id_funcion); 

-- 5.   Cambie el nombre de la columna capacidad por cap

ALTER TABLE cine.sala CHANGE capacidad cap INT;

-- 6.   Actualice el precio de la entradas que tengan un precio de 5000 a 2500

UPDATE cine.entrada SET precio = 2500 WHERE precio = 5000;

-- 7.   Actualice la region de todas las engtradas por Araucanía

UPDATE cine.entrada SET region = "Araucanía";

-- 8.   Actualice la fecha de la funcion 3 por la fecha de hoy

UPDATE cine.funcion SET fecha = "2025-07-15" WHERE id_funcion = 3;

-- 9.   Elimine la entrada con el asiento B1

DELETE FROM cine.entrada WHERE id_entrada = 3;

-- 10.  Elimine la funcion con fecha del 09/07

DELETE FROM cine.funcion WHERE id_funcion = 3;