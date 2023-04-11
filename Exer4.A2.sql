CREATE DATABASE db_cidade_das_carnes;

CREATE TABLE  tb_categorias (
Id BIGINT AUTO_INCREMENT,
 nome varchar(255) not null,
 descricao varchar(255) not null,
 PRIMARY KEY (Id)
 );
 
 INSERT INTO tb_categorias (nome, descricao) values ("Carne", "Suína");
 
 INSERT INTO tb_categorias (nome, descricao) values ("Carne", "Bovina");

 INSERT INTO tb_categorias (nome, descricao) values ("Linguiça", "Suína");

 INSERT INTO tb_categorias (nome, descricao) values ("Linguiça", "Pernil");

 INSERT INTO tb_categorias (nome, descricao) values ("Peixe ", "Fresco");
 
 CREATE TABLE tb_produtos (
 Id BIGINT AUTO_INCREMENT,
 nome varchar(255) not null,
 descricao varchar(255) not null,
 peso varchar(255) not null,
 preco DECIMAL (6,2) NOT NULL,
 categoria_id BIGINT,
PRIMARY KEY(Id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("Filé Mignon","Sem Glúten", "0.7 kG", 18.98, 1 );
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("Costela Suína","Sem Glúten", "0,5 KG", 23.98, 1 );
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("Alcatra", "Sem osso", "1.6 KG", 34.98, 2 );
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("Contra filé", "Sem Glúten", "0.9 KG", 39.98, 2 );
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("linguiça","Toscana", "700 KG", 16.98, 3);
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("linguiça","Cuiabana", "900 KG", 29.98, 4);
INSERT INTO tb_produtos (nome, descricao, peso, preco, categoria_id) VALUES ("Salmão","Espécie Pin", "1.5 KG", 79.98, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Carne";





 




