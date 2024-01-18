-- 1.3 Questões:
-- Descreva as seguintes consultas usando a Linguagem SQL:
-- 1) Recuperar os nomes de todos os engenheiros, que projetaram obras nas quais o
-- operário João Souza tenha trabalhado em junho de 97:
-- NOME_ENG
-- ------------------------------
-- Carlos Alvarez

SELECT 
    E.nome_eng AS NOME_ENG
FROM 
    engenheiro E
INNER JOIN 
    obra O 
ON 
    E.crea 
LIKE 
    O.cod_eng_resp
INNER JOIN 
    obra_operario OO 
ON 
    O.cod_obra = OO.cod_obra
INNER JOIN 
    operario OP 
ON 
    OO.cart_trab = OP.cart_trab
WHERE 
    OP.nomeop = 'Joao Souza' AND EXTRACT(MONTH FROM OO.data_local) = 6 AND EXTRACT(YEAR FROM OO.data_local) = 1997;

-- 2) Recuperar os nomes dos operários que trabalharam em obras de pelo menos todos os
-- engenheiros da área de Pontes/Viadutos:
-- NOMEOP
-- ------------------------------
-- Paulo Castro

SELECT 
    OP.nomeop AS NOMEOP
FROM 
    operario OP
WHERE NOT EXISTS (
    SELECT 
        E.crea
    FROM 
        engenheiro E
    WHERE 
        E.area_atuacao LIKE 'Pontes/Viadutos'
    AND NOT EXISTS (
        SELECT 1
        FROM 
            obra_operario OOC
        INNER JOIN
            obra O 
        ON 
            OOC.cod_obra LIKE O.cod_obra
        WHERE 
            O.cod_eng_resp LIKE E.crea 
        AND 
            OOC.cart_trab LIKE OP.cart_trab
    )
);

-- 3) Para cada operário que trabalha para mais de uma construtora, recuperar o seu nome
-- e os nomes das construtoras:
-- NOMEOP NOME_CONST
-- -----------------------------
-- Paulo Castro A3
-- Paulo Castro Metaplan
-- Joao Souza Encol
-- Joao Souza Metaplan

SELECT 
    OP.nomeop AS NOMEOP,
    C.nome_const AS NOME_CONST
FROM 
    operario OP
INNER JOIN
    operario_construtora OC 
ON 
    OP.cart_trab = OC.cart_trab
INNER JOIN 
    construtora C 
ON 
    OC.cod_const = C.cod_const
GROUP BY 
    OP.nomeop, C.nome_const
HAVING COUNT(OC.cod_const) = 1;

-- 4) Recuperar os nomes dos operários que trabalham em somente uma construtora:
-- NOMEOP
-- ------------------------------
-- Luis Padilha

SELECT 
    OP.nomeop AS NOMEOP
FROM 
    operario OP
INNER JOIN
    operario_construtora OC 
ON 
    OP.cart_trab 
LIKE 
    OC.cart_trab
GROUP BY 
    OP.nomeop
HAVING COUNT(OC.cod_const) = 1;

-- 5) Recuperar os nomes dos engenheiros que atuam em alguma construtora além da
-- Encol.
-- NOME_ENG
-- ------------------------------
-- Luis Silva

SELECT 
    E.nome_eng AS NOME_ENG
FROM 
    engenheiro E
INNER JOIN
    obra O 
ON 
    E.crea LIKE O.cod_eng_resp
INNER JOIN 
    construtora C 
ON 
    O.cod_const = C.cod_const
WHERE C.nome_const <> 'Encol';

-- 6) Para cada construtora, recuperar o nome da construtora e o número de engenheiros
-- da área de Edificação.
-- NOME_CONST Qtde de Engenheiros
-- ------------------------------
-- A3 1
-- Encol 1
-- Goldzstein 1

SELECT 
    C.nome_const AS NOME_CONST,
    COUNT(E.crea) AS "Qtde de Engenheiros"
FROM
    construtora C
INNER JOIN
    obra O 
ON 
    C.cod_const LIKE O.cod_const
INNER JOIN 
    engenheiro E 
ON 
    O.cod_eng_resp LIKE E.crea
WHERE E.area_atuacao LIKE 'Edificacao'
GROUP BY C.nome_const;

-- 7) Para cada operário da construtora Encol, recuperar o seu número de carteira de
-- trabalho, nome e o número de obras (mesmo não sendo da construtora Encol) nas quais
-- trabalhou no primeiro semestre de 97:
-- CART_TRAB NOMEOP Qtde de Obras
-----------------------------------------------
-- op030 Joao Souza 1

SELECT 
    OP.cart_trab,
    OP.nomeop,
    COUNT(OO.cod_obra) AS "Número de Obras"
FROM 
    operario OP
INNER JOIN obra_operario oo 
ON 
    OP.cart_trab LIKE OO.cart_trab
INNER JOIN 
    obra O 
ON 
    OO.cod_obra = O.cod_obra
WHERE 
    OP.cart_trab 
IN (SELECT cart_trab FROM operario_construtora WHERE cod_const = 'c1')
AND 
    EXTRACT(MONTH FROM OO.data_local)
    BETWEEN 1 AND 6 AND EXTRACT(YEAR FROM OO.data_local) = 1997
GROUP BY OP.cart_trab, OP.nomeop;