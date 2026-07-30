-- 1. Lista de transações com apenas 1 ponto;

SELECT IdTransacao, QtdePontos

FROM transacoes

WHERE QtdePontos = 1

-- 2. Lista de pedidos realizados no fim de semana;

SELECT IdTransacao, 
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao,1,19)))

FROM transacoes

WHERE strftime('%w', datetime(substr(DtCriacao,1,19))) IN ('6','0')


-- 3. Lista de clientes com 0 (zero) pontos;

SELECT * 

FROM clientes

WHERE QtdePontos = 0 


-- 4. Lista de clientes com 100 a 200 pontos (inclusive ambos);

SELECT * 

FROM clientes

WHERE QtdePontos >= 100 AND QtdePontos <= 200

-- Da pra usar o BETWEEN mas prefiro especificar as regras


-- 5. Lista de produtos com nome que começa com “Venda de”;

SELECT * FROM produtos
 
WHERE DescNomeProduto LIKE "Venda de%"


-- 6. Lista de produtos com nome que termina com “Lover”;

SELECT * FROM produtos
 
WHERE DescNomeProduto LIKE "%Lover"


-- 7. Lista de produtos que são “chapéu”;

SELECT *

FROM produtos

WHERE DescNomeProduto LIKE "%Chapéu%"


-- 8. Lista de transações com o produto “Resgatar Ponei”;


SELECT *

FROM transacao_produto

WHERE IdProduto = 15
