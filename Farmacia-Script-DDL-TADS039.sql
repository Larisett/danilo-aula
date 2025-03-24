-- SQL: DDL - CREATE
create schema trabalhador;

use trabalhador;

create table Cliente (
	cpf varchar(14) primary key not null,
    nome varchar(45) not null,
    genero char (1) not null,
    email varchar(45) unique null,
    telefone varchar (15) unique not null,
    dataNasc date null,
    `status` boolean null
);

create table Plano_de_Saude(
	Cliente_cpf varchar(14) primary key not null,
    numero varchar(20) unique not null,
    nome varchar(25) not null,
	foreign key (Cliente_cpf) references
		cliente (cpf)
        on update cascade
        on delete cascade
        
);

-- SQL: DDL - ALTER

alter table departamento
	add column descricao varchar(150) null;
    
desc departamento;

alter table departamento
	change column descricao sobre varchar(155) not null;
    
alter table departamento
		drop column sobre;
   
alter table cliente
	add column potuacao int null default 0;
    
    