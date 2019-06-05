--PROCEDURES DE ATUALIZAÇÃO
USE ACRONI_SQL
GO
CREATE PROCEDURE usp_updQtdeTeclados
	@QTDE INT,
	@id INT
AS
BEGIN
	UPDATE tblCliente SET quantidade_teclados = @QTDE where id_cliente = @id
END
GO
CREATE PROCEDURE usp_updMinhaContaInfo
	@column VARCHAR(20),
	@value VARCHAR(50),
	@id INT
AS
BEGIN
	IF @column = 'nome'
		UPDATE tblCliente SET nome = @value WHERE id_cliente = @id
	ELSE IF @column = 'cpf'
		UPDATE tblCliente SET cpf = @value WHERE id_cliente = @id
	ELSE IF @column = 'cep'
		UPDATE tblCliente SET cep = @value WHERE id_cliente = @id
	ELSE IF @column = 'email'
		UPDATE tblCliente SET email = @value WHERE id_cliente = @id
	ELSE IF @column = 'senha'
		UPDATE tblCliente SET senha = @value WHERE id_cliente = @id
	ELSE IF @column = 'usuario'
		UPDATE tblCliente SET usuario = @value WHERE id_cliente = @id
END
GO
CREATE PROCEDURE usp_updSenhaUsuario
	@nova_senha VARCHAR(50),
	@email VARCHAR(50)
AS
BEGIN
	UPDATE tblCliente SET senha = @nova_senha WHERE email = @email
END
GO
CREATE PROCEDURE usp_updColecao
	@nick_colecao VARCHAR(50),
	@id_cliente INT
AS
BEGIN
	UPDATE tblColecao SET nick_colecao = @nick_colecao WHERE nick_colecao LIKE @nick_colecao AND id_cliente = @id_cliente
END
GO
CREATE PROCEDURE usp_updImagemCliente
	@img VARBINARY(MAX),
	@id_cliente INT
AS
BEGIN
	UPDATE tblCliente SET imagem_cliente = @img WHERE id_cliente = @id_cliente
END
GO