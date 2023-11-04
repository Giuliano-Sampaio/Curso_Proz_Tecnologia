CREATE PROCEDURE RelatorioQuantidadeProdutosPorDia()
BEGIN
    SELECT
        DATE(data_compra) AS Dia,
        COUNT(*) AS QuantidadeComprada
    FROM
        tabela_de_compras
    GROUP BY
        Dia
    ORDER BY
        Dia;
END;
//
DELIMITER ;

CALL RelatorioQuantidadeProdutosPorDia();