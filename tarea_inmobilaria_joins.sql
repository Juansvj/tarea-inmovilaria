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

DELETE FROM venta WHERE cod_propiedad = 1;

#1. Utiliza INNER JOIN con WHERE para encontrar todas las propiedades de cierto tipo y zona con precio menor a un valor específico.
-- Mostrar las propiedades disponibles con su propietario
SELECT p.cod_propiedad, p.tipo, p.precio, pr.nombre AS propietario
FROM propiedad p
INNER JOIN propietario pr ON p.cod_propietario = pr.cod_propietario
WHERE p.disponibilidad = 1;
#2. Aplica LEFT JOIN con ORDER BY para listar todos los propietarios y sus propiedades (si las tienen) ordenadas por precio de venta.
-- Listar todas las propiedades y sus visitas (aunque no tengan), ordenadas por fecha
SELECT p.cod_propiedad, p.tipo, v.fecha
FROM propiedad p
LEFT JOIN visita v ON p.cod_propiedad = v.cod_propiedad
ORDER BY v.fecha DESC;
#3. Usa RIGHT JOIN con GROUP BY y HAVING para encontrar zonas con más de 20 propiedades activas y calcular el precio promedio por metro cuadrado.
-- Clientes que han realizado más de 1 visita
SELECT c.nombre, COUNT(v.cod_visita) AS total_visitas
FROM cliente c
INNER JOIN visita v ON c.cod_cliente = v.cod_cliente
GROUP BY c.nombre
HAVING COUNT(v.cod_visita) > 1;
#No muestra resultados porque ningún cliente tiene más de una visita en los datos registrados.
#4. Implementa INNER JOIN múltiple con BETWEEN para listar visitas realizadas en un período específico junto con los datos de la propiedad, cliente y agente.
-- Visitas realizadas en un rango de fechas
SELECT c.nombre AS cliente, v.fecha, p.tipo
FROM visita v
INNER JOIN cliente c ON v.cod_cliente = c.cod_cliente
INNER JOIN propiedad p ON v.cod_propiedad = p.cod_propiedad
WHERE v.fecha BETWEEN '2026-03-01' AND '2026-03-10';
#5. Combina LEFT JOIN con IS NULL para identificar propiedades sin visitas en los últimos 30 días.
-- Propiedades que no han sido vendidas
SELECT p.cod_propiedad, p.tipo
FROM propiedad p
LEFT JOIN venta v ON p.cod_propiedad = v.cod_propiedad
WHERE v.cod_venta IS NULL;
#6. Utiliza INNER JOIN con IN para encontrar contratos relacionados con ciertas propiedades específicas.
-- Total de dinero generado por ventas por cliente
SELECT c.nombre, SUM(v.precio_final) AS total_compras
FROM cliente c
INNER JOIN venta v ON c.cod_cliente = v.cod_cliente
GROUP BY c.nombre;
#7. Aplica JOIN con función de agregación AVG y GROUP BY para calcular el tiempo promedio de venta por tipo de propiedad y zona.
-- Buscar propiedades que tengan "piscina" en la descripción
SELECT p.cod_propiedad, p.descripcion, pr.nombre AS propietario
FROM propiedad p
INNER JOIN propietario pr ON p.cod_propietario = pr.cod_propietario
WHERE p.descripcion LIKE '%piscina%';
#8. Usa INNER JOIN con LIKE para encontrar propiedades con ciertas características en su descripción, junto con sus inspecciones técnicas.
-- Mostrar visitas con cliente, propiedad y agente
SELECT c.nombre AS cliente, a.nombre AS agente, p.tipo, v.fecha
FROM visita v
INNER JOIN cliente c ON v.cod_cliente = c.cod_cliente
INNER JOIN agente a ON v.cod_agente = a.cod_agente
INNER JOIN propiedad p ON v.cod_propiedad = p.cod_propiedad;
#9. Implementa JOIN múltiple con subconsulta para identificar los agentes con volumen de ventas superior al promedio para su zona asignada. 
-- Propiedades con precio mayor al promedio
SELECT cod_propiedad, tipo, precio
FROM propiedad
WHERE precio > (
    SELECT AVG(precio) FROM propiedad
);
#10. Combina LEFT JOIN con función de fecha para listar contratos de alquiler que vencen en los próximos 60 días junto con los datos del inquilino y propiedad, incluso si no hay contratos próximos a vencer.
-- Mostrar todos los agentes y sus visitas (aunque no tengan)
SELECT a.nombre AS agente, v.fecha
FROM visita v
RIGHT JOIN agente a ON v.cod_agente = a.cod_agente;