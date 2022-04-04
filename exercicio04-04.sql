create database dbdesenvolvimento;
use dbDesenvolvimento;

create table tbProduto(
IdProp int primary key, 
Nomeprod varchar(50) not null, 
Qtd int, 
DataValidade date not null, 
Preco float not null
);

alter table tbProduto add Peso decimal(2,1);
alter table tbProduto add Cor varchar(50);
alter table tbProduto add Marca varchar(50) not null;

alter table tbProduto drop Cor;

alter table tbProduto modify Peso decimal(2,1) not null;
alter table tbProduto drop Cor; 

/* Não foi possível, pois 
a coluna já havia sido excluida*/

create database dbLojaGrande;

alter table tbProduto add Cor varchar(50);

create database dbLojica;
use dbLojica;

create table tbCliente(
NomeCli varchar(50) not null,
CodigoCLi int primary key,
DataCadastro date not null
);

use dbLojaGrande;

create table tbFuncionario(
NomeFunc varchar(50) not null, 
CodigoFunc int primary key,
DataCadastro datetime not null
);

drop database dbLojaGrande;

use dbLojica;

alter table tbCliente add Cpf varchar(11) not null unique;
