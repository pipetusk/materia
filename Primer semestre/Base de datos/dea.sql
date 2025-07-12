CREATE DATABASE inventario;

CREATE TABLE inventario.proveedor(
    rut_proveedor VARCHAR(15) PRIMARY KEY,
    razon_social VARCHAR(50),
    email VARCHAR(50),
    direccion VARCHAR(50)
);

CREATE TABLE inventario.producto(
    cod_producto VARCHAR(6) PRIMARY KEY,
    nombre_producto VARCHAR(100)
);

CREATE TABLE inventario.usuario(
    run_usuario VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100),
    email VARCHAR(100),
    nro_telefono INT
);

CREATE TABLE inventario.ordenes(
    cod_orden VARCHAR(6) PRIMARY KEY,
    fecha_emision DATE, 
    estado VARCHAR(10),
    rut_proveedor VARCHAR(15),
    cod_producto VARCHAR(6),
    cantidad INT,
    FOREIGN KEY(rut_proveedor)REFERENCES inventario.proveedor(rut_proveedor),
    FOREIGN KEY(cod_producto)REFERENCES inventario.producto(cod_producto)
);

CREATE TABLE inventario.tipo_movimiento(
    cod_tipo_movimiento VARCHAR(6) PRIMARY KEY,
    nombre_tipo_movimiento VARCHAR(15)

);

CREATE TABLE inventario.bodega(
    cod_bodega VARCHAR(6) PRIMARY KEY,
    ubicacion VARCHAR(100)

);

CREATE TABLE inventario.movimientos(
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    cod_tipo_movimiento VARCHAR(6),
    fecha DATE,
    run_usuario VARCHAR(15),
    cantidad INT, 
    cod_bodega VARCHAR(6),
    FOREIGN KEY(run_usuario)REFERENCES inventario.usuario(run_usuario),
    FOREIGN KEY(cod_bodega)REFERENCES inventario.bodega(cod_bodega),
    FOREIGN KEY(cod_tipo_movimiento)REFERENCES inventario.tipo_movimiento(cod_tipo_movimiento)

);

CREATE TABLE inventario.seccion(
    id_seccion INT AUTO_INCREMENT PRIMARY KEY,
    nro_seccion INT 
);

CREATE TABLE inventario.bodega_secion(
    id_bodega_seccion INT AUTO_INCREMENT PRIMARY KEY,
    cod_bodega VARCHAR(6),
    id_seccion INT ,
    FOREIGN KEY(cod_bodega)REFERENCES inventario.bodega(cod_bodega),
    FOREIGN KEY(id_seccion)REFERENCES inventario.seccion(id_seccion)
);

CREATE TABLE inventario.producto_bodega_seccion(
    id_producto_bodega_seccion INT AUTO_INCREMENT PRIMARY KEY,
    id_bodega_seccion INT, 
    cod_producto VARCHAR(6), 
    FOREIGN KEY(id_bodega_seccion)REFERENCES inventario.bodega_secion(id_bodega_seccion),
    FOREIGN KEY(cod_producto)REFERENCES inventario.producto(cod_producto)
);

-- insertar 3 proveedores
INSERT INTO inventario.proveedor(rut_proveedor, razon_social, email, direccion)
VALUES('1111-1', 'Easy', 'easy@email.cl','Temuco');
INSERT INTO inventario.proveedor(rut_proveedor, razon_social, email, direccion)
VALUES('1111-2', 'construmart', 'construmart@email.cl','Temuco');
INSERT INTO inventario.proveedor(rut_proveedor, razon_social, email, direccion)
VALUES('1111-3', 'Sodimac', 'sodimac@email.cl','Temuco');


INSERT INTO inventario.producto(cod_producto, nombre_producto)VALUES('COD01','Martillo');
INSERT INTO inventario.producto(cod_producto, nombre_producto)VALUES('COD02','Pintura Roja');
INSERT INTO inventario.producto(cod_producto, nombre_producto)VALUES('COD03','Clavos 1/4');
INSERT INTO inventario.producto(cod_producto, nombre_producto)VALUES('COD04','Taladro');
INSERT INTO inventario.producto(cod_producto, nombre_producto)VALUES('COD05','Lijadora');


SELECT * FROM inventario.producto ORDER BY nombre_producto ASC;
SELECT * FROM inventario.producto ORDER BY nombre_producto DESC;
SELECT * FROM inventario.producto ORDER BY cod_producto ASC;
SELECT * FROM inventario.producto ORDER BY cod_producto DESC;

SELECT COUNT(*) cantidad FROM inventario.producto ORDER BY cod_producto DESC;


INSERT INTO inventario.usuario(run_usuario, nombre_completo,email, nro_telefono)
VALUES('111-1','Carla Bravo', 'carla@email.cl',457812);
INSERT INTO inventario.usuario(run_usuario, nombre_completo,email, nro_telefono)
VALUES('111-2','Constanza Bravo', 'constanza@email.cl',968574);
INSERT INTO inventario.usuario(run_usuario, nombre_completo,email, nro_telefono)
VALUES('111-3','Carlos Bravo', 'carlos@email.cl',321456);

INSERT INTO inventario.ordenes(cod_orden, fecha_emision, estado, rut_proveedor, cod_producto, cantidad)
VALUES('ORD01', '2025-06-19','Entregado', '1111-1','COD01',20);

INSERT INTO inventario.ordenes(cod_orden, fecha_emision, estado, rut_proveedor, cod_producto, cantidad)
VALUES('ORD2', '2025-06-20','Entregado', '1111-1','COD02',15);

INSERT INTO inventario.ordenes(cod_orden, fecha_emision, estado, rut_proveedor, cod_producto, cantidad)
VALUES('ORD03', '2025-06-21','Entregado', '1111-2','COD03',5);

INSERT INTO inventario.ordenes(cod_orden, fecha_emision, estado, rut_proveedor, cod_producto, cantidad)
VALUES('ORD04', '2025-06-22','Entregado', '1111-2','COD04',100);

INSERT INTO inventario.ordenes(cod_orden, fecha_emision, estado, rut_proveedor, cod_producto, cantidad)
VALUES('ORD05', '2025-06-23','Entregado', '1111-3','COD01',50);

SELECT COUNT(*) FROM inventario.ordenes;
SELECT COUNT(*) cantidad FROM inventario.ordenes;
SELECT * FROM inventario.ordenes ORDER BY cantidad ASC;
SELECT * FROM inventario.ordenes ORDER BY cantidad DESC;
SELECT * FROM inventario.ordenes ORDER BY fecha_emision DESC;

-- MAX que orden tiene la cantidad más alta 
SELECT MAX(cantidad) FROM inventario.ordenes;
-- MIN
SELECT MIN(cantidad) FROM inventario.ordenes;
-- AVG calcular el promedio de cantidades 
SELECT ROUND(AVG(cantidad)) FROM inventario.ordenes;
SELECT ROUND(AVG(cantidad),2) promedio FROM inventario.ordenes; 


-- Crear secciones

INSERT INTO inventario.seccion(nro_seccion)VALUES(1);
INSERT INTO inventario.seccion(nro_seccion)VALUES(2);
INSERT INTO inventario.seccion(nro_seccion)VALUES(3);
INSERT INTO inventario.seccion(nro_seccion)VALUES(4);

-- agregar registros a la tabla bodega

INSERT INTO inventario.bodega(cod_bodega, ubicacion)
VALUES('B001','Temuco');
INSERT INTO inventario.bodega(cod_bodega, ubicacion)
VALUES('B002','Villarrica');
INSERT INTO inventario.bodega(cod_bodega, ubicacion)
VALUES('B003','Pucon');

-- agregar registros a la tabla bodega seccion

INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B001',1);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B001',2);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B001',3);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B001',4);

INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B002',1);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B002',2);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B002',3);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B002',4);

INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B003',1);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B003',2);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B003',3);
INSERT INTO inventario.bodega_secion(cod_bodega, id_seccion)VALUES('B003',4);

-- agregar registros a la tabla producto_bodega_seccion

INSERT INTO inventario.producto_bodega_seccion(id_bodega_seccion, cod_producto)
VALUES(1, 'COD01');
INSERT INTO inventario.producto_bodega_seccion(id_bodega_seccion, cod_producto)
VALUES(1, 'COD02');
INSERT INTO inventario.producto_bodega_seccion(id_bodega_seccion, cod_producto)
VALUES(1, 'COD03');

-- consultar por las secciones de la bodega de temuco

SELECT *
FROM bodega_secion
WHERE cod_bodega = 'B001';

-- consultar por los productos de la bodega Temuco

SELECT *
FROM producto_bodega_seccion
WHERE id_bodega_seccion in 1,2,3,4;

-- consultar por las ordenes asociadas al producto con codigo COD01

SELECT * FROM ordenes WHERE cod_producto = 'COD01';

-- agregar movimientos 1 de cada tipo

INSERT INTO inventario.movimientos(cod_tipo_movimiento, fecha, run_usuario, cantidad, cod_bodega)
VALUES('M001','2025-06-24','111-1',32,'B001');
INSERT INTO inventario.movimientos(cod_tipo_movimiento, fecha, run_usuario, cantidad, cod_bodega)
VALUES('M002','2025-06-20','111-1',32,'B001');
INSERT INTO inventario.movimientos(cod_tipo_movimiento, fecha, run_usuario, cantidad, cod_bodega)
VALUES('M003','2025-06-19','111-1',32,'B001');