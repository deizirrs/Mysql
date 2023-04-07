CREATE DATABASE exercicio1;

-- Exercício 1
CREATE TABLE colaboradores(
	Id bigint auto_increment,
	Nome varchar (255) not null,
	Sobrenome varchar(255) not null,
	Cargo varchar (255) not null,
	Departamento varchar (255) not null,
	Salario decimal not null,
	PRIMARY KEY (Id)
);

INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Departamento, Salario)
	values ("Deiziane", "Rodrigues", "Diretora","Diretoria", 10000.00);
INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Departamento, Salario)
	values ("Andressa", "Marçal", "Recutadora", "RH", 8000.00);
INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Departamento, Salario)
	values ("Heimy", "Dias", "Gerente","comercial", 8500.00);
INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Departamento, Salario)
	values ("Ingrid", "Padilha", "Vendedora","Comercial", 6000.00);
INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Departamento, Salario)
	values ("Jamile", "Farias", "Vendedora","comercial", 6000.00);

SELECT * FROM colaboradores;

DELETE FROM colaboradores where id = 7;
DELETE FROM colaboradores where id = 8;
DELETE FROM colaboradores where id = 9;
DELETE FROM colaboradores where id = 10;
DELETE FROM colaboradores where id = 11;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;


  
  


