/*QUANTIDADE DE PEÇAS NO ESTOQUE AGRUPADO PELO NOME DO FABRICANTE*/
SELECT 
	t2.nome_fabricante,
    SUM(t1.estoque_atual) AS QUANTIDADE
FROM
	pecas t1
JOIN
	fabricantes t2 ON (t1.id_fabricante = t2.id_fabricante)
GROUP BY 
	t2.nome_fabricante;

/*QUANTIDADE DE CADA PEÇAS NO ESTOQUE*/
SELECT 
	nome_peca AS NOME, 
    SUM(estoque_atual) AS QUANTIDADE 
FROM 
	pecas 
GROUP BY 
	nome_peca;
    
/*A PEÇA QUE TEM MAIOR QUANTIDADE NO ESTOQUE*/ 
SELECT
    t1.nome_peca,
    t2.nome_fabricante,
    t1.estoque_atual
FROM pecas t1
INNER JOIN fabricantes t2
    ON t1.id_fabricante = t2.id_fabricante
WHERE t1.estoque_atual = (
    SELECT MAX(estoque_atual)
    FROM pecas
);

/*A PEÇA QUE TEM MENOR QUANTIDADE NO ESTOQUE*/ 
SELECT
    t1.nome_peca,
    t2.nome_fabricante,
    t1.estoque_atual
FROM pecas t1
INNER JOIN fabricantes t2
    ON t1.id_fabricante = t2.id_fabricante
WHERE t1.estoque_atual = (
    SELECT MIN(estoque_atual)
    FROM pecas
);

SELECT nome_peca, estoque_atual FROM pecas WHERE estoque_atual <10;

/*PREÇO MEDIO POR FABRICANTE*/
SELECT 
	t2.nome_fabricante AS NOME_FABRICANTE,
    ROUND(AVG(t1.preco_venda),2) AS MEDIA_PRECO
 FROM 
	pecas t1
JOIN 
	fabricantes t2 ON (t1.id_fabricante = t2.id_fabricante)
GROUP BY
	t2.nome_fabricante;
 

/*QUANTIDADE DE VEICULOS COMPATIVEIS COM CADA PEÇA*/
SELECT 
	t2.nome_peca AS PEÇA,
    t3.nome_fabricante,
    COUNT(t1.id_veiculo) AS QTD_VEICULO
FROM 
	compatibilidade t1
JOIN 
	pecas t2 ON (t1.id_peca = t2.id_peca)
JOIN
	fabricantes t3 ON (t2.id_fabricante = t3.id_fabricante)
GROUP BY
	t2.nome_peca,
    t3.nome_fabricante;

/*AGRUPAMENTO DAS PEÇAS VENDIDAS COM TOTAL DE FATURAMENTO*/
SELECT
    t3.nome_peca AS NOME, 
    t4.nome_fabricante AS FABRICANTE,
    SUM(t1.valor_total) AS FATURAMENTO 
FROM 
    PEDIDOS t1 
JOIN 
    itens_pedido t2 ON (t1.id_pedido = t2.id_pedido) 
JOIN
	pecas t3 ON (t2.id_peca = t3.id_peca)
JOIN
	fabricantes t4 ON (t3.id_fabricante = t4.id_fabricante)
GROUP BY 
    t3.nome_peca,
    t4.nome_fabricante;
    
    
/*A PEÇA QUE TEM MAIOR PREÇO NO ESTOQUE*/ 
SELECT
    t1.nome_peca,
    t2.nome_fabricante,
    t1.preco_venda
FROM pecas t1
INNER JOIN fabricantes t2
    ON t1.id_fabricante = t2.id_fabricante
WHERE t1.preco_venda = (
    SELECT MAX(preco_venda)
    FROM pecas
);

/*A PEÇA QUE TEM MENOR PREÇO NO ESTOQUE*/ 
SELECT
    t1.nome_peca,
    t2.nome_fabricante,
    t1.preco_venda
FROM pecas t1
INNER JOIN fabricantes t2
    ON t1.id_fabricante = t2.id_fabricante
WHERE t1.preco_venda = (
    SELECT MIN(preco_venda)
    FROM pecas
);


/*AGRUPAMENTO DAS PEÇAS VENDIDAS COM TOTAL DE QUANTIDADE VENDIDAS*/
SELECT
    t2.nome_peca AS NOME, 
    t3.nome_fabricante AS FABRICANTE,
    SUM(t1.quantidade) AS QUANTIDADE 
FROM 
    itens_pedido t1 
JOIN 
    pecas t2 ON (t1.id_peca = t2.id_peca) 
JOIN
	fabricantes t3 ON (t2.id_fabricante = t3.id_fabricante)
GROUP BY 
    t2.nome_peca,
    t3.nome_fabricante;

/*VALOR MEDIO GASTO POR CLIENTE*/
SELECT 
	t2.nome AS NOME,
    ROUND(AVG(t1.valor_total),2) AS GASTO_MEDIO
FROM
	pedidos t1
JOIN 
	clientes t2 ON (t1.id_cliente = t2.id_cliente)
GROUP BY 
	t2.nome;

/*QUANTIDADE DE PEDIDOS REALIZADOS AGRUPADOS PELO NOME DO CLIENTE*/
SELECT  
	t2.nome AS CLIENTE, 
    COUNT(t1.id_cliente) AS QTD 
FROM 
	PEDIDOS t1
JOIN 
	clientes t2 ON (t1.id_cliente = t2.id_cliente) 
GROUP BY 
	t2.nome;
    

SELECT SUM(valor_total) AS FATURAMENTO FROM pedidos;