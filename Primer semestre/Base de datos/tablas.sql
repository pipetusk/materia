CREATE TABLE `inacap`.`alumno` (
    `rut` VARCHAR(15) NOT NULL , 
    `nombre` VARCHAR(50) NULL , 
    `apellido` VARCHAR(50) NULL , 
    `edad` INT NULL , 
    PRIMARY KEY (`rut`));

SELECT * FROM `alumno`

INSERT INTO `alumno` 
    (`rut`, `nombre`, `apellido`, `edad`) 
VALUES ('19198083-2', 'Carla', 'Bravo', '29');
