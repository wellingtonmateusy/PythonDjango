CREATE TABLE cliente (
    id_cliente INTEGER(4) PRIMARY KEY,
    nome_cliente VARCHAR(80),
    idade_cliente INTEGER(2),
    sexo_cliente CHARACTER(1),
    cpf_cliente_ VARCHAR(14),
    email_cliente VARCHAR(30),
    carro INTEGER(4)
);

CREATE TABLE carro (
    id_carro INTEGER(4) PRIMARY KEY,
    marca VARCHAR(20),
    modelo VARCHAR(20),
    motor VARCHAR(10),
    cor VARCHAR(20),
    acessorios VARCHAR(30)
);

ALTER TABLE cliente ADD CONSTRAINT FK_cliente_2
    FOREIGN KEY (carro)
    REFERENCES carro (id_carro);


CREATE table endereco(
    id_endereco INT(5) PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(40) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    estado CHAR(2) NOT NULL,
    idcliente INT UNIQUE NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE telefone(
    id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    tipo_telefone ENUM('RES', 'COM', 'CEL'),
    numero_telefone VARCHAR(15),
    idcliente INT,
    FOREIGN KEY (idcliente) REFERENCES cliente (id_cliente)
);

INSERT INTO ENDERECO VALUES
    (NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9),
    (NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10),
    (NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11),
    (NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12),
    (NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13),
    (NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14),
    (NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15),
    (NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16),
    (NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17),
    (NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18),
    (NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19),
    (NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20),
    (NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

INSERT INTO TELEFONE VALUES
    (NULL,'CEL','78458743',7),
    (NULL,'RES','56576876',15),
    (NULL,'CEL','87866896',1),
    (NULL,'COM','54768899',12),
    (NULL,'RES','99667587',13),
    (NULL,'CEL','78989765',15),
    (NULL,'CEL','99766676',13),
    (NULL,'COM','66687899',11),
    (NULL,'RES','89986668',15),
    (NULL,'CEL','88687909',12);


SELECT 34 + 67 AS soma, SELECT 34 + 67 AS soma, nome_cliente, NOW() AS

SELECT nome_cliente, sexo_cliente, email_cliente /*PROJEÇÃO*/
FROM cliente /*ORIGEM*/
WHERE sexo_cliente LIKE 'F'; /*SELEÇÃO*/

SELECT numero_telefone /*PROJEÇÃO*/
FROM telefone /*ORIGEM*/
WHERE tipo_telefone LIKE 'CEL'; /*SELEÇÃO*/

SELECT nome_cliente, sexo_cliente, bairro, cidade
FROM cliente, endereco
WHERE id_cliente = idcliente

SELECT
    C.nome_cliente AS Nome,
    C.sexo_cliente AS Sexo,
    E.bairro, E.cidade
FROM
    cliente C, endereco E
WHERE
    C.id_cliente = E.idcliente;

SELECT 
    C.nome_cliente, 
    C.email_cliente, 
    E.rua, 
    E.bairro, 
    T.numero_telefone, 
    T.tipo_telefone
FROM
    cliente C
INNER JOIN 
    endereco E
ON 
    C.id_cliente = E.idcliente
INNER JOIN
    telefone T
ON
    C.id_cliente = T.idcliente
WHERE
    T.tipo_telefone LIKE 'COM';