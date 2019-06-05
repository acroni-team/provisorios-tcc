--PROCEUDRES DE INSERÇÃO
USE ACRONI_SQL
GO
CREATE PROCEDURE usp_insCadTblCliente
	@nome VARCHAR(50),
	@usuario VARCHAR(50),
	@senha VARCHAR(50),
	@email VARCHAR(50),
	@cpf VARCHAR(50),
	@imagem_cliente VARBINARY(MAX)
AS
BEGIN
	INSERT INTO tblCliente(nome,usuario,senha,email,cpf,imagem_cliente) VALUES (@nome,@usuario,@senha,@email,@cpf,@imagem_cliente)
END
GO