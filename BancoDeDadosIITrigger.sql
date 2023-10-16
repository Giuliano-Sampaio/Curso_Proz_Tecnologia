CREATE DATABASE EmpresaDB;
USE EmpresaDB;
-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    DepartamentoID INT
);

-- Tabela Departamentos
CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50)
);
DELIMITER //
CREATE TRIGGER RegistroInsercaoFuncionario
AFTER INSERT ON Funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO LogInsercaoFuncionarios (FuncionarioID, Nome, Cargo, DataInsercao)
    VALUES (NEW.FuncionarioID, NEW.Nome, NEW.Cargo, NOW());
END;
//
DELIMITER ;
-- Inserir um novo funcionário
INSERT INTO Funcionarios (Nome, Cargo, DepartamentoID)
VALUES ('João Silva', 'Gerente de Vendas', 1);