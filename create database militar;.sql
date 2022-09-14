create database militar;
create table Cuerpo(codigo_cuerpo int, denominacion varchar(10),PRIMARY KEY(codigo_cuerpo));
create table Servicio(codigo_servicio int, descripcion varchar(10),PRIMARY KEY(codigo_servicio));
create table Compañia(codigo_compañia int, actividad principal varchar(50),PRIMARY KEY(codigo_compañia));
create table Cuartel(codigo_cuartel int, nombre varchar(10),PRIMARY KEY(codigo_cuartel));
create table Soldado(codigo_soldado int, nombre varchar(10), apellido1 varchar(20) ,apellido2 varchar(20) ,codigo_cuartel int ,codigo_compañia int,codigo_cuerpo int, PRIMARY KEY(codigo_soldado, FOREIGN KEY(codigo_cuartel) REFERENCES Cuartel(codigo_cuartel),FOREIGN KEY(codigo_compañia) REFERENCES Compañia(codigo_compañia),FOREIGN KEY(codigo_cuerpo) REFERENCES Cuerpo(codigo_cuerpo));

create table Sol_servicio(fecha datetime,codigo_soldado int,codigo_servicio int, PRIMARY KEY(codigo_soldado),PRIMARY KEY(codigo_servicio));
create table Sol_graduacion(fecha_inicio datetime,codigo_soldado int,PRIMARY KEY(codigo_soldado,fecha_inicio));

