-- BETWEEN

-- O Between é usado para encontrar um valor ENTRE um valor mínimo e um valior máximo.

-- valor BETWEEN mínimo and máximo

-- Nesse caso seria um valor entre 5 e 10

-- Valor >= mínimo AND valor <= máximo

-- SINTAXE

-- Pesquisando um valor entre 1000 e 1500
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500

-- Pesquisando valores que não estão entre 1000 e 1500
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500

-- Pesquisando funcionários contratados entre um período e outro
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' 

-- Pesquisando e ordenando
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate

