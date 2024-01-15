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