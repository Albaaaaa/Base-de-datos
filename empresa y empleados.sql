CREATE DATABASE empresa;

USE empresa;CREATE DATABASE empresa;CREATE DATABASE empresa;CREATE DATABASE empresCREATE DATABASE empresa;

USE empresa;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);a;

USE empresa;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

USE empresa;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

USE empresa;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);