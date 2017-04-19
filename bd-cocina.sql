create database negocio;
use negocio;
create table usuarios(pass varchar(30), nick varchar(30), tipo_usuario varchar(50), nombre varchar(50), apellido1 varchar(50), apellido2 varchar(50), dni varchar(9) primary key, codigo_postal int, localidad varchar(50), telefono int);
create table clientes(numero_tarjeta varchar(19), dni varchar(9), primary key(dni), foreign key(dni) references usuarios(dni));
create table chefs(telefono_chef int, dni varchar(9),  primary key(dni), foreign key(dni) references usuarios(dni));