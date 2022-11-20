USE secao04;

# DTL
SELECT * FROM tipos_produto;

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Farmacia');
    INSERT INTO tipos_produto (descricao) VALUES ('Escritorio');
    
-- Commit
COMMIT;

-- ROLLBACK
ROLLBACK;