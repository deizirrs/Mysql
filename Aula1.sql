 -- criar banco
 create database db_quitanda;
 -- deletar banco
 drop database db_quitanda;
 
 -- começar a utilitizar
 use  db_quitanda;
 
 -- criar tabela popular 
 CREATE TABLE tb_produtos (
	 id bigint auto_increment,
	 nome varchar(225) not null,
	 quantidade int,
	 preco decimal not null,
	 primary key (id)
	 );
 
 -- visualizar a tabela
 SELECT*FROM tb_produtos;
 
 -- inserindo dados a  popular tabela
 INSERT INTO tb_produtos(nomedoproduto, quantidade,preco)
	values ("Laranja", 50, 10.00);
    INSERT INTO tb_produtos(nome, quantidade,preco)
	values ("Banana", 200, 12.00);
    INSERT INTO tb_produtos(nome, quantidade,preco)
	values ("Uva", 1200, 30.00);
    INSERT INTO tb_produtos(nome, quantidade,preco)
	values ("Perã", 500, 3.00);
	 
     -- buscar especificas
     select nome, quantidade from tb_produtos;
     
     SELECT * FROM tb_produtos where id =1;
     
     -- <> diferente
     SELECT * FROM tb_produtos where preco > 5.00 and quantidade <100;
     
     -- Desabilitar nossa segurança do sql
     SET SQL_SAFE_UPDATES = 0;
     
     -- atualizar colunas da tabela
     UPDATE tb_produtos SET preco =5.00 WHERE id = 2;
     
     -- deletar itens
     delete from tb_produtos where id =2 or id =1;
     
     -- atualizar coluna
     ALTER TABLE tb_produtos modify preco decimal (6,2);
     
     ALTER TABLE tb_produtos ADD descricao varchar (255);
	-- deletar coluna
    ALTER TABLE tb_produtos DROP descricao;
    -- change = renomear
    ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar (255);
    
    
     
     
     
     
     
 
 
 
 