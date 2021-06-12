select * from [dbo].[TABELA DE CLIENTES]

select CPF
	  ,NOME as 'Nome Cliente'		
from [dbo].[TABELA DE CLIENTES]

select * from [SUCOS_VENDAS].[dbo].[TABELA DE PRODUTOS]

select * from [dbo].[TABELA DE CLIENTES]
where [PRIMEIRA COMPRA] = 1 AND [SEXO] = 'M' AND [IDADE] < 25 AND [LIMITE DE CREDITO] > 100000


SELECT [CODIGO DO PRODUTO]
	  ,[NOME DO PRODUTO]
	  ,[PRE�O DE LISTA]
FROM [dbo].[TABELA DE PRODUTOS]
WHERE [PRE�O DE LISTA] != 8.41 AND [PRE�O DE LISTA] < 9 

SELECT  * FROM [dbo].[TABELA DE PRODUTOS]
WHERE [EMBALAGEM] <> 'LATA'
ORDER BY  [EMBALAGEM]

SELECT * FROM [dbo].[VENDEDORES]
WHERE YEAR([DATA_ADMISSAO]) >= 2016


SELECT  * FROM [dbo].[TABELA DE PRODUTOS]
WHERE [EMBALAGEM] != 'LATA'
ORDER BY  [EMBALAGEM]

SELECT * FROM [dbo].[TABELA DE CLIENTES]
WHERE [DATA DE NASCIMENTO] < '1990-12-30' AND [SEXO] = 'F'

SELECT * FROM [dbo].[TABELA DE CLIENTES] 
WHERE YEAR([DATA DE NASCIMENTO]) > 1990 
 
 SELECT CPF, NOME, ESTADO FROM [dbo].[TABELA DE CLIENTES] 
WHERE MONTH([DATA DE NASCIMENTO]) = 10 AND [ESTADO] = 'SP'