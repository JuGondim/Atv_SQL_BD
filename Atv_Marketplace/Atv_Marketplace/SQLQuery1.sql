CREATE DATABASE db_Marketplace;

USE db_Marketplace;

CREATE TABLE tb_usuarios (

Id_usuario INT NOT NULL PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
Usuario VARCHAR(45) NOT NULL,
Senha VARCHAR(45) NOT NULL,
Tipo VARCHAR(45) NOT NULL,
Url_Foto VARCHAR(100)
);

CREATE TABLE tb_categoria (

Id_categoria INT NOT NULL PRIMARY KEY,
Categoria VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produtos (

Id_produto INT NOT NULL PRIMARY KEY,
Produto VARCHAR(45) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
Preco FLOAT NOT NULL,
Url_imagem VARCHAR(100) NOT NULL,
FK_Criador INT NOT NULL,
FK_Categoria INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuario),
FOREIGN KEY (FK_Categoria) REFERENCES tb_categoria (Id_categoria)
);

CREATE TABLE tb_compras (

Calendario VARCHAR(50),
FK_Usuario INT NOT NULL,
FK_Produto INT NOT NULL,
FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuario),
FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id_produto)
);