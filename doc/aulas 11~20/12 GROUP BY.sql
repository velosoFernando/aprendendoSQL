-- INTERMEDIÁRIO

-- O GROUP BY divide o resultado da sua pesquisa em grupos

-- EXEMPLO
-- Para cada grupo que você pode aplicar uma função de de agregação:
    -- calcular a soma dos itens;
    -- contar o número de itens naquele grupo.

-- SINTAXE
-- É possível agregar por colunas ou função
SELECT coluna1,funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1

-- NECESSÁRIO VER IMAGEM 10

SELECT SpecialOfferID, SUM(unitprice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- O que foi feito?
-- Selecionei o ID da oferta especial e pedi a soma do preço. Então se eu tenho 10 produtos dentro do ID 9 no valor de 10 reais, ID 9 = 100 reais. Além disso ele dá nome a essa nova coluna (que não existia)

-- EXEMPLO: Quero saber quantos de cada produto foi vendido até hoje!

-- Para puxar a lista de vendas, achei as colunas OrderQty (que traz a quantidade de produtos vendidos) e a ProductID (que traz o id dos produtos)
SELECT *
FROM Sales.SalesOrderDetail

-- Peço para somar a quantidade de todos os itens por ID
SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Para contar cada um dos nomes no banco de dados
SELECT FirstName, COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName

-- Saber a média de preço dos produtos que são pratas na tabela production.product
-- (Ver imagem 11)
SELECT color, AVG(ListPrice)
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color
