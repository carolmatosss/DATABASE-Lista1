CREATE DATABASE DB_FARMACIA_BEM_ESTAR;
USE DB_FARMACIA_BEM_ESTAR;

        -- CRIANDO TABELA DE CATEGORIAS
CREATE TABLE TB_CATEGORIAS(
ID BIGINT (5) AUTO_INCREMENT,
TIPO VARCHAR (255),
FORMATO VARCHAR (255),
PRIMARY KEY(ID)
);

       -- CRIADO TABELA DE PRODUTOS
CREATE TABLE TB_PRODUTOS(
ID BIGINT (8) AUTO_INCREMENT,
NOME VARCHAR (255),
MARCA VARCHAR (255),
VALOR DECIMAL (6,2),
CATEGORIAS_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS (ID) -- REFERENCIANDO
);

-- POPULANDO TB_CATEGORIAS
INSERT INTO TB_CATEGORIAS(TIPO, FORMATO)
VALUES("ANTI-INFLAMATÓRIO", "COMPRIMIDO");
INSERT INTO TB_CATEGORIAS(TIPO, FORMATO)
VALUES("ANTI-INFLAMATÓRIO", "LÍQUIDO");
INSERT INTO TB_CATEGORIAS(TIPO, FORMATO)
VALUES("COSMÉTICO", "CREME");
INSERT INTO TB_CATEGORIAS(TIPO, FORMATO)
VALUES("COSMÉTICO", "POMADA");
INSERT INTO TB_CATEGORIAS(TIPO, FORMATO)
VALUES("XAROPE", "LÍQUIDO");

SELECT * FROM TB_CATEGORIAS;

-- POPULANDO TB_PRODUTOS
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("ANTICNASE", "ACHE", 134.67, 4);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("PARACETAMOL", "NEOQUI", 25.82, 1);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("MARACUGINA", "ACHE", 56.34, 5);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("RUGANOL", "LAROCHE", 237.67, 3);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("TYLENOL", "ACHE", 14.77, 1);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("GENERICOL", "BASF", 10.98, 1);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("HIDARATABEM", "ACHE", 90.87, 3);
INSERT INTO TB_PRODUTOS (NOME,MARCA, VALOR, CATEGORIAS_ID)
VALUES ("MELBOM", "GENER", 56, 5);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE 50<VALOR;
SELECT * FROM TB_PRODUTOS WHERE NOT 50<VALOR;

SELECT NOME,MARCA,VALOR, TIPO, FORMATO FROM TB_PRODUTOS INNER JOIN 
TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID=TB_CATEGORIAS.ID;

SELECT NOME,MARCA,VALOR, TIPO, FORMATO FROM TB_PRODUTOS INNER JOIN 
TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID=TB_CATEGORIAS.ID 
WHERE CATEGORIAS_ID= 5;

SELECT * FROM TB_PRODUTOS LEFT JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID;
