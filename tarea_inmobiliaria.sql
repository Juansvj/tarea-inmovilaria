CREATE DATABASE inmosistem

USE inmosistem

CREATE TABLE propietario (
	cod_propietario INT,
	nombre VARCHAR (255),
	documento INT,
	telefono VARCHAR (15),
	correo VARCHAR (255)
);

DESCRIBE propietario

ALTER TABLE propietario
ADD PRIMARY KEY (cod_propietario)

INSERT INTO propietario (cod_propietario, nombre, documento, telefono, correo) VALUES
(1, 'Juan Perez', 123456789, 3001234567, 'juan@gmail.com'),
(2, 'Maria Gomez', 987654321, 3012345678, 'maria@gmail.com'),
(3, 'Carlos Lopez', 456123789, 3023456789, 'carlos@gmail.com'),
(4, 'Ana Martinez', 789456123, 3034567890, 'ana@gmail.com'),
(5, 'Luis Rodriguez', 321654987, 3045678901, 'luis@gmail.com'),
(6, 'Sofia Hernandez', 654987321, 3056789012, 'sofia@gmail.com'),
(7, 'Diego Torres', 159753486, 3067890123, 'diego@gmail.com'),
(8, 'Laura Ramirez', 258456147, 3078901234, 'laura@gmail.com'),
(9, 'Andres Castro', 369258147, 3089012345, 'andres@gmail.com'),
(10, 'Valentina Diaz', 147258369, 3090123456, 'valentina@gmail.com');

SELECT * FROM propietario;

CREATE TABLE propiedad (
	cod_propiedad INT,
	tipo VARCHAR (255),
	subtipo VARCHAR (255),
	direccion VARCHAR (255),
	coordenadas DECIMAL (10,6),
	superficie INT,
	habitaciones INT,
	baños INT,
	estado VARCHAR (255),
	precio DECIMAL (12,2),
	disponibilidad BOOLEAN,
	cod_propietario int
);

describe propiedad;

ALTER TABLE propiedad
ADD PRIMARY KEY (cod_propiedad);

ALTER TABLE propiedad
ADD FOREIGN KEY (cod_propietario) REFERENCES propietario (cod_propietario);

INSERT INTO propiedad 
(cod_propiedad, tipo, subtipo, direccion, coordenadas, superficie, habitaciones, baños, estado, precio, disponibilidad, cod_propietario) VALUES
(1, 'Casa', 'Familiar', 'Calle 10 #20-30', 6.251840, 120, 3, 2, 'disponible', 150000000.00, 1, 1),
(2, 'Apartamento', 'Penthouse', 'Carrera 15 #45-60', 6.252000, 90, 2, 2, 'vendido', 200000000.00, 0, 2),
(3, 'Casa', 'Campestre', 'Vereda El Lago', 6.253200, 200, 4, 3, 'disponible', 300000000.00, 1, 3),
(4, 'Apartamento', 'Estudio', 'Calle 8 #12-14', 6.250500, 45, 1, 1, 'arrendado', 90000000.00, 0, 4),
(5, 'Casa', 'Familiar', 'Calle 25 #30-10', 6.249800, 130, 3, 2, 'disponible', 160000000.00, 1, 5),
(6, 'Apartamento', 'Duplex', 'Carrera 50 #80-20', 6.260000, 110, 3, 2, 'vendido', 220000000.00, 0, 6),
(7, 'Casa', 'Campestre', 'Km 5 vía rural', 6.270000, 300, 5, 4, 'disponible', 400000000.00, 1, 7),
(8, 'Apartamento', 'Familiar', 'Calle 70 #10-50', 6.255500, 85, 2, 2, 'arrendado', 120000000.00, 0, 8),
(9, 'Casa', 'Familiar', 'Calle 90 #40-22', 6.258900, 140, 3, 2, 'disponible', 180000000.00, 1, 9),
(10, 'Apartamento', 'Estudio', 'Carrera 22 #33-11', 6.254300, 50, 1, 1, 'vendido', 95000000.00, 0, 10);

SELECT * FROM propiedad;

CREATE table cliente (
	cod_cliente INT,
	nombre VARCHAR (255),
	telefono VARCHAR (255),
	correo  VARCHAR (255),
	presupuesto DECIMAL (12,2)
);

DESCRIBE cliente;

ALTER TABLE cliente
ADD PRIMARY KEY (cod_cliente);

INSERT INTO cliente (cod_cliente, nombre, telefono, correo, presupuesto) VALUES
(1, 'Juan Perez', '3001234567', 'juan@gmail.com', 150000000.00),
(2, 'Maria Gomez', '3012345678', 'maria@gmail.com', 200000000.00),
(3, 'Carlos Lopez', '3023456789', 'carlos@gmail.com', 180000000.00),
(4, 'Ana Martinez', '3034567890', 'ana@gmail.com', 120000000.00),
(5, 'Luis Rodriguez', '3045678901', 'luis@gmail.com', 250000000.00),
(6, 'Sofia Hernandez', '3056789012', 'sofia@gmail.com', 300000000.00),
(7, 'Diego Torres', '3067890123', 'diego@gmail.com', 170000000.00),
(8, 'Laura Ramirez', '3078901234', 'laura@gmail.com', 220000000.00),
(9, 'Andres Castro', '3089012345', 'andres@gmail.com', 140000000.00),
(10, 'Valentina Diaz', '3090123456', 'valentina@gmail.com', 190000000.00);

SELECT * FROM cliente;

CREATE TABLE agente (
	cod_agente INT,
	nombre VARCHAR (255),
	telefono VARCHAR(255),
	correo VARCHAR (255)
);

DESCRIBE agente;

ALTER TABLE agente
ADD PRIMARY KEY (cod_agente);

INSERT INTO agente (cod_agente, nombre, telefono, correo) VALUES
(1, 'Pedro Alvarez', '3101234567', 'pedro@gmail.com'),
(2, 'Camila Torres', '3112345678', 'camila@gmail.com'),
(3, 'Jorge Ramirez', '3123456789', 'jorge@gmail.com'),
(4, 'Natalia Castro', '3134567890', 'natalia@gmail.com'),
(5, 'Andres Mejia', '3145678901', 'andresm@gmail.com'),
(6, 'Daniela Rios', '3156789012', 'daniela@gmail.com'),
(7, 'Felipe Vargas', '3167890123', 'felipe@gmail.com'),
(8, 'Paula Herrera', '3178901234', 'paula@gmail.com'),
(9, 'Sebastian Ortiz', '3189012345', 'sebastian@gmail.com'),
(10, 'Valeria Moreno', '3190123456', 'valeria@gmail.com');

SELECT * FROM agente;

CREATE TABLE visita (
	cod_visita INT,
	fecha DATE,
	hora TIME,
	observaciones VARCHAR (255),
	cod_propiedad INT,
	cod_cliente INT,
	cod_agente int
);

DESCRIBE visita;

ALTER TABLE visita
ADD PRIMARY KEY (cod_visita);

ALTER TABLE visita
ADD FOREIGN KEY (cod_propiedad) REFERENCES propiedad (cod_propiedad);

ALTER TABLE visita
ADD FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente);

ALTER TABLE visita
ADD FOREIGN KEY (cod_agente) REFERENCES agente (cod_agente);

INSERT INTO visita (cod_visita, fecha, hora, observaciones, cod_propiedad, cod_cliente, cod_agente) VALUES
(1, '2026-03-01', '09:00:00', 'Cliente interesado', 1, 1, 1),
(2, '2026-03-02', '10:30:00', 'Le gustó la ubicación', 2, 2, 2),
(3, '2026-03-03', '14:00:00', 'Solicita segunda visita', 3, 3, 3),
(4, '2026-03-04', '11:15:00', 'No le gustó el precio', 4, 4, 4),
(5, '2026-03-05', '16:45:00', 'Muy interesado', 5, 5, 5),
(6, '2026-03-06', '08:30:00', 'Prefiere otra zona', 6, 6, 6),
(7, '2026-03-07', '13:20:00', 'Volverá con familia', 7, 7, 7),
(8, '2026-03-08', '15:00:00', 'Le pareció pequeño', 8, 8, 8),
(9, '2026-03-09', '10:00:00', 'Interés medio', 9, 9, 9),
(10, '2026-03-10', '17:30:00', 'Listo para negociar', 10, 10, 10);

SELECT * FROM visita

CREATE TABLE venta (
	cod_venta INT,
	fecha DATE,
	precio_final DECIMAL (12,2),
	cod_propiedad INT,
	cod_cliente INT
);

DESCRIBE venta;

ALTER TABLE venta
ADD PRIMARY KEY (cod_venta);

ALTER TABLE venta
ADD FOREIGN KEY (cod_propiedad) REFERENCES propiedad (cod_propiedad);

ALTER TABLE venta
ADD FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente);

INSERT INTO venta (cod_venta, fecha, precio_final, cod_propiedad, cod_cliente) VALUES
(1, '2026-03-01', 150000000.00, 1, 1),
(2, '2026-03-02', 200000000.00, 2, 2),
(3, '2026-03-03', 300000000.00, 3, 3),
(4, '2026-03-04', 90000000.00, 4, 4),
(5, '2026-03-05', 160000000.00, 5, 5),
(6, '2026-03-06', 220000000.00, 6, 6),
(7, '2026-03-07', 400000000.00, 7, 7),
(8, '2026-03-08', 120000000.00, 8, 8),
(9, '2026-03-09', 180000000.00, 9, 9),
(10, '2026-03-10', 95000000.00, 10, 10);

SELECT * FROM venta;

CREATE TABLE contrato (
	cod_contrato INT,
	fecha_inicio DATE,
	fecha_fin DATE,
	renta DECIMAL (12,2),
	cod_propiedad INT,
	cod_cliente INT
);

DESCRIBE contrato;

ALTER TABLE contrato
ADD PRIMARY KEY (cod_contrato);

ALTER TABLE contrato
ADD FOREIGN KEY (cod_propiedad) REFERENCES propiedad (cod_propiedad);

ALTER TABLE contrato
ADD FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente);

INSERT INTO contrato (cod_contrato, fecha_inicio, fecha_fin, renta, cod_propiedad, cod_cliente) VALUES
(1, '2026-01-01', '2026-12-31', 1200000.00, 1, 1),
(2, '2026-02-01', '2027-01-31', 1500000.00, 2, 2),
(3, '2026-03-01', '2027-02-28', 1000000.00, 3, 3),
(4, '2026-04-01', '2027-03-31', 1800000.00, 4, 4),
(5, '2026-05-01', '2027-04-30', 1300000.00, 5, 5),
(6, '2026-06-01', '2027-05-31', 1600000.00, 6, 6),
(7, '2026-07-01', '2027-06-30', 2000000.00, 7, 7),
(8, '2026-08-01', '2027-07-31', 1100000.00, 8, 8),
(9, '2026-09-01', '2027-08-31', 1400000.00, 9, 9),
(10, '2026-10-01', '2027-09-30', 1700000.00, 10, 10);

SELECT * FROM contrato;

ALTER TABLE propiedad
ADD descripcion VARCHAR (255)

UPDATE propiedad SET descripcion = 'Casa amplia con piscina y balcon, muy luminosa' WHERE cod_propiedad = 1;

UPDATE propiedad SET descripcion = 'Apartamento renovado con terraza y buena vista' WHERE cod_propiedad = 2;

UPDATE propiedad SET descripcion = 'Casa campestre con piscina, terraza y jardín' WHERE cod_propiedad = 3;

UPDATE propiedad SET descripcion = 'Apartamento pequeño pero luminoso y moderno' WHERE cod_propiedad = 4;

UPDATE propiedad SET descripcion = 'Casa familiar con balcon y patio grande' WHERE cod_propiedad = 5;

UPDATE propiedad SET descripcion = 'Apartamento duplex renovado con terraza' WHERE cod_propiedad = 6;

UPDATE propiedad SET descripcion = 'Casa de lujo con piscina, balcon y terraza' WHERE cod_propiedad = 7;

UPDATE propiedad SET descripcion = 'Apartamento cómodo con balcon y buena iluminación' WHERE cod_propiedad = 8;

UPDATE propiedad SET descripcion = 'Casa renovada con terraza y espacios amplios' WHERE cod_propiedad = 9;

UPDATE propiedad SET descripcion = 'Apartamento moderno, luminoso y bien ubicado' WHERE cod_propiedad = 10;

UPDATE contrato
SET fecha_fin = NULL
WHERE cod_contrato = 1;

UPDATE contrato
SET fecha_fin = NULL
WHERE cod_contrato = 3;

UPDATE visita
SET fecha = '2024-03-01'
WHERE cod_visita = 6;

UPDATE propiedad
SET tipo = 'Vivienda',
    subtipo = 'Departamento',
    direccion = 'Centro Calle 10'
WHERE cod_propiedad = 9;

#1. ¿Cuáles son todas las propiedades de un propietario específico?
SELECT * FROM propiedad
WHERE cod_propietario = 1;
#2. ¿Qué propiedades tienen precio superior a 300,000?
SELECT * FROM propiedad
WHERE precio > 300000;
#3. ¿Cuáles son las propiedades de tipo Vivienda, subtipo Departamento en la zona Centro?
SELECT * FROM propiedad
WHERE tipo = 'Vivienda'
AND subtipo = 'Departamento'
AND direccion LIKE '%Centro%';
#4. ¿Qué propiedades están disponibles para venta o alquiler?
SELECT * FROM propiedad
WHERE disponibilidad = 1;
#5. ¿Cuáles son las visitas a propiedades realizadas en marzo de 2024?
SELECT * FROM visita
WHERE fecha BETWEEN '2024-03-01' AND '2024-03-31';
#6. ¿Qué propiedades tienen piscina y balcón o terraza?
SELECT * FROM propiedad
WHERE descripcion LIKE '%piscina%'
AND (descripcion LIKE'%balcon%' OR descripcion like '%terraza%');
#7. ¿Cuáles son las propiedades con descripciones que contienen las palabras "luminoso" o "renovado"?
SELECT * FROM propiedad
WHERE descripcion LIKE '%luminoso%'
OR descripcion LIKE '%renovado%';
#8. ¿Qué contratos de alquiler no tienen fecha de finalización?
SELECT * FROM contrato
WHERE fecha_fin IS NULL;
#9. ¿Cuáles son las propiedades ordenadas por tipo y precio?
SELECT * FROM propiedad
ORDER BY tipo, precio;
#10. ¿Cuál es el tiempo promedio de venta (en días) por zona, tipo y subtipo de propiedad?
SELECT 
    p.tipo,
    p.subtipo,
    AVG(DATEDIFF(v.fecha, c.fecha_inicio)) AS promedio_dias
FROM propiedad p
JOIN contrato c ON p.cod_propiedad = c.cod_propiedad
JOIN venta v ON p.cod_propiedad = v.cod_propiedad
GROUP BY p.tipo, p.subtipo;