-- Criação das tabelas
create table cidades (
    id int primary key,
    nome varchar(60) not null,
    populacao int
);

create table alunos (
    id int primary key,
    nome varchar(60) not null,
    data_nasc date,
    cidade_id int,
    foreign key (cidade_id) references cidades(id)
);

-- Inserção de dados na tabela cidades
insert into cidades values (1, 'arraial dos tucanos', 42632);
insert into cidades values (2, 'springfield', 13820);
insert into cidades values (3, 'hill valley', 27383);
insert into cidades values (4, 'coruscant', 19138);
insert into cidades values (5, 'minas tirith', 31394);

-- Inserção de dados na tabela alunos
insert into alunos values (1, 'immanuel kant', date '1724-04-22', 4);
insert into alunos values (2, 'alan turing', date '1912-06-23', 3);
insert into alunos values (3, 'george boole', date '2002-01-01', 1);
insert into alunos values (4, 'lynn margulis', date '1991-08-12', 3);
insert into alunos values (5, 'nicola tesla', date '2090-01-08', null);
insert into alunos values (6, 'ada lovelace', date '1978-05-28', 4);
insert into alunos values (7, 'claude shannon', date '1982-10-15', 3);
insert into alunos values (8, 'charles darwin', date '2010-02-06', null);
insert into alunos values (9, 'marie curie', date '2007-07-12', 3);
insert into alunos values (10, 'carl sagan', date '2000-11-20', 1);
insert into alunos values (11, 'tim berners-lee', date '1973-12-05', 4);
insert into alunos values (12, 'richard feynman', date '1982-09-12', 1);

-- Inner Join entre alunos e cidades
select * from alunos inner join cidades on cidades.id = alunos.cidade_id;
