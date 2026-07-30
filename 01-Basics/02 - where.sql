/*
=========================================================
Topic: WHERE
Difficulty: Beginner

Description:
The WHERE clause is used to filter records based on one
or more conditions.

Concepts covered:
- WHERE
- IN
=========================================================
*/

-- Retrieve all products whose names match one of the
-- specified values.

SELECT *
FROM produtos
WHERE descNomeProduto IN (
    'Churn_10pp',
    'Churn_2pp',
    'Churn_5pp'
);

/*
---------------------------------------------------------
Explanation

The WHERE clause filters the records returned by the
query.

The IN operator allows you to compare a column against
multiple values without writing multiple OR conditions.

Instead of:

WHERE descNomeProduto = 'Chrun_10pp'
   OR descNomeProduto = 'Churn_2pp'
   OR descNomeProduto = 'Churn_5pp'

You can simply write:

WHERE descNomeProduto IN (
    'Churn_10pp',
    'Churn_2pp',
    'Churn_5pp'
)
*/
