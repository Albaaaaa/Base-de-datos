CREATE DATABASE banco;

USE banco;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    dni VARCHAR(9)
);

CREATE TABLE cuentas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    saldo DECIMAL(12,2),
    id_cliente INT,
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

CREATE TABLE movimientos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    concepto VARCHAR(100),
    cantidad DECIMAL(10,2),
    fecha DATE,
    id_cuenta INT,
    FOREIGN KEY(id_cuenta) REFERENCES cuentas(id)
);