/*
=========================================================
Topic: ORDER BY
Difficulty: Beginner

Description:
The ORDER BY clause is used to sort the result set in
ascending or descending order.

Concepts covered:
- ORDER BY
- DESC
=========================================================
*/

-- Retrieve customers ordered by their points from the
-- highest to the lowest.

SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos BETWEEN 0 AND 500 THEN 'Estagiario'
        WHEN QtdePontos BETWEEN 501 AND 1000 THEN 'Junior'
        WHEN QtdePontos BETWEEN 1001 AND 5000 THEN 'Pleno'
        WHEN QtdePontos BETWEEN 5001 AND 10000 THEN 'Senior'
        ELSE 'Especialista'
    END AS Nivel
FROM clientes
ORDER BY QtdePontos DESC;

/*
---------------------------------------------------------
Explanation

The ORDER BY clause sorts the records returned by the
query.

Using DESC sorts the values in descending order, meaning
the customers with the highest number of points appear
first.

In this example, the CASE expression is only used to
classify customers into different levels, while ORDER BY
is responsible for organizing the final result.
*/
