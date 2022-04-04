create database dbMatues;
use dbMatues;

-- Cometário de uma linha 
/* Comentário de 
multiplas linhas*/

create table tbAluno(
Id int primary key auto_increment,
Nome varchar(50) not null, 
Sexo char(1) default 'F',
Salario float,
check (Salario >= 0),
Nota int null,
Cpf bigint unique not null
);

alter table tbAluno add DataNasc date not null;
describe tbAluno;

show tables;
show databases;

alter table tbAluno modify DataNasc date null;
alter table tbAluno drop DataNasc;

create table tbTelefone(
IdTel int primary key auto_increment,
Numerotel numeric(9) not null,
Id int not null,
constraint FK_tbTelefone_tbAluno -- dar um nome pra tabela de chave estrangeira
foreign key (Id) references tbAluno(Id)
);

-- sintaxe para criar um objeto index 
create index idxTbAluno ON tbAluno (Nome);  

-- trocar o nome da tabela 
rename table tbAluno to tbpessoa;

alter table tbpessoa
rename column tbpessoa to tbpessoa1;


