-- Criação da tabela tb_transaction
CREATE TABLE [dbo].[tb_transaction] (
    id BIGINT NOT NULL IDENTITY,
    date DATETIME NOT NULL,
    description VARCHAR(120) NOT NULL,
    type VARCHAR(255) NOT NULL,
    value DECIMAL(19,2) NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (id)
);

-- Criação da tabela tb_user
CREATE TABLE [dbo].[tb_user] (
    id BIGINT NOT NULL IDENTITY,
    balance DECIMAL(19,2) NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Adicionando a chave estrangeira entre tb_transaction e tb_user
ALTER TABLE [dbo].[tb_transaction]
ADD CONSTRAINT FK_USER_TRANSACTION FOREIGN KEY (user_id) REFERENCES [dbo].[tb_user] (id);
