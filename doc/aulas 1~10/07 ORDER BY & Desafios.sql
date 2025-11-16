-- ORDER BY

-- Permite a ordenação de uma coluna por odem crescente ou decrescente.

--SINTAXE

SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1 asc/desc

-- MÃO NO CÓDIGO
-- Traz os nomes de ordem descrecentes, ou seja de A - Z (ver imagem 8)
SELECT *
FROM Person.Person
ORDER BY FirstName asc
-- Traz os nomes de ordem descrecentes, ou seja de Z - A
SELECT *
FROM Person.Person
ORDER BY FirstName desc

