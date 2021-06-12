SELECT * FROM [TABELA DE PRODUTOS]

SELECT [NOME DO PRODUTO],
CASE WHEN [PRE�O DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRE�O DE LISTA] >= 7 AND [PRE�O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END
FROM [TABELA DE PRODUTOS]

SELECT [NOME DO PRODUTO],
CASE WHEN [PRE�O DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRE�O DE LISTA] >= 7 AND [PRE�O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END,
AVG([PRE�O DE LISTA])
FROM [TABELA DE PRODUTOS]
GROUP BY [NOME DO PRODUTO],
CASE WHEN [PRE�O DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRE�O DE LISTA] >= 7 AND [PRE�O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END

SELECT YEAR(DATA), COUNT(*) AS 'NFS POR ANO' FROM [NOTAS FISCAIS] GROUP BY YEAR(DATA)
ORDER BY YEAR(DATA)

SELECT CPF, 
CASE WHEN [PRIMEIRA COMPRA]  = 1 THEN 'J� � CLIENTE' 
	 ELSE 'PROSPECTAR' END AS 'COMPROU/N�O COMPROU'
FROM [dbo].[TABELA DE CLIENTES]
ORDER BY 'COMPROU/N�O COMPROU' DESC


SELECT NOME, [DATA DE NASCIMENTO],
	CASE 
	WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'ADULTO'
	WHEN YEAR([DATA DE NASCIMENTO]) BETWEEN 1990 AND 1995 THEN 'JOVEM'
	ELSE 'CRIAN�A' END AS 'CLASSIFICA��O'
FROM[dbo].[TABELA DE CLIENTES]
ORDER BY YEAR([DATA DE NASCIMENTO])