

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

--EXIBIR NOMES E BAIRRO QUE O BAIRRO EXISTA NA TABELA DE VENDEDORES
SELECT NOME, 
	   BAIRRO 
FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN (SELECT BAIRRO 
				 FROM [TABELA DE VENDEDORES])



SELECT EMBALAGEM, 
	   MAX([PRE�O DE LISTA]) 
FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM

--DECLARA CONSULTA DENTRO DO FROM E DEPOIS FAZ A CONSULTA DELA FORA SE FOR O CASO CRIANDO CONSICIONAL NO WHERE
SELECT NOVA_CONSULTA.EMBALAGEM_PRODUTO,
	   NOVA_CONSULTA.MAX_PRECO
FROM (SELECT EMBALAGEM AS EMBALAGEM_PRODUTO,
			 MAX([PRE�O DE LISTA]) AS MAX_PRECO
	  FROM [TABELA DE PRODUTOS]
	  GROUP BY EMBALAGEM) NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRECO BETWEEN 5 AND 15 --=>, =, =<. !=


SELECT CPF, COUNT(*) 
FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000