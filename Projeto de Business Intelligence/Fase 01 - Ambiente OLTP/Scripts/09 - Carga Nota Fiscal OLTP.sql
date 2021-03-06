/* Escolhendo um Banco de Dados */
USE
	COMERCIO_OLTP
GO


/* Preenchendo a Tabela de Notas Fiscais */
DECLARE
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN
	SET @ID_CLIENTE =
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR =
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA =
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	/* Vari�vel para trazer o Ano, M�s, Dia e Concatenado os Campos */ 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2015-' + --TRAZ O ANO
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 12)) + 1) + '-' + --TRAZ O M�S
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 27)) + 1)))) --TRAZ O DIA

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)
END
GO 8000 --Vai Preencher 8.000 vezes


/* Preenchendo a Tabela de Notas Fiscais */
DECLARE
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN
	SET @ID_CLIENTE =
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR =
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA =
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	/* Vari�vel para trazer o Ano, M�s, Dia e Concatenado os Campos */ 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2016-' + --TRAZ O ANO
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 12)) + 1) + '-' + --TRAZ O M�S
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 27)) + 1)))) --TRAZ O DIA

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)
END
GO 8400 --Vai Preencher 8.400 Vezes


/* Preenchendo a Tabela de Notas Fiscais */
DECLARE
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN
	SET @ID_CLIENTE =
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR =
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA =
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	/* Vari�vel para trazer o Ano, M�s, Dia e Concatenado os Campos */ 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2017-' + --TRAZ O ANO
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 12)) + 1) + '-' + --TRAZ O M�S
				CONVERT(VARCHAR(5), (CONVERT(INT, RAND() * 27)) + 1)))) --TRAZ O DIA

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)
END
GO 9000 --Vai Preencher 9.000 Vezes


/* Verificando os Dados da Tabela Nota_Fiscal*/
SELECT
	*
FROM
	NOTA_FISCAL
GO


/* Contando os Dados na Tabela Nota_Fiscal */
SELECT
	COUNT(*)
FROM
	NOTA_FISCAL
GO