-- IN

-- Nós usamos o operador IN junto com o operador WHERE para verificar se um valor corresponde com qualquer valor passado na lista de valores.

-- Para encontrar valores específicos na tabela:
-- Buscando os usuários com IDs 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

-- Buscando todos os IDs excetos 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13)