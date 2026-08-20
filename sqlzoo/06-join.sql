-- Exercício 2 - SELECT from World
-- Retorna o nome do país e o PIB per capita
-- para países com população acima de 200 milhões

SELECT
    name,
    GDP / population AS pib
FROM
    world
WHERE
    population >= 200000000
    
