use trabalho_22b;

INSERT INTO clientes (id, nome, email, celular, data_nasciment) VALUES
(null, 'maria', 'emailnovo@gmail.com', '(11) 9999-9999','11/03/2000'),
(null, 'pedro', 'emailnovo@gmail.com', '(11) 9999-9999','19/02/1997'),
(null, 'sabrina', 'emailnovo@gmail.com', '(11) 9999-9999','06/12/1994'),
(null, 'julia', 'emailnovo@gmail.com', '(11) 9999-9999','28/07/2005'),
(null, 'vinicius', 'emailnovo@gmail.com', '(11) 9999-9999','17/03/1995'),
(null, 'carlos', 'emailnovo@gmail.com', '(11) 9999-9999','02/08/1994'),
(null, 'juliana', 'emailnovo@gmail.com', '(11) 9999-9999','11/01/1991'),
(null, 'mariana', 'emailnovo@gmail.com', '(11) 9999-9999','01/07/1993'),
(null, 'roberta', 'emailnovo@gmail.com', '(11) 9999-9999','19/08/1995'),
(null, 'jessica', 'emailnovo@gmail.com', '(11) 9999-9999','10/08/1996');

INSERT INTO produtos (id, nome, ` preco`, descricao, quantidade_estoque) VALUES
(null, 'Produto 1', 100.00, 'Descrição do produto 1', 10),
(null, 'Produto 2', 200.00, 'Descrição do produto 2', 20),
(null, 'Produto 3', 300.00, 'Descrição do produto 3', 30),
(null, 'Produto 4', 400.00, 'Descrição do produto 4', 40),
(null, 'Produto 5', 500.00, 'Descrição do produto 5', 50),
(null, 'Produto 6', 600.00, 'Descrição do produto 6', 60),
(null, 'Produto 7', 700.00, 'Descrição do produto 7', 70),
(null, 'Produto 8', 800.00, 'Descrição do produto 8', 80),
(null, 'Produto 9', 900.00, 'Descrição do produto 9', 90),
(null, 'Produto 10', 1000.00, 'Descrição do produto 10', 100);

INSERT INTO pedidos (numero_pedido,id_cliente,data_compra,valor_total,data_entrega_estimada) VALUES
(null, null, '2000-12-31', '308.00', '2001-1-1'),
(null, null, '2000-12-31', '531.00', '2001-1-1'),
(null, null, '2000-12-31', '435.00', '2001-1-1'),
(null, null, '2000-12-31', '68.00', '2001-1-1'),
(null, null, '2000-12-31', '666.77', '2001-1-1'),
(null, null, '2000-12-31', '777.66', '2001-1-1'),
(null, null, '2000-12-31', '999.99', '2001-1-1'),
(null, null, '2000-12-31', '69.69', '2001-1-1'),
(null, null,'2000-12-31', '27.80', '2001-1-1'),
(null, null, '2000-12-31', '24.00', '2001-1-1');

insert into itens_pedido (id,numero_pedido,id_produto_quantidade, valor_unitario, ` valor_total`) value
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00'),
(null,null,null,'5','100.00','500.00');

UPDATE clientes
SET celular = '(11) 9876-5432'
WHERE nome = 'maria';

UPDATE produtos
SET quantidade_estoque = 15
WHERE id = 1;

UPDATE pedidos
SET data_entrega_estimada = '2001-01-05'
WHERE numero_pedido = 1;

UPDATE itens_pedido
SET quantidade = 10
WHERE id = 1;

DELETE FROM clientes
WHERE nome = 'julia';

DELETE FROM itens_pedido
ORDER BY id DESC
LIMIT 1;