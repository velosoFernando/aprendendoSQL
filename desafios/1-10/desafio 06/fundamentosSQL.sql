-- DESAFIO FUNDAMENTOS DO SQL
-- Resumo das aulas 00 até 10.

-- DESAFIO 01
-- Quantos produtos temos cadastrados no sistema que custam mais que 1500 dólares?
-- R: 39 (ver imagem 1)
SELECT COUNT (*)
FROM Production.Product
WHERE ListPrice > '1500'

--<-->--

-- DESAFIO 02
-- Quantas pessoas temos com o nome que inicia com a letra P?
-- R: 347 (ver imagem 2)
SELECT COUNT(*)
FROM Person.Person
WHERE FirstName like 'P%'

--<-->--

-- DESAFIO 03 
-- Em quantas cidade únicas estão cadastrados os nossos clientes?
-- R: 575 (ver imagem 3)
SELECT COUNT(DISTINCT City)
FROM Person.Address

-- DESAFIO 04 
-- Quais são as cidades únicas que estão cadastradas em nosso sistema?
-- R: Resposta está na pasta query
SELECT DISTINCT City
FROM Person.Address

-- DESAFIO 05
-- Quantos produtos vermelhos tem preço entre 500 e 1000 dólares?
-- R: 11 (ver imagem 4)
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'Red'
AND ListPrice > '500' and ListPrice < '1000'

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'RED'
AND ListPrice BETWEEN '500' AND '1000'

-- DESAFIO 06
-- Quantos produtos cadastrados tem a palavra 'ROAD' no nome?
-- R: 103 (ver imagem 5)
SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%'