-- ==============================================
-- SQLZoo | SELECT from World
-- ==============================================

-- Exercício 1 - Introduction
-- Retorna nome, continente e população de todos os países

SELECT
    name,
    continent,
    population
FROM
    world;

-- Exercício 2 - Large Countries
-- Retorna o nome dos países com população acima de 200 milhões

SELECT
    name
FROM
    world
WHERE
    population >= 200000000;

-- Exercício 3 - Per Capita GDP
-- Retorna o nome e o PIB per capita dos países
-- com população acima de 200 milhões

SELECT
    name,
    GDP / population AS pib
FROM
    world
WHERE
    population >= 200000000;

-- Exercício 4 - População em Milhões (South America)
-- Objetivo: Retornar o nome e a população em milhões para os países da América do Sul.
-- Regra de negócio: Dividir a população por 1.000.000 para converter habitantes em milhões.
--
-- NOTA TÉCNICA (Analista de Dados):
-- No MySQL e em outros bancos relacionais, podemos usar notação científica (1e6) 
-- para representar 1.000.000 (1 milhão) e evitar erros ao digitar muitos zeros.
-- Exemplo: 1e6 = 1x10^6 (1 milhão) | 1e9 = 1x10^9 (1 bilhão).
-- *Nota de Plataforma:* O SQLZoo exige os zeros explícitos (1000000) para validar a resposta.
-- ==============================================================================

SELECT
    name,
    population / 1000000 AS population_millions
FROM
    world
WHERE
    continent = 'South America';

-- ==============================================================================
-- Exercício 5 - Países Específicos (France, Germany, Italy)
-- Plataforma: SQLZoo (SELECT from World)
--
-- Objetivo: Retornar o nome e a população da França, Alemanha e Itália.
--
-- CONCEITO DE SQL (Filtros Eficientes):
-- Em vez de utilizar múltiplos operadores 'OR' (ex: name = 'France' OR name = 'Germany'),
-- utilizamos o operador 'IN (...)'. Ele verifica se o valor da coluna pertence a uma 
-- lista de valores, tornando o código mais limpo, legível e performático.
-- ==============================================================================

SELECT 
    name,
    population
FROM 
    world
WHERE 
    name IN ('France', 'Germany', 'Italy');










