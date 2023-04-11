CREATE DATABASE db_farmacia_bem_estar;


CREATE TABLE tb_categorias(
Id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
Primary key (Id)
);

INSERT INTO Tb_categorias (nome, descricao) values ("Medicamentos", "Para dores e tratamentos de doenças");
INSERT INTO Tb_categorias (nome, descricao) values ("Perfumaria", "Produtos nacionais e importados para cuidados pessoais");
INSERT INTO Tb_categorias (nome, descricao) values ("Dermocosmeticos", "Cuidados faciais e corporais");
INSERT INTO Tb_categorias (nome, descricao) values ("Higiene pessoal","Produtos para higiene pessoal");
INSERT INTO Tb_categorias (nome, descricao) values ("Alimentos","Alimentos saudáveis");

CREATE TABLE  tb_produtos (
id bigint auto_increment,
Nome varchar(255) not null,
Descricao varchar(255) not null,
Preco Decimal (6,2) not null,
Estoque int NOT NULL,
categoria_id bigint,
Primary key (Id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Amoxilina", "Antibiotico", 11.50, 500, 1);
INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Iumi ","Anticoncepcional", 93.50, 498, 1);

INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Vichy Minéral 89", "Hidratante facial", 112.90, 344, 2 );
INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Gel de Limpeza Facial La Roche-Posay", "Limpeza facial", 89.90, 274, 2 );

INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("La Roche-Posay", "Protetor Solar", 75.99, 297, 3);
INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Creme Facial Nívea ", "Creme Hidratante", 24.99, 182, 3);

INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Absorvente Noturno Always", "Absorvente feminino", 46.25, 564,4);
INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Colgate Slim Soft Black", "Escova Dental", 16.11, 57, 4);

INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Integralmedica Crisp Bar", "Barra de cereal", 8.99, 46, 5);
INSERT INTO tb_produtos (Nome, Descricao, Preco, Estoque, Categoria_id) VALUES ("Mineral Crystal", "Água", 3.94, 158, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE PRECO > 50.00;

SELECT * FROM tb_produtos WHERE PRECO BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = "Perfumaria";
