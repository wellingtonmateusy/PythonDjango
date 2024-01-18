-- HAVING

-- Ex.1 Listar o número de funcionários de cada setor.
-- Incluir apenas setores que possuam mais de 1
-- funcionários.

SELECT 
    departamento, COUNT(idFuncionario)
FROM
    funcionarios
GROUP BY
    departamento
HAVING
    COUNT(idFuncionario) > 2;

-- Ex. 2: Retornar o numero de clientes em cada
-- cidade, ordenando do maior resultsdo para o menor.
-- Incluir apenas cidades com mais de 2 clientes.

SELECT 
    COUNT(idCliente), cidade
FROM
    endereco
GROUP by 
    cidade
HAVING
    COUNT(idCliente) > 1
ORDER BY
    COUNT(idCliente) ASC; --ASC - Crescente --DESC - Decrescente

-- BETWEEN

-- Ex. 1: Retornar o nome do cliente, rua e estado
-- dos registro que estão entre o estado 'PR' e 'RS'

SELECT 
    nome_cliente AS Cliente, rua, estado 
FROM
    cliente C
INNER JOIN
    endereco E
ON
    C.id_cliente = E.idCliente
WHERE   
    estado BETWEEN 'PR' AND 'RS';


-- Ex. 2: Mostrar apenas clientes com IDs entre 10 e 15.

SELECT 
    id_cliente, nome_cliente, email_cliente
FROM
    cliente
WHERE
    id_cliente BETWEEN 10 AND 15;

-- Ex. 3: Mostrar apenas clientes com IDs entre 10 e 15,
-- com as seguintes idades: 31, 38, 45.

SELECT 
    id_cliente, nome_cliente, idade_cliente, email_cliente
FROM
    cliente
WHERE
    id_cliente BETWEEN 10 AND 15
AND 
    idade_cliente IN(31, 38, 45);

-- Ex. 4: Mostrar apenas clientes com IDs entre 10 e 15,
-- com idades entre 31 e 45.

SELECT 
    id_cliente, nome_cliente, idade_cliente, email_cliente
FROM
    cliente
WHERE
    id_cliente BETWEEN 10 AND 15
AND
    idade_cliente IN(SELECT 
                        idade_cliente 
                    FROM 
                        cliente 
                    BETWEEN 
                        31 and 45);

