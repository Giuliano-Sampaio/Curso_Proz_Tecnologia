-- Cria a função para contar clientes cadastrados em um dia específico
CREATE FUNCTION contarClientesCadastrados(data_alteracao DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    
    -- Usa a função COUNT para contar o número de registros que correspondem à data fornecida
    SELECT COUNT(*) INTO totalClientes
    FROM tabela_clientes
    WHERE DATE(data_cadastro) = DATE(data_alteracao);
    
    RETURN totalClientes;
END;

SELECT contarClientesCadastrados('2023-10-03') AS total_clientes_cadastrados;