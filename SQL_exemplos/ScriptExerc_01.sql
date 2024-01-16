create table funcionarios(
    idFuncionario integer PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100),  
    email varchar(200),
    sexo varchar(10),
    departamento varchar(100),
    admissao varchar(10),
    salario integer,
    cargo varchar(100),
    idRegiao int
);

insert into funcionarios values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores','10/2/2009',67470,'Structural Engineer',2);
insert into funcionarios values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte','3/31/2008',71869,'Financial Advisor',2);
insert into funcionarios values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo','7/12/2009',101768,'Recruiting Manager',3);
insert into funcionarios values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria','12/25/2014',96897,'Desktop Support Technician',3);
insert into funcionarios values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios','9/19/2002',63702,'Software Engineer III',7);
insert into funcionarios values (6,'Phillips','bphillips5@time.com','Masculino','Ferramentas','8/21/2013',118497,'Executive Secretary',1);
insert into funcionarios values (7,'Williamson','rwilliamson6@ted.com','Masculino','Computadores','5/14/2006',65889,'Dental Hygienist',6);
insert into funcionarios values (8,'Harris','aharris7@ucoz.com','Feminino','Brinquedos','8/12/2003',84427,'Safety Technician I',4);
insert into funcionarios values (9,'James','rjames8@prnewswire.com','Masculino','Joalheria','9/7/2005',108657,'Sales Associate',2);
insert into funcionarios values (11,'Jacobs','jjacobsa@sbwire.com','Feminino','Joalheria','11/27/2003',121966,'Community Outreach Specialist',7);
insert into funcionarios values (12,'Black','mblackb@edublogs.org','Masculino','Roupas','2/4/2003',44179,'Data Coordiator',7);
insert into funcionarios values (13,'Schmidt','sschmidtc@state.gov','Masculino','Bebês','10/13/2002',85227,'Compensation Analyst',3);
insert into funcionarios values (14,'Webb','awebbd@baidu.com','Feminino','Computadores','10/22/2006',59763,'Software Test Engineer III',4);
insert into funcionarios values (15,'Jacobs','ajacobse@google.it','Feminino','Games','3/4/2007',141139,'Community Outreach Specialist',7);
insert into funcionarios values (16,'Medina','smedinaf@amazonaws.com','Feminino','Bebês','3/14/2008',106659,'Web Developer III',1);
insert into funcionarios values (17,'Morgan','dmorgang@123-reg.co.uk','Feminino','Crianças','5/4/2011',148952,'Programmer IV',6);
insert into funcionarios values (18,'Nguyen','jnguyenh@google.com','Masculino','Lar','11/3/2014',93804,'Geologist II',5);
insert into funcionarios values (19,'Day','rdayi@chronoengine.com','Masculino','Eletronicos','9/22/2004',109890,'VP Sales',3);

-- 1 - O gestor de marketing pediu a lista das funcionarias (FEMININO que trabalhem no departamento de Joalheria ou no departamento Computadores. Ele necessita enviar um email para as colaboradoras desses dois setores.
-- 2 - Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas.
-- 3 - Traga os funcionarios do sexo masculino que trabalhem no setor Jardim.

SELECT
    nome,
    email,
    departamento
FROM
    funcionarios
WHERE
    sexo LIKE 'Feminino'
AND 
    (departamento = 'Joalheria' OR departamento = 'Computadores');

SELECT *
FROM
    funcionarios
WHERE
    (departamento = 'Filmes' OR departamento = 'Roupas');

SELECT *
FROM
    funcionarios
WHERE
    sexo = 'Masculino' 
AND 
    departamento = 'Jardim';