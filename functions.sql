use mydb;

/* Criação do usuário administrador */

CREATE USER 'adm'@'localhost' IDENTIFIED BY 'anypassword';
GRANT ALL PRIVILEGES ON mydb.* TO 'adm'@'localhost';
FLUSH PRIVILEGES;
SELECT * FROM mysql.user;

/*Fim da criação*/


/* Criação do usuário funcionario */

CREATE ROLE 'perm_funcionario';
GRANT SELECT, INSERT, UPDATE ON mydb.* TO 'perm_funcionario';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'somepass';
GRANT 'perm_funcionario' TO 'funcionario'@'localhost';
FLUSH PRIVILEGES;
SELECT * FROM mysql.user;

/*Fim da criação*/

CREATE VIEW view_usuarios AS SELECT id, nome, email FROM usuario;

SELECT * FROM view_usuarios;


CREATE VIEW view_livros AS SELECT * FROM livro;

SELECT * FROM view_livros;


CREATE VIEW view_qtd_tokens AS SELECT * FROM adicao_tokens;

SELECT * FROM view_qtd_tokens;

DELIMITER //
CREATE TRIGGER livro_lido AFTER INSERT
ON calculo_leitura
FOR EACH ROW
BEGIN
	UPDATE id_calculo
    SET livro_lido = true
    WHERE livro_id = NEW.livro_id;
END//
DELIMITER ;

CREATE INDEX idx_usuario ON usuario(id);
SHOW INDEX FROM usuario;

CREATE INDEX idx_leitura ON calculo_leitura(livro_id);
SHOW INDEX FROM calculo_leitura;

CREATE INDEX idx_tokens ON tokens(id_tokens);
SHOW INDEX FROM tokens;
































