create table [CLIENTES2]
(CPF varchar(15),
NOME_CLIENTE varchar(100),
ENDERECO1 varchar(150),
ENDERECO2 varchar(150),
BAIRRO varchar (50),
CIDADE varchar (50),
ESTADO varchar (2),
CEP varchar (8),
DATA_NASCIMENTO date,
IDADE smallint,
SEXO varchar (1),
LIMITE_CREDITO money,
VOLUME_COMPRAS float,
PRIMEIRA_COMPRA bit
)

drop table 
[dbo].[CLIENTES2]

create table VENDEDORES 
(MATRICULA varchar (5),
NOME_VENDEDOR varchar (100),
PERCENTUAL_COMISSAO float
)


insert into [VENDEDORES]([MATRICULA], [NOME_VENDEDOR], [PERCENTUAL_COMISSAO])
values('00233', ' José Geraldo da Fonseca', 10)


insert into [VENDEDORES]([MATRICULA], [NOME_VENDEDOR], [PERCENTUAL_COMISSAO])
values('00235', ' Márcio Almeida Silva', 8),
	   ('00236', 'Cláudia Morais', 8)


insert into [dbo].[PRODUTOS] ([COD_PRODUTO],[NOME_PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO_LISTA])
values 
('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melancia', 4.56)

insert into [dbo].[PRODUTOS] ([COD_PRODUTO],[NOME_PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO_LISTA])
values 
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 lt', 'Laranja', 16.01)


insert into [dbo].[PRODUTOS] ([COD_PRODUTO],[NOME_PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO_LISTA])
values 
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Montanha', 6.31)


select * from [dbo].[PRODUTOS]

select * from [dbo].[VENDEDORES]

update [dbo].[VENDEDORES] set
PERCENTUAL_COMISSAO = 11
where MATRICULA = '00238'

update [dbo].[VENDEDORES] set
NOME_VENDEDOR ='José Geraldo da Fonseca Junior'
where MATRICULA = '00233'


insert into [dbo].[PRODUTOS] ([COD_PRODUTO],[NOME_PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO_LISTA])
VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18)


update [dbo].[PRODUTOS] set [EMBALAGEM] = 'Garrafa'
where [COD_PRODUTO] = '1078680'
select * from [dbo].[PRODUTOS]


alter table [dbo].[PRODUTOS]
alter column [COD_PRODUTO] 
varchar (10) not null

alter table [dbo].[PRODUTOS]
add constraint PK_PRODUTOS
primary key clustered ([COD_PRODUTO])


alter table [dbo].[VENDEDORES]
alter column [MATRICULA]
varchar(5) not null

alter table [dbo].[VENDEDORES]
add constraint PK_VENDEDORES
primary key clustered ([MATRICULA])

alter table [dbo].[VENDEDORES]
add DATA_ADMISSAO
DATE

update [dbo].[VENDEDORES] set
[DATA_ADMISSAO] = '2016-08-21' 
where [MATRICULA] = '00233'

update [dbo].[VENDEDORES] set
[FERIAS] = 'Não' 
where [MATRICULA] = '00233'

update [dbo].[VENDEDORES] set 
NOME_VENDEDOR = 'Márcio Almeida Silva' where MATRICULA = '00235'

alter table [dbo].[VENDEDORES]
alter column [FERIAS] 
varchar(3)

alter table [dbo].[CLIENTES]
alter column [CPF]
varchar(15) not null

select * from [dbo].[VENDEDORES]

alter table [dbo].[CLIENTES]
add constraint PK_CLIENTES
primary key clustered ([CPF])


INSERT INTO [dbo].[CLIENTES]
           ([CPF]
           ,[NOME_CLIENTE]
           ,[ENDERECO1]
           ,[ENDERECO2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA_NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE_CREDITO]
           ,[VOLUME_COMPRAS]
           ,[PRIMEIRA_COMPRA])
     VALUES
           ('03586777426'
           ,'José Marcos dos Santos'
           ,'Av 1'
           ,'Casa 4'
           ,'Candeias'
           ,'Jaboatão'
           ,'PE'
           ,'54470030'
           ,'1981-01-09'
           ,40
           ,'M'
           ,12000.50
		   ,1000.00
           ,1)

select * from [dbo].[CLIENTES]




