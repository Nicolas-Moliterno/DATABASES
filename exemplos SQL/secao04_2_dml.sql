#DML

-- INSERT
INSERT INTO tipos_produto (descricao) VALUES ('Apple');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1300', 1);

INSERT INTO produtos VALUES (NULL, 'Macbook Pro', '7200', 1);

INSERT INTO produtos VALUES (NULL, 'Macbook Air', '7200', 3);

SELECT * FROM produtos;

-- Update
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;

UPDATE produtos SET descricao = 'Impressora Laser', preco = '700' WHERE codigo = 4;

# NUNCA ESQUECA DE FILTRAR OS DADOS OU O REGISTRO COM WHERE!
UPDATE produtos SET preco = 250 WHERE codigo = 4;

-- Delete
DELETE FROM produtos WHERE codigo = 4;



