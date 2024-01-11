CREATE TABLE livro(
    ISBN CHAR(16),
    titulo_livro VARCHAR(80),
    autor_livro VARCHAR(35),
    autor_sexo CHAR(1),
    pagina_livro VARCHAR(6),
    editora_livro VARCHAR(35),
    ano_publicacao CHAR(4),
    estado_livro CHAR(2),
    preco_livro DOUBLE
);

INSERT INTO LIVROS VALUES('12345678901', 'Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS VALUES('19876543219','SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('91234567891','Receitas Caseiras','Celia Tavares','F',210,'Atlas',45.05,'RJ',2008);
INSERT INTO LIVROS VALUES('59123456789','Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO LIVROS VALUES('31234567890','Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO LIVROS VALUES('49123589071','A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('53467123456','Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS VALUES('69128975234','Pra sempre amigas','Leda Silva','F',510,'Insignia',78.16,'ES',2011);
INSERT INTO LIVROS VALUES('57193495189','Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS VALUES('87642345678','O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);