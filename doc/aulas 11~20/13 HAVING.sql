-- HAVING

-- O having é basicamente com o GROUP BY para filtrar resultados de um agrupamento.

-- De forma mais simples eu gosto de entender ele como um WHERE para dados agrupados.

-- SINTAXE

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING concicao

-- Diferença entre HAVING e WHERE.

-- O HAVING é aplicado depois que os dados já foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agrupados.

-- Vamos dizer que queremos saber quais nomes no sistema tem ocorrência maior que 10 vezes.

SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Queremos saber quais produtos que no total de vendas estão entre 162k e 500k

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000
