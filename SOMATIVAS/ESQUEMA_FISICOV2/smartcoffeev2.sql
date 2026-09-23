CREATE DATABASE IF NOT EXISTS SMARTCOFFEEV2_ADRYAN

USE SMARTCOFFEEV2_ADRYAN

CREATE TABLE Cliente (
    Data_cadastro VARCHAR (14) NOT NULL, 
    Telefone CHAR(14) NOT NULL ,
    Nome VARCHAR(30)NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CPF CHAR(14)NOT NULL,
    ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
    ID_fidelidade INT AUTO_INCREMENT PRIMARY KEY ,
);

CREATE TABLE Funcionario (
    Id_funcionario INT AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Data_admissao DATE,
    Salario DECIMAL(10,2),
    Cargo VARCHAR(30),
    CPF CHAR(11) NOT NULL UNIQUE,
    PRIMARY KEY (Id_funcionario)
);

CREATE TABLE Delivery (
    ID_delivery INT AUTO_INCREMENT,
    Endereco_entrega VARCHAR(255) NOT NULL,
    Status_entrega VARCHAR(20),
    Taxa_entrega DECIMAL(5,2),
    Data_hora_saida DATETIME,
    PRIMARY KEY (ID_delivery)
);

CREATE TABLE Produto (
    ID_Produto INT AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Preco_unitario DECIMAL(10,2) NOT NULL,
    Quantidade_estoque INT NOT NULL,
    Descricao TEXT,
    PRIMARY KEY (ID_Produto)
);
CREATE TABLE Insumos (
    Id_insumo INT AUTO_INCREMENT,
    Nome_insumo VARCHAR(50) NOT NULL,
    Quantidade_minima DECIMAL(10,2),
    Kg DECIMAL(10,3),
    Ml DECIMAL(10,2),
    Unidade VARCHAR(10),
    Quantidade_atual DECIMAL(10,2),
    PRIMARY KEY (Id_insumo)
);
CREATE TABLE Programa_fidelidade (
    ID_fidelidade INT AUTO_INCREMENT,
    Saldos_pontos INT DEFAULT 0,
    Data_ultima_atualizacao DATETIME,
    Data_Cadastro DATE,
    PRIMARY KEY (ID_fidelidade)
);
CREATE TABLE Cliente (
    ID_cliente INT AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    Telefone VARCHAR(15),
    Email VARCHAR(50) NOT NULL,
    Data_cadastro DATE NOT NULL,
    ID_fidelidade INT,
    PRIMARY KEY (ID_cliente),
    FOREIGN KEY (ID_fidelidade) 
);
CREATE TABLE Pedidos_Pagamentos (
    ID_pedidos INT AUTO_INCREMENT,
    ID_pagamento INT NOT NULL UNIQUE,
    ID_cliente INT NOT NULL,
    ID_delivery INT,
    Data_hora DATETIME NOT NULL,
    Status_pedido VARCHAR(20),
    Tipo_pedido VARCHAR(20),
    Valor_total DECIMAL(10,2) NOT NULL,
    Valor_pago DECIMAL(10,2),
    Data_hora_pagamento DATETIME,
    Status_pagamento VARCHAR(20),
    Forma_pagamento VARCHAR(20),
    PRIMARY KEY (ID_pedidos),
    FOREIGN KEY (ID_cliente) REFERENCES Cliente (ID_cliente),
    FOREIGN KEY (ID_delivery) REFERENCES Delivery (ID_delivery)
);

CREATE TABLE Consome (
    Id_insumo INT,
    ID_Produto INT,
    Quantidade_utilizada DECIMAL(10,2),
    PRIMARY KEY (Id_insumo, ID_Produto),
    FOREIGN KEY (Id_insumo) REFERENCES Insumos (Id_insumo),
    FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto) 
);
CREATE TABLE Entrega (
    ID_delivery INT,
    Id_funcionario INT,
    PRIMARY KEY (ID_delivery, Id_funcionario),
    FOREIGN KEY (ID_delivery) REFERENCES Delivery (ID_delivery) ,
    FOREIGN KEY (Id_funcionario) REFERENCES Funcionario (Id_funcionario) 
);
CREATE TABLE Atende (
    ID_pedidos INT,
    Id_funcionario INT,
    PRIMARY KEY (ID_pedidos, Id_funcionario),
    FOREIGN KEY (ID_pedidos) REFERENCES Pedidos_Pagamentos (ID_pedidos) ,
    FOREIGN KEY (Id_funcionario) REFERENCES Funcionario (Id_funcionario) 
);
