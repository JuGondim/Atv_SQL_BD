CREATE DATABASE db_Rede_Social;

USE db_Rede_Social;

CREATE TABLE tb_Usuarios(
Id_Usuario INT NOT NULL PRIMARY KEY,
Nome VARCHAR(45),
Usuario VARCHAR(45),
Senha VARCHAR(100),
Url_Imagem VARCHAR(100)
);

CREATE TABLE tb_Grupos(
Id_Grupos INT NOT NULL PRIMARY KEY,
Grupo VARCHAR(45),
Descricao VARCHAR(100),
Url_Imagem VARCHAR(100),
FK_Criador INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios (Id_Usuario)
);

CREATE TABLE tb_Postagens(
Id_Postagem INT NOT NULL PRIMARY KEY,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(1000) NOT NULL,
Url_Imagem VARCHAR(100) NOT NULL,
Calendario_Postagem VARCHAR(100) NOT NULL,
FK_Criador INT NOT NULL,
FK_Grupo INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios (Id_Usuario),
FOREIGN KEY (FK_Grupo) REFERENCES tb_Grupos (Id_Grupos)
);

CREATE TABLE tb_Inscritos(
FK_Usuario INT NOT NULL,
FK_Grupo INT NOT NULL,
FOREIGN KEY (FK_Usuario) REFERENCES tb_Usuarios (Id_Usuario),
FOREIGN KEY (FK_Grupo) REFERENCES tb_Grupos (Id_Grupos)
);