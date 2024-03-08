insert into tbl_cliente
(codigo_cliente,nome,cidade,endereco)
values
(1,'Joao Silva', 'Sao Paulo', 'Rua A, 123'),
(2, 'Maria Santos', 'Rio de Janeiro', 'Av. B,456'),
(3, 'Pedro Almeida', 'Belo Horizonte', 'Rua C,789'),
(4, 'Ana Oliveira', 'Salvador', 'Av. D, 1011'),
(5, 'Carlos Lima', 'Brasilia', 'Rua E, 1213');

insert into tbl_titulo
(codigo_titulo,titulo,descricao,categoria)
values
(1, 'Aventuras Urbanas', 'Uma historia emocionante', 'DRAMA'),
(2, 'Misterios Antigos', 'Enigmas por resolver','COMEDIA'),
(3, 'Amor nas Estraelas', 'um romance intergalactico','DRAMA'),
(4, 'Codigo Enigmatico', 'Segredos ocultos', 'COMEDIA'),
(5, 'Historias Perdidas', 'Contos esquecidos', 'DRAMA');

insert into tbl_livros
(cod_livro,codigo_titulo,status)
values
(1,1,'DISPONIVEL'),
(2,1, 'ALUGADO'),
(3,2, 'DISPONIVEL'),
(4,3, 'ALUGADO'),
(5,4, 'DISPONIVEL');

insert into tbl_emprestimo
(numero_emprestimo,codigo_cliente,Codigo_livro)
values
(1,1,2),
(2,2,4),
(3,3,1),
(4,4,5),
(5,5,3);

select * from tbl_cliente;

select nome, cidade
from tbl_cliente
where cidade = 'Sao Paulo';

select nome, codigo_cliente as codigo
from tbl_cliente
where codigo_cliente > 3;

select descricao
from tbl_titulo;

create table tbl_cliente2(
codigo integer);

insert into tbl_cliente2(codigo)
select codigo_cliente
from tbl_cliente;

update tbl_livros
set status='DISPONIVEL'
where status='ALUGADO';

delete from tbl_cliente2
where codigo > 3;


