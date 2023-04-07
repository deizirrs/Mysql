CREATE DATABASE exercicio3;

CREATE TABLE  estudantes(
id bigint auto_increment,
Nome varchar (255) not null,
Sobrenome varchar (255) not null,
idade int,
Sexo varchar (255) not null,
Turma int,
Curso varchar (255) not null,
Nota int,
PRIMARY KEY (id)
);

INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Andressa", "Rodrigues", "Feminino",26, 68, "Java Full Stack", 10);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Jamile", "Farias", "Feminino",18, 68, "Java Full Stack", 8);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Deiziane", "Rodrigues", "Feminino",21, 62, "Java", 8);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Heimy", "Farias", "Feminino",19, 62, "Java", 9);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Ingrid", "Padilha", "Feminino",22, 64, "Java Script", 8);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
  values ("Bianca", "Luna", "Feminino",26, 61, "SQL", 7);
  
INSERT INTO estudantes (Nome, Sobrenome,idade, Sexo, Turma, Curso, Nota)
 values ("Camille", "Bueno", "Feminino",19, 66, "PHP", 9);
 
 SELECT * FROM estudantes;
  SELECT * FROM estudantes WHERE Nota > 7;
  SELECT * FROM estudantes WHERE Nota < 7;
  
  UPDATE estudantes SET Nota = 9 WHERE id =1;
  
 
 
 
 
    



