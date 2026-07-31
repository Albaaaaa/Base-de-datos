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

SELECT * FROM ventas_corp.productos;

-- FASE 2: LA TABLA RELACIONAL ( EL HILO ROJO -- FOREING KEY

-- 5. Creamos la tabla de Ventas conectando Clientes y Productos

CREATE TABLE ventas (
	id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT,
    id_productos INT,
    cantidad INT NOT NULL,
    -- Aquí programamos los hilos rojos (claves foráneas)
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes),
    FOREIGN KEY (id_productos) REFERENCES productos(id_productos)
);

SELECT * FROM ventas_corp.ventas;

-- 6. Registramos ventas válidas (Usando IDs que Sí existen)
INSERT INTO ventas (id_clientes, id_productos, cantidad) VALUES
(2, 1, 2), -- GlobalCorp compra 2 servidores
(1, 2, 1), -- TechSolutions compra 1 Firewall
(3, 3, 50) -- InnovaData compra 50 Licencias
;
-- 7. DEMOSTRACIÓN DE SEGURIDAD
-- Intentamos venderle al cliente 99 (que no existe)
INSERT INTO ventas (id_clientes, id_productos, cantidad) VALUES
(99, 1, 2) 
;

-- Creación de tabla independiente
CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);
 
-- Inserción de datos
INSERT INTO proveedores (nombre_empresa, telefono) VALUES 
('Cisco Systems', '+34 900 123 456'),
('Dell Technologies', '+34 900 654 321');
 
-- Comprobación
SELECT * FROM proveedores;

CREATE TABLE envios (
    id_envios INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(50) NOT NULL,
    id_venta INT,
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
);
   INSERT INTO envios (estado, id_venta) VALUES
('En tránsito', 1),
('Preparando envío', 2);
   SELECT * FROM envios;