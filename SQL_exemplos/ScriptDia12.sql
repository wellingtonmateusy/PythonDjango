CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(40) NOT NULL,
    idade_cliente INT(2) NOT NULL,
    sexo_cliente CHAR(1) NOT NULL,
    cpf_cliente CHAR(14) NOT NULL,
    email_cliente VARCHAR(50)
);

INSERT INTO cliente VALUES(NULL, 'JOSE', 67, 'M', '345.123.567-23', NULL);

INSERT INTO cliente VALUES(9, 'JOSEFA', 53, 'F', '390.523.267-03', NULL);

INSERT INTO cliente VALUES(NULL, 'MARIA JOSEFA', 21, 'F', '008.523.167-93', 'mar_j@gmail.com');

INSERT INTO CLIENTE VALUES(NULL,'JOAO', 45, 'M','76567587887','JOAOA@IG.COM');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS', 38, 'M','5464553466','CARLOSA@IG.COM');
INSERT INTO CLIENTE VALUES(NULL,'ANA',31, 'F','456545678','ANA@IG.COM');
INSERT INTO CLIENTE VALUES(NULL,'CLARA',60,'F','5687766856',NULL);
INSERT INTO CLIENTE VALUES(NULL,'JORGE',28, 'M','8756547688','JORGE@IG.COM');
INSERT INTO CLIENTE VALUES(NULL,'CELIA',57, 'M','5767876889','JCELIA@IG.COM');

-- contar quantos clientes de cada sexo existem na tabela
SELECT
    sexo, count(sexo) AS qntd
FROM
    cliente
GROUP BY
    sexo;

-- contar quantos livros tem cada estado na tabela
SELECT
    uf, count(uf) as qtd
FROM
    exrc_livro
GROUP BY
    uf;

-- fazer uma média com o preço de cada livro por estado
SELECT
    uf, AVG(preco)
FROM
    exrc_livro
GROUP BY
    uf;