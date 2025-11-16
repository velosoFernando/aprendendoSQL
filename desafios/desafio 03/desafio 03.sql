-- DESAFIO 1

-- A equipe de produção de produtos precisa do nome de todas as peças que pesam mais de 500kg, mas não mais do que 700kg para inspeção!
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700
-- (ver imagem 1)

--<-->--

-- DESAFIO 2

-- A equipe de marketing solicitou de todos os empregados que são casados e são assalariados.
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = '0'
-- (ver imagem 2)

--<-->--

-- DESAFIO 3

-- Um usuário chamado Peter Krebs está devendo um pagamento, consiga o e-mail dele para que posamos enviar uma cobrança!

-- Primeiro seleciono o nome do usuário para conseguir o BusinessEntityID
SELECT *
FROM Person.Person
Where FirstName = 'Peter' and LastName = 'Krebs';

-- ID = 26

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = '26'

-- (Ver imagem 3)