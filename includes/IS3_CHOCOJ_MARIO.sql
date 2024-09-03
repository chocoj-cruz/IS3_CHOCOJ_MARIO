CREATE DATABASE IS3_CHOCOJ_MARIO;

create table rol (
rol_id serial,
rol_nombre varchar(50),
rol_nombre_ct varchar(10),
rol_situacion smallint default 1,
primary key (rol_id)
)

create table usuario(
usu_id serial,
usu_nombre varchar(50),
usu_serial integer,
usu_password lvarchar,
usu_situacion smallint default 1,
primary key (usu_id)
)


create table permiso (
permiso_id serial,
permiso_usuario integer,
permiso_rol integer,
permiso_situacion smallint default 1,
primary key (permiso_id),
foreign key (permiso_rol) references rol (rol_id),
foreign key (permiso_usuario) references usuario (usu_id)
)

create table envio(
envio_id serial,
envio_fecha datetime year to minute,
envio_situacion smallint default 1,
primary key (envio_id)
)



create table detalle_envios (
    detalle_id serial not null,
    detalle_envio int,
    detalle_usuario int,
    detalle_cantidad int,
    detalle_situacion smallint default 1 not null,
    primary key (detalle_id),
    foreign key (detalle_envio) references envio (envio_id),
    foreign key (detalle_usuario) references usuario (usu_id)    
)




INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Juan Perez', 1001, 'pass123', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Maria Lopez', 1002, 'password', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Carlos Sanchez', 1003, '1234abcd', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Ana Gomez', 1004, 'anaPass1', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Luis Fernandez', 1005, 'luis_2023', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Carmen Martinez', 1006, 'carmenPass!', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Jorge Ramirez', 1007, 'jorge@123', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Elena Ruiz', 1008, 'elenaPwd', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Miguel Torres', 1009, 'miguel2023', 1);

INSERT INTO usuario (usu_nombre, usu_serial, usu_password, usu_situacion) 
VALUES ('Laura Morales', 1010, 'laura#321', 1);




INSERT INTO rol (rol_nombre, rol_nombre_ct) 
VALUES ('USUARIO', 'USER');

INSERT INTO rol (rol_nombre, rol_nombre_ct) 
VALUES ('USUARIO ADMINISTRATIVO', 'ADMIN_USER');

INSERT INTO rol (rol_nombre, rol_nombre_ct) 
VALUES ('ADMINISTRADOR', 'ADMIN');



INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (1, 1);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (2, 1);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (3, 2);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (4, 3);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (5, 1);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (6, 2);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (7, 3);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (8, 2);  

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (9, 1); 

INSERT INTO permiso (permiso_usuario, permiso_rol) 
VALUES (10, 1); 


INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 14:35');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 15:10');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 16:25');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 17:40');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 18:55');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 19:20');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 20:45');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 21:30');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 22:15');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-03 23:05');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 08:15');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 09:25');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 10:35');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 11:50');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 12:10');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 13:20');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 14:30');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 15:45');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 16:55');
INSERT INTO envio (envio_fecha) VALUES ('2024-09-04 17:30');



INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (1, 1, 5);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (2, 2, 3);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (3, 3, 7);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (4, 4, 2);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (5, 5, 8);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (6, 6, 4);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (7, 7, 6);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (8, 8, 3);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (9, 9, 5);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (10, 10, 7);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (11, 1, 4);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (12, 2, 2);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (13, 3, 6);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (14, 4, 5);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (15, 5, 3);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (16, 6, 7);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (17, 7, 4);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (18, 8, 8);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (19, 9, 2);

INSERT INTO detalle_envios (detalle_envio, detalle_usuario, detalle_cantidad) 
VALUES (20, 10, 6);



SELECT USU_NOMBRE AS USUARIOS, SUM(DETALLE_CANTIDAD) AS CANTIDAD_ENVIOS FROM DETALLE_ENVIOS
            INNER JOIN USUARIO ON DETALLE_ENVIO = USU_ID WHERE DETALLE_SITUACION = 1
            GROUP BY USU_NOMBRE