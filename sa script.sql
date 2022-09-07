drop database if exists bdSA;
create database bdSA;
use bdSA;
create table tipo_saida(
idtipo_saida int not null,
primary key(idtipo_saida)
);
create table tipo_entrada(
idtipo_entrada int not null,
valor int,
nome varchar(45),
primary key(idtipo_entrada)
);

create table usuario(
idusuario int not null,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
senha varchar(45),
primary key (idusuario)
);
create table entrada(
identrada int not null,
idusuario int,
nome varchar(45),
data datetime,
valor int not null,
primary key(identrada),
foreign key (idusuario) references usuario(idusuario)
);

create table saida(
idsaida int not null,
idtipo_saida int not null,
nome varchar(45),
valor int,
custo int,
despesa int,
data datetime,
primary key(idsaida),
foreign key (idtipo_saida) references tipo_saida(idtipo_saida)
);

