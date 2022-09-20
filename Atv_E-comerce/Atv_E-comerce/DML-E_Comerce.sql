USE db_e_comerce


INSERT INTO tb_usuarios
VALUES	(1, 'Mauricio Cucilho', 'Maumau', '123654', 'documento1'),
(2, 'Juliana Gondim', 'Jubs', '456321', 'documento2'),
(3, 'Beatriz Trindade', 'xBeahx', '654123', 'documento3'),
(4, 'Rafael Lemos', 'RafaCh', '321456', 'documento4')

INSERT INTO tb_produtos
VALUES (13, 'Bolo de chocolate', 'Bolo com massa de chocolate, recheio de brigadeiro e cobertura de ganache de chocolate.', 'Doces', 30.00, 4, 'url_bolodechocolate'),
(14, 'Torta de morango', 'Torta com massa de biscoito, recheio de creme e cobertura de calda de morango.', 'Doces', 24.50, 5, 'url_tortademorango'),
(15, 'Bolinha de queijo', 'Massa de batata com recheio de queijo.', 'Salgados', 2.50, 20, 'url_bolinhadequeijo'),
(16, 'Esfiha de calabresa', 'Massa de salgado com recheio de calabresa.', 'Salgados', 4.00, 15, 'ulr_esfiha')

SELECT * FROM tb_produtos
WHERE descricao LIKE '%ei%'

SELECT * FROM tb_usuarios
WHERE nome LIKE '%ae%'

SELECT p.Id, p.Produto, u.Id, u.Nome
FROM tb_produtos AS p
INNER JOIN  tb_usuarios u
ON p.Id = u.Id

SELECT COUNT(estoque) AS QtdeProdutoRegistrado FROM tb_produtos;