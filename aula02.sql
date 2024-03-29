create database bd_sistema_bancario;

create table tabela1(
coluna1 int);

create table tabela2(
coluna1 text);

create table tabela3(
coluna1 text,
coluna2 char);

create table tabela4(
coluna1 date,
coluna2 varchar(4));

create table tabela5(
coluna1 boolean,
coluna2 char );


create table cliente(
nome_cliente text,
cidade_cliente text,
endereco_cliente text);

create table emprestimo(
numero_emprestimo integer,
nome_agencia text,
valor float);

create table agencia(
nome_agencia text,
cidade_agencia text,
depositos integer);

create table conta(
numero_conta integer,
nome_agencia text,
saldo float);	

drop table tabela1, tabela2, tabela3, tabela4, tabela5;

alter table cliente add column idade integer;
alter table cliente rename column idade to idades;
alter table cliente drop column idades;
alter table cliente rename to tbcliente;




create schema carlos;

show search_path;

set search_path=carlos;

