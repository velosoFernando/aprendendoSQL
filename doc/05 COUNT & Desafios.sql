-- COUNT

-- O comando COUNT serve para retornar o número de linhas que bate através de uma condição.

-- SINTAXE

-- Faz a contagem de todas as colunas da tabela.

SELECT COUNT(*)
FROM tabela

-- Caso queira a contagem específica de uma coluna se faz necessário usar o DISTINCT

SELECT COUNT(DISTINCT coluna)
FROM tabela

-- (ver imagem 7)

SELECT COUNT(title)
FROM Person.Person;
-- 1009 títulos diferentes

SELECT COUNT(DISTINCT title)
FROM Person.Person;
-- 6 títulos distintos