SELECT * FROM [dbo].[TABELA DE CLIENTES]

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO 
HAVING SUM([LIMITE DE CREDITO]) >= 850000

SELECT EMBALAGEM, SUM([PRE?O DE LISTA]) AS 'SOMA DA LISTA', MAX([PRE?O DE LISTA]) AS 'MAIOR PRE?O', MIN([PRE?O DE LISTA]) AS 'MENOR PRE?O' 
FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, MAX([PRE?O DE LISTA]) AS 'MAIOR PRE?O', MIN([PRE?O DE LISTA])AS 'MENOR PRE?O' FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE?O DE LISTA]) <= 80

SELECT EMBALAGEM, MAX([PRE?O DE LISTA]), MIN([PRE?O DE LISTA]) FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE?O DE LISTA]) <= 80 AND MAX([PRE?O DE LISTA]) >= 6

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [dbo].[TABELA DE CLIENTES] GROUP BY ESTADO
HAVING SUM([LIMITE DE CREDITO]) >=850000

