-- DESAFIO 01

-- Obter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

-- Fiz uma consulta para encontrar os 10 produtos mais caros e achei a coluna ListPrice (que armazena o valor).

SELECT *
FROM Production.Product

-- Então rodei uma query para ordenar os 10 produtos mais caros dentro da coluna ListPrice

SELECT TOP 10 productId
FROM Production.Product
ORDER BY ListPrice desc

--<-->--

-- DESAFIO 02

-- Obter o nome e número do produto que estão na lista de produtos que possuem o ProductID entre 1~4

-- (ver imagem 2)
SELECT TOP 4 *
FROM Production.Product
ORDER BY ProductID asc

-- Depois seleciono apenas na tabela name o nome desses produtos
SELECT TOP 4 name, productnumber
FROM Production.Product
ORDER BY ProductID asc

