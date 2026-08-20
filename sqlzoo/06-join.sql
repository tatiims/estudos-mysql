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










