-- genere el nombre que usted quiera para base de datos

CREATE DATABASE actividad;

-- Tabla de Doctores
CREATE TABLE doctor (
    id_doctor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_doctor VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    telefono VARCHAR(20)
);

-- Tabla de Pacientes
CREATE TABLE paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_paciente VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(20),
    direccion VARCHAR(200)
);

-- Tabla de Citas
CREATE TABLE cita (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    fecha_cita DATETIME NOT NULL,
    motivo VARCHAR(255),
    id_doctor INT,
    id_paciente INT
);

-- Tabla de Recetas
CREATE TABLE receta (
    id_receta INT AUTO_INCREMENT PRIMARY KEY,
    id_cita INT,
    medicamentos TEXT,
    indicaciones TEXT,
    fecha_emision DATE
);


-- Doctores
INSERT INTO doctor (nombre_doctor, especialidad, telefono) VALUES
('Dra. Ana Torres', 'Pediatría', '987654321'),
('Dr. Carlos Méndez', 'Cardiología', '912345678'),
('Dra. Laura Rivera', 'Dermatología', '934567890');

-- Pacientes
INSERT INTO paciente (nombre_paciente, fecha_nacimiento, telefono, direccion) VALUES
('María López', '1990-05-12', '987123456', 'Av. Siempre Viva 123'),
('José Pérez', '1985-09-30', '934567891', 'Calle Falsa 456'),
('Camila Soto', '2000-01-25', '912345679', 'Pasaje Azul 789');

-- Citas
INSERT INTO cita (fecha_cita, motivo, id_doctor, id_paciente) VALUES
('2025-07-15 10:00:00', 'Chequeo general', 1, 1),
('2025-07-16 14:30:00', 'Dolor de pecho', 2, 2),
('2025-07-17 09:00:00', 'Irritación en la piel', 3, 3);

-- Recetas
INSERT INTO receta (id_cita, medicamentos, indicaciones, fecha_emision) VALUES
(1, 'Paracetamol 500mg', 'Tomar 1 cada 8 horas por 3 días', '2025-07-15'),
(2, 'Aspirina 100mg', '1 diaria por una semana', '2025-07-16'),
(3, 'Crema antihistamínica', 'Aplicar 2 veces al día', '2025-07-17');


-- PREGUNTAS

-- 1.   Agregue la columna email a la tabla doctor

ALTER TABLE actividad.doctor ADD email VARCHAR(50);

-- 2.   Agregue la columna id_doctor como clave foranea para la tabla cita

ALTER TABLE actividad.cita ADD CONSTRAINT id_doctor FOREIGN KEY(id_doctor) REFERENCES doctor(id_doctor); 

-- 3.   Agregue la columna id_paciente como clave foranea para la tabla cita

ALTER TABLE actividad.cita ADD CONSTRAINT id_paciente FOREIGN KEY(id_paciente) REFERENCES paciente(id_paciente); 

-- 4.   Agregue la columna id_cita como clave foranea para la tabla receta

ALTER TABLE actividad.receta ADD CONSTRAINT id_cita FOREIGN KEY(id_cita) REFERENCES cita(id_cita); 

-- 5.   Cambie el nombre de la columna fecha_emision por fech_emi

ALTER TABLE actividad.receta CHANGE fecha_emision fecha_emi DATE;

-- 6.   Actualice el medicamento de la receta 2 por 'Ibuprofeno 600mg'

UPDATE actividad.receta SET medicamentos = "Ibuprofeno 600mg" WHERE id_receta = 2;

-- 7.   Actualice el email de todos los doctores por 'correoPendiente'

UPDATE actividad.doctor SET email = "correoPendiente";

-- 8.   Actualice la fecha de la receta 1 por la fecha de hoy

UPDATE actividad.receta SET fecha_emi = '2025-07-14' WHERE id_receta = 1;

-- 9.   Elimine la cita con fecha de 17/07

DELETE FROM actividad.cita WHERE id_cita = 3;

-- 10.  Elimine a la doctora Dra. Laura Rivera

DELETE FROM actividad.doctor WHERE id_doctor = 3;
