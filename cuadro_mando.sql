create database cuadro_mando;
use cuadro_mando;

create table convocatorias
(idConvocatoria varchar(45) not null primary key,
denominacion varchar(50) not null,
ambito varchar(25) not null,
anualidad int not null
);

create table expedientes
(codigoExpediente varchar(25) not null primary key,
sector varchar(45) not null,
idConvocatoria varchar(45) not null,
idEntidad varchar(12) not null,
foreign key(idConvocatoria) references convocatorias(idConvocatoria),
foreign key(idEntidad) references entidades(idEntidad)
);

create table entidades
(idEntidad varchar(12) not null primary key,
cif_Entidad varchar(9) not null,
nombreEntidad varchar(85) not null,
direccionEntidad varchar(150),
CP_Entidad int, 
ciudadEntidad varchar(25),
provinciaEntidad varchar(25)
);

create table accionesFormativas
(codigoAAFF varchar(20) not null primary key,
denominacionAAFF varchar(90) not null
);

create table usuarios
(idUsuario int not null auto_increment primary key,
nombreUsuario varchar(15) not null,
password varchar(10) not null
);

create table grupos
(idGrupo int not null auto_increment primary key,
codigoExpediente varchar(25) not null,
numeroAAFF int not null,
numeroGrupo int not null,
idEntidad varchar(12),
codigoAAFF varchar(20),
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
foreign key(codigoExpediente) references expedientes(codigoExpediente),
foreign key(idEntidad) references entidades(idEntidad),
foreign key(codigoAAFF) references accionesFormativas(codigoAAFF)
);

