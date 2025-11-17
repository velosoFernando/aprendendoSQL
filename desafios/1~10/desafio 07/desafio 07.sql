-- DESAFIO 01

-- Você quer saber quantas pessoas tem o mesmo MiddleName agrupadas pelo MiddleName
-- R: Na pasta query (arquivo MiddleName)
-- Busquei informações da tabela
SELECT *
FROM Person.Person

-- Busquei pelo nome do meio realizando a conta
SELECT MiddleName, COUNT(MiddleName) AS "Grupo"
FROM Person.Person
GROUP BY MiddleName

-- DESAFIO 02

-- Saber em média qual a quantidade que cada produto é vendido na loja
-- R: Ver arquivo mediaProduto
-- Busquei as informações na tabela
SELECT *
FROM Sales.SalesOrderDetail

-- Puxo a média de produtos por ID
SELECT ProductID, AVG(OrderQty) AS "Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- DESAFIO 04

-- Eu quero saber quais foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior valor para o menor.

-- Puxo informações da tabela
SELECT *
FROM Sales.SalesOrderDetail

-- Devolvo os produtos ordenados de maneira decrescente 
SELECT TOP 10 productid, SUM(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(linetotal) DESC

-- DESAFIO 04

-- Preciso saber quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas ordens de serviço (WorkOrder), agrupados por productID

-- Puxei as informações da tabela, tenho a WorkOrderID e a StockedQty
SELECT *
FROM Production.WorkOrder

SELECT ProductID, COUNT(ProductID) AS "contagem",
AVG(orderqty) AS "media"
FROM Production.WorkOrder
GROUP BY ProductID