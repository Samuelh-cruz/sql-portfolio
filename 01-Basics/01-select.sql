/*
=====================================================
Topic: SELECT
Difficulty: Beginner
Database: PostgreSQL
Author: Samuel Cruz
=====================================================

Description:
Return the customer's ID, creation date, and last update date.

Concepts:
- SELECT
- FROM
- LIMIT
=====================================================
*/

SELECT
    idCliente,
    DtCriacao,
    DtAtualizacao
FROM clientes
LIMIT 10;
