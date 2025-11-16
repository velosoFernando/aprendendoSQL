-- LIKE

-- Vamos supor que você queira encontrar uma pessoa no banco de dados, onde você sabe que o nome dela é 'OVI...' mas não sabe o restante.

-- SINTAXE 
-- Procura no primeiro nome o conjunto OVI no nome... (ver imagem 9)
SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%'

-- O % significa que não importa o que vem depois, sejam caracteres do alfabeto, numéricos etc

-- Para encontrar alguém que não se sabe o início do nome basta inverter o % de lugar
SELECT *
FROM Person.Person
WHERE FirstName like '%to'

-- Para encontrar alguém que não se sabe se os itens decorados estão no começo ou no final basta usar o % no início e fim
SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'
