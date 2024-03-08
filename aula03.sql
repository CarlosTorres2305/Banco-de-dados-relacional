create table tbl_cliente(
codigo_cliente integer primary key,
nome text not null,
cidade text,
endereco text);

create table tbl_emprestimo(
numero_emprestimo integer primary key,
codigo_cliente integer,
codigo_livro integer);

create table tbl_titulo(
codigo_titulo integer primary key,
titulo text not null,
decricao text,
categoria text);

create table tbl_livros(
cod_livro integer primary key,
codigo_titulo integer,
status text);


create domain chk_status text check(value in('DISPONIVEL','ALUGADO'));

ALTER TABLE tbl_titulo
ADD CONSTRAINT check_categoria CHECK (categoria IN ('DRAMA', 'COMEDIA'));


ALTER TABLE tbl_livros
ADD CONSTRAINT check_status CHECK (status IN('DISPONIVEL','ALUGADO'));


ALTER TABLE tbl_emprestimo
ADD CONSTRAINT fk_codigo_cliente
FOREIGN KEY (codigo_cliente) REFERENCES tbl_cliente(codigo_cliente);

ALTER TABLE tbl_livros
ADD CONSTRAINT fk_cod_titulo
FOREIGN KEY(codigo_titulo) REFERENCES tbl_titulo(codigo_titulo);

ALTER TABLE tbl_emprestimo
ADD CONSTRAINT fk_cod_livro
FOREIGN KEY(codigo_livro) REFERENCES tbl_livros(cod_livro);



