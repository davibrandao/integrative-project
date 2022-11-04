create database mydb;

use mydb;

create table usuario(
	id int primary key,
	nome varchar(45),
    email varchar(45));
    
create table capitulo_livro(
	usuario_id INT NOT NULL PRIMARY KEY,
    qtd_capitulo_lido INT NOT NULL,
    FOREIGN KEY (usuario_id) references usuario(id)
    );
    
create table livro(
	capitulo_livro_id INT NOT NULL PRIMARY KEY,
    qtd_livro_lido INT NOT NULL,
    FOREIGN KEY (capitulo_livro_id) REFERENCES capitulo_livro(usuario_id)
    );
    
create table calculo_leitura(
	id_calculo_leitura INT PRIMARY KEY,
    livro_id INT PRIMARY KEY,
    id_capitulo_livro INT PRIMARY KEY,
    tempo_lendo INT NOT NULL,
    calculo_livro INT NOT NULL,
    calculo_capitul INT NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES livro(capitulo_livro_id),
    FOREIGN KEY (id_capitulo_livro) REFERENCES capitulo_livro(usuario_id)
    );
    
create table calculo_tokens(
	id INT PRIMARY KEY,
    calculo_leitura_id INT PRIMARY KEY,
    calculo_tokens VARCHAR(45),
    FOREIGN KEY (calculo_leitura_id) REFERENCES calculo_leitura(id_calculo_leitura)
    );
    
create table tokens(
	id_tokens INT PRIMARY KEY
    );
    
create table limite_tokens (
	token_id INT PRIMARY KEY,
    verificacao BOOLEAN NOT NULL,
    FOREIGN KEY (token_id) REFERENCES tokens(id_tokens));
    
create table adicao_tokens(
	id_usuario_adicao INT PRIMARY KEY,
    limite_tokens_id INT PRIMARY KEY,
    FOREIGN KEY (id_usuario_adicao) REFERENCES usuario(id),
    FOREIGN KEY (limite_tokens_id) REFERENCES limite_tokens(verificacao));
    
    
INSERT INTO usuario (nome,email)
VALUES
  ("Macon Witt","arcu.nunc.mauris@outlook.com"),
  ("Fay Norris","dui.quis.accumsan@protonmail.couk"),
  ("Haviva Roberts","metus.eu.erat@icloud.com"),
  ("Price Lyons","diam.duis@icloud.couk"),
  ("Samuel Velez","aliquam.nec.enim@yahoo.ca"),
  ("Camille Glenn","molestie.in.tempus@outlook.net"),
  ("Hedy White","dui@hotmail.org"),
  ("Maisie Hardy","ultrices@outlook.ca"),
  ("Timon Pittman","vestibulum@aol.edu"),
  ("Roth Rice","lobortis.quam@protonmail.org");
INSERT INTO usuario (nome,email)
VALUES
  ("Madonna Mcgee","convallis.convallis.dolor@protonmail.com"),
  ("James Mclaughlin","tellus.id@google.couk"),
  ("Colleen Wilkinson","consectetuer.adipiscing.elit@protonmail.org"),
  ("Brenda Woods","ac.mattis@icloud.ca"),
  ("Kristen Padilla","pharetra.felis.eget@google.ca"),
  ("Daquan Underwood","a.aliquet@google.ca"),
  ("Lynn Gibbs","molestie.sodales.mauris@aol.com"),
  ("Velma Stevens","massa.vestibulum@yahoo.com"),
  ("Dale Guerra","risus.a.ultricies@hotmail.net"),
  ("Zachery Key","aliquet.molestie@google.org");
  
  


    
    
    