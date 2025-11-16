-- DESAFIO 01

-- Descubra quantos produtos temos cadastrados em nossa tabela de produtos (production.product)

-- 504 Produtos (ver imagem 1)
SELECT COUNT(*)
FROM Production.Product

--<-->--

-- DESAFIO 02 

-- Descubra quantos tamanhos de produtos temos cadastrados em nossa tabela de produtos (production.product)
-- Tenho a tabela size!
-- 211 tamanhos cadastrados (ver imagem 2)
SELECT COUNT(Size)
FROM Production.Product


-- DESAFIO 03 

-- Descubra quantos tamanhos diferentes de produtos temos cadastrado em nossa tabela (production.product)
-- 18 produtos com tamanhos diferentes
SELECT COUNT(DISTINCT Size)
FROM Production.Product