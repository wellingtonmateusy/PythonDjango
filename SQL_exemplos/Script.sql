CREATE TABLE cliente(
	id INT,
    nome VARCHAR(80),
    matricula INT,
    turno CHAR
);

DESC cliente;

DROP TABLE cliente;


CREATE TABLE cliente (
    id BIGINT, 
    idade BIGINT, 
    sexo CHAR, 
    dependentes INT, 
    escolaridade VARCHAR(20), 
    tipo_cartao VARCHAR(10), 
    limite_credito DOUBLE, 
    valor_transacoes_12m DOUBLE, 
    qtd_transacoes_12m BIGINT
);

INSERT INTO();

CREATE TABLE consumidor (
    nome VARCHAR(50),
    sexo CHAR(1),
    email VARCHAR(50),
    cpf VARCHAR(14),
    fone VARCHAR(20),
    endereco VARCHAR(100)
);

INSERT INTO consumidor VALUES
    ('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'),
    ('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ'),
    ('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG'),
    ('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
    ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

INSERT INTO consumidor(NOME,SEXO,ENDERECO,FONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

SELECT nome AS consumidor, sexo, email AS 'e-mail', NOW() AS 'DATA E HORA' FROM consumidor;

SELECT NOME, SEXO, CPF FROM consumidor WHERE sexo = 'M';

SELECT 
    NOME, SEXO, CPF 
FROM 
    consumidor 
WHERE 
    endereco LIKE '%RJ';

SELECT 
    NOME, ENDERECO 
FROM 
    consumidor 
WHERE 
    endereco LIKE '%CENTRO%';
