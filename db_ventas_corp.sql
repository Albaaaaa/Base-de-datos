-- FASE 1 : CREACIÓN DEL ENTORNO Y ENTIDADES INDEPENDIENTES
-- 1. Creamos la base de datos y la activamos
CREATE DATABASE ventas_corp;
USE ventas_corp;

-- 2. Creamos la tabla de Clientes (Entidad Fuerte)
CREATE TABLE clientes (
	id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 3. Creamos la tabla de Productos (Entidad Fuerte)
CREATE TABLE productos (
	id_productos INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- 4. Poblamos con los primeros datos para hacer pruebas
INSERT INTO clientes (nombre_empresa, email) VALUES
('TechSolutions', 'contacto@tech.com'),
('GlobalCorp', 'info@global.com'),
('InnovaData', 'hola@innova.com')
;
-- Comando para verficar el ingreso de los registros
SELECT * FROM ventas_corp.clientes;

INSERT INTO productos (nombre_producto, precio) VALUES
('Servidor Rack', '2500.00'),
('Firewall Pro', '800.00'),
('Licencia Antivirus', '150.00')
;

SELECT * FROM ventas_corp.productos
