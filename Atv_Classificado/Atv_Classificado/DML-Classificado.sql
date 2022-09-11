Use db_classificados

INSERT INTO tb_usuarios
VALUES (10, 'Juliana Gondim', 'julianag@email.com', 'senha100', 'url_fotoju'),
(20, 'Roseli Aparecida', 'roseli@email.com', 'senha200', 'url_fotorose'),
(30, 'Rafael Lemos', 'rafael@email.com', 'senha300', 'url_fotorafa'),
(40, 'Gustavo Boaz', 'boaz@email.com', 'senha400', 'url_fotoboaz')

INSERT INTO tb_anuncios
VALUES (10, 'Receita', 'Pãozinho de batata', '(11) 91234-5678', 'url_fotoju', '2022-08-21', 10),
(20, 'Receita Doce', 'Bolo pudim', '(11) 91234-5678', 'url_fotorose', '2022-08-20', 20),
(30, 'Detonado', 'Platinando God of War (2018)', '(11) 91234-5678', 'url_fotorafa', '2022-09-10', 30),
(40, 'Aula .NET', 'Introdução C#', '(19) 91234-5678', 'url_fotoboaz', '2022-07-27', 40)

SELECT Nome FROM tb_usuarios
WHERE Id BETWEEN 10 AND 30;

SELECT Titulo FROM tb_anuncios
WHERE Descricao LIKE '%in%';

SELECT u.Id, u.Nome, a.Id, a.Titulo 
FROM tb_usuarios AS u
RIGHT JOIN  tb_anuncios a
ON u.Id = a.Id

SELECT COUNT(Nome) AS NumeroDeUsuarios FROM tb_usuarios;