CREATE DATABASE DB_GAME_GENERATION;
USE DB_GAME_GENERATION;

CREATE TABLE TB_CLASSES(
ID BIGINT (5) AUTO_INCREMENT,
POSICAO VARCHAR (100),
CLASSIFICACAO VARCHAR (100),
PRIMARY KEY (ID)
);

CREATE TABLE TB_PERSONAGENS(
ID BIGINT (8) AUTO_INCREMENT,
NOME VARCHAR (255),
MASCOTE VARCHAR (255),
ARMA VARCHAR (255),
PODER BIGINT,
CLASSES_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CLASSES_ID) REFERENCES TB_CLASSES (ID)
);

-- Tabela Classses
INSERT INTO TB_CLASSES(POSICAO, CLASSIFICACAO)
VALUES ("DIAMANTE", "LÍDER");

SELECT *FROM TB_CLASSES;

SET SQL_SAFE_UPDATE=0;
UPDATE TB_CLASSES SET CLASSIFICACAO="OURO" WHERE ID=4;

-- Tabela Personagens
INSERT INTO TB_PERSONAGENS(NOME, MASCOTE, ARMA, PODER, CLASSES_ID)
VALUES ("ARTEMIS", "ONÇA", "MACHADO", 456,5);

SELECT * FROM TB_PERSONAGENS;
 UPDATE TB_PERSONAGENS SET CLASSES_ID=3 WHERE ID=8;
 -- SELECTS
SELECT * FROM TB_PERSONAGENS WHERE PODER>200;
SELECT * FROM TB_PERSONAGENS WHERE 100<PODER AND PODER<200;

SELECT * FROM TB_PERSONAGENS WHERE NOME LIKE "%A%";

SELECT NOME,POSICAO FROM TB_PERSONAGENS 
INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID;

SELECT NOME,POSICAO FROM TB_PERSONAGENS 
INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID;

SELECT NOME,POSICAO, CLASSIFICACAO FROM TB_PERSONAGENS 
INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID WHERE CLASSES_ID=4;


  
 