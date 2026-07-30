/*
=========================================================
Topic: FROM
Difficulty: Beginner

Description:
The FROM clause specifies the table from which the data
will be retrieved.

Concepts covered:
- FROM
=========================================================
*/

-- Retrieve all columns from the "produtos" table

SELECT *
FROM produtos;

-- FROM can be combined with other SQL clauses,
-- such as WHERE, ORDER BY and LIMIT.

SELECT *
FROM produtos
WHERE DescCategoriaProduto = 'espada'
LIMIT 5;

/*
---------------------------------------------------------
Explanation

The FROM clause tells SQL where the data comes from.

In this example, the data is retrieved from the
"produtos" table.

Without FROM, SQL would not know which table should
be queried.
*/
