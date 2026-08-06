/*
=========================================================
Topic: ORDER BY
Difficulty: Beginner

Description:
The ORDER BY clause is used to sort the result set in
ascending or descending order.

Concepts covered:
- ORDER BY
- ASC
- DESC
=========================================================
*/

-- Retrieve transactions from July 2025 ordered by the
-- creation date, from the most recent to the oldest.

SELECT *
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01'
ORDER BY DtCriacao DESC;

/*
---------------------------------------------------------
Explanation

The ORDER BY clause sorts the records returned by the
query.

By default, SQL sorts data in ascending order (ASC).

Using DESC sorts the records from the highest value to
the lowest.

Example:

ORDER BY DtCriacao DESC

This returns the newest transactions first.
*/
