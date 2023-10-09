CREATE DATABASE VendasDB;

USE VendasDB;

-- Tabela de Clientes
CREATE TABLE Clientes (
    Cliente_ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    Pedido_ID INT PRIMARY KEY,
    Cliente_ID INT,
    Produto VARCHAR(50),
    Quantidade INT,
    DataPedido DATE,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID)
);

-- Inserir dados na tabela de Clientes
INSERT INTO Clientes (Cliente_ID, Nome, Email)
VALUES
    (1, 'João Silva', 'joao@email.com'),
    (2, 'Maria Santos', 'maria@email.com');

-- Inserir dados na tabela de Pedidos
INSERT INTO Pedidos (Pedido_ID, Cliente_ID, Produto, Quantidade, DataPedido)
VALUES
    (101, 1, 'Laptop', 2, '2023-09-29'),
    (102, 2, 'Smartphone', 3, '2023-09-30');

SELECT Pedidos.Pedido_ID, Clientes.Nome, Pedidos.Produto
FROM Pedidos
INNER JOIN Clientes ON Pedidos.Cliente_ID = Clientes.Cliente_ID;

SELECT Clientes.Nome, Pedidos.Pedido_ID
FROM Clientes
LEFT JOIN Pedidos ON Clientes.Cliente_ID = Pedidos.Cliente_ID;

SELECT Pedidos.Pedido_ID, Clientes.Nome
FROM Pedidos
RIGHT JOIN Clientes ON Pedidos.Cliente_ID = Clientes.Cliente_ID;