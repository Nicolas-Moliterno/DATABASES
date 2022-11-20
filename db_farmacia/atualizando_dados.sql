# Atualizando dados

SELECT * FROM tipos_produto;

UPDATE tipos_produto SET tipo = 'Bijuterias' WHERE id = 4;

UPDATE produtos SET preco_venda = '4.16',
	id_tipo_produto = 1,
    id_fabricante = 1
    WHERE id =2;
    
SELECT * FROM produtos;
