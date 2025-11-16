-- MIN MAX SUM AVG

-- Funções de agregação no SQL.
-- Funções de agregação basicamente agregam ou combinam dados de uma tabela em um 1 resultado só.

-- SINTAXE
-- Soma o valor de todos os produtos vendidos
SELECT TOP 10  SUM(linetotal)
FROM Sales.SalesOrderDetail

-- Para encontrar o menor valor dentro da tabela
SELECT TOP 10 MIN(linetotal) AS "Valor Mínimo"
FROM Sales.SalesOrderDetail

-- Para encontrar o maior valor dentro da tabela
SELECT TOP 10 MAX(linetotal) AS "Valor Máximo"
FROM Sales.SalesOrderDetail

-- Para saber a média dos valores dentro da tabela
SELECT TOP 10 AVG(linetotal) AS "Média"
FROM Sales.SalesOrderDetail