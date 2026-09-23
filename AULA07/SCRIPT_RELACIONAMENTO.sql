-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Clientes (
ID_Cliente Texto(1) PRIMARY KEY,
Nome_Clientes Texto(1)
)

CREATE TABLE Pedidos (
ID_Pedido Texto(1) PRIMARY KEY,
Quantidade Texto(1),
ID_Cliente Texto(1),
FOREIGN KEY(ID_Cliente) REFERENCES Clientes (ID_Cliente)
)

CREATE TABLE Produtos+Estoque (
Id_Produtos Texto(1),
Nome_Produto varchar(100) ,
Id_Estoque Texto(1),
Valor Decimal,
PRIMARY KEY(Id_Produtos,Id_Estoque)
)

CREATE TABLE Fornecedores (
ID_Fornecedores Texto(1) PRIMARY KEY,
Razao_Social Texto(1)
)

CREATE TABLE Produtos (
ID_Produto Texto(1) PRIMARY KEY,
Nome_produto Texto(1)
)

CREATE TABLE Fornece (
ID_Produto int,
ID_Fornecedores int,
Id_Item int auto_increment primary key PRIMARY KEY,
Quantidade int)

