USE secao05;


SELECT * FROM tipos_produto;
SELECT * FROM produtos;

# consulta multiplas tabelas
SELECT p.codigo AS 'Codigo', p.descricao AS 'Descricao', p.preco AS 'preco', tp.descricao AS 'Tipo produto'
	FROM produtos as p, tipos_produto AS tp
	WHERE p.codigo_tipo = tp.codigo;
