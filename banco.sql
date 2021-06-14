/* Lógico_1: */

CREATE TABLE CLIENTE (
    nome VARCHAR not null (40),
    senha VARCHAR not null (12),
    email VARCHAR not null (40),
    bairro VARCHAR not null (20),
    rua VARCHAR not null (40),
    cep CHAR not null (9),
    codigo INTEGER auto_increment PRIMARY KEY
);

CREATE TABLE PRODUTO (
    descricao VARCHAR not null (40),
    preco DECIMAL not null (4,2),
    quantidade SMALLINT not null ,
    codigo INTEGER auto_increment PRIMARY KEY
);

CREATE TABLE VENDA (
    data DATE not null ,
    codigo INTEGER auto_increment PRIMARY KEY,
    FK_CLIENTE_codigo INTEGER not null ,
    FK_PRODUTO_codigo INTEGER not null 
);
 
ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_2
    FOREIGN KEY (FK_CLIENTE_codigo)
    REFERENCES CLIENTE (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_3
    FOREIGN KEY (FK_PRODUTO_codigo)
    REFERENCES PRODUTO (codigo)
    ON DELETE RESTRICT;