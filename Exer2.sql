CREATE DATABASE exercicio2;

USE exercicio2;

CREATE TABLE produtos(
id bigint auto_increment,
Nomeproduto varchar (255) not null,
Preco decimal not null,
Estoque int,
Fabricante varchar (255) not null,
Anofabricacao int,
PRIMARY KEY(id)
);

INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Galaxy A04", 799.00, 175, "Samsung", 2021);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Galaxy M14", 1319.00, 475, "Samsung", 2016);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Xiaomi Redmi 10A", 1199.00, 1.864, "Xiaomi", 2020);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Iphone 14 ",  15000.00, 1500, "Aplee", 2022);
  
  INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Nokia C01 Plus",  494.00, 275, "Nokia", 2016);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Galaxy A03", 498.00, 875, "Nokia", 2018);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Philco Hit P8", 499.00, 150, "Philco", 2012);
INSERT INTO produtos (Nomeproduto, Preco, Estoque, Fabricante, Anofabricacao)
	values ("Positivo Twist 4 Fit ", 459.00, 180, "Positivo", 2014);
    
    SELECT * FROM produtos;
    SELECT * FROM produtos WHERE Preco < 500;
	SELECT * FROM produtos WHERE Preco > 500;

	UPDATE produtos SET Preco = 1850 WHERE id = 2;
		
    



