create database cuadro_mando;
use cuadro_mando;

drop table convocatorias;
create table convocatorias
(idConvocatoria int not null auto_increment primary key, 
codigoConvocatoria varchar(45),
denominacion varchar(50) not null,
ambito varchar(25) not null,
anualidad int not null
);

drop table expedientes; 
create table expedientes
(idExpediente int not null auto_increment primary key,
codigoExpediente varchar(25) not null,
sector varchar(45) not null,
idConvocatoria int not null,
idEntidad int not null,
foreign key(idConvocatoria) references convocatorias(idConvocatoria),
foreign key(idEntidad) references entidades(idEntidad)
);

drop table entidades; 
create table entidades
(idEntidad int not null auto_increment primary key,
cif_Entidad varchar(9) not null,
nombreEntidad varchar(85) not null,
direccionEntidad varchar(150),
CP_Entidad int, 
ciudadEntidad varchar(25),
provinciaEntidad varchar(25)
);
DROP TABLE accionesFormativas;

create table accionesFormativas
(idAAFF int not null auto_increment primary key,
codigoAAFF varchar(20) not null,
denominacionAAFF varchar(90) not null
);

drop table usuarios; 
create table usuarios
(idUsuario int not null auto_increment primary key,
nombreUsuario varchar(15) not null,
pass varchar(10) not null
);

 DROP TABLE grupos; 
create table grupos
(idGrupo int not null auto_increment primary key,
idExpediente int not null,
numeroAAFF int not null,
numeroGrupo int not null,
idEntidad int,
idAAFF int not null,
modalidad varchar(10) not null, 
horasTotales int,
horasP int,
horasT int, 
alumnosAprobados int, 
modulo double(4,2), 
fechaInicio date,  
fechafin date, 
alumnosiniciados int, 
alumnosfinalizados int, 
foreign key(idExpediente) references expedientes(idExpediente),
foreign key(idEntidad) references entidades(idEntidad),
foreign key(idAAFF) references accionesFormativas(idAAFF)
);

insert into familias values(1,'bebidas'),(2,'ropa'),(3,'zapatos');
INSERT INTO `convocatorias` (`idConvocatoria`,`codigoConvocatoria`,`denominacion`,`ambito`,`anualidad`) VALUES (1,'Ocupados 2018','Estatal Ocupados 2018','Nacional',2018);
INSERT INTO `convocatorias` (`idConvocatoria`,`codigoConvocatoria`,`denominacion`,`ambito`,`anualidad`) VALUES (2,'Ocupados 2028','Estatal Ocupados 2028','Nacional',2020);
INSERT INTO `convocatorias` (`idConvocatoria`,`codigoConvocatoria`,`denominacion`,`ambito`,`anualidad`) VALUES (3,'TICS 2018','Estatal TICS 2018','Nacional',2018);
INSERT INTO `convocatorias` (`idConvocatoria`,`codigoConvocatoria`,`denominacion`,`ambito`,`anualidad`) VALUES (4,'TICS 2020','Estatal TICS 2020','Nacional',2020);