-- WHERE

-- A lógica do comando WHERE está atralado a uma condição!

-- OPERADORES LÓGICOS
-- OPERADOR    DESCRIÇÃO
-- =           igual
-- >           maior que
-- <           menor que
-- >=          maior ou igual que
-- <=          menor ou igual que
-- <>          diferente de
-- AND         operador lógico E
-- OR          operador lógico OU

SELECT coluna1,coluna2,coluna3
FROM tabela
WHERE condição;

SELECT * 
FROM person.Person
WHERE LastName = 'Miller'
(ver imagem 06)

-- Também posso aprimorar adicionando outras informações:

SELECT * 
FROM person.Person
WHERE LastName = 'Miller' AND  FirstName = 'Anna';

-- Também é possível pesquisar por um ou outro:

SELECT *
FROM Production.Product
WHERE Color = 'blue' or Color = 'black'

-- Além de usar operadores para encontrar valores:

SELECT *
FROM Production.Product
WHERE ListPrice > '1500'

-- De um valor até outro valor, impondo limites:

SELECT *
FROM Production.Product
WHERE ListPrice > '1500' and ListPrice < '5000'

-- E também buscar produtos que não sejam algo específico!

SELECT *
FROM Production.Product
WHERE color <> 'red'