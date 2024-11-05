CREATE DATABASE db_CDS;
USE db_CDS;
DROP DATABASE db_cds;

CREATE TABLE tb_artista(
    pk_id_artista INT AUTO_INCREMENT PRIMARY KEY,
    nome_artista VARCHAR(100)
);

CREATE TABLE tb_gravadora( 
    pk_id_gravadora INT AUTO_INCREMENT PRIMARY KEY,
    nome_gravadora VARCHAR(50)
);

SELECT * FROM tb_gravadora;
describe tb_gravadora;

CREATE TABLE tb_categoria(
    pk_id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50)
);

SELECT * FROM tb_categoria;
describe tb_categoria;

CREATE TABLE tb_estado(
    pk_id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nome_estado CHAR(50),
    sigla_estado CHAR(2)
);

SELECT * FROM tb_estado;
describe tb_estado;

CREATE TABLE tb_cidade(
    pk_id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_cidade VARCHAR(100),
    fk_id_estado INT,
    FOREIGN KEY (fk_id_estado) REFERENCES tb_estado(pk_id_estado)
);
SELECT * FROM tb_cidade;
describe tb_cidade;
SELECT c.pk_id_cidade, e.sigla_estado, c.nome_cidade
FROM tb_cidade AS c
JOIN tb_estado AS e 
ON c.fk_id_estado = e.pk_id_estado;


CREATE TABLE tb_cliente(
    pk_id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    endereco_cliente VARCHAR(200),
    renda_cliente DECIMAL(10,2),
    sexo_cliente CHAR(1),
    fk_id_cidade INT,
    FOREIGN KEY (fk_id_cidade) REFERENCES tb_cidade(pk_id_cidade)
);

SELECT cl.pk_id_cliente, cl.nome_cliente, ci.nome_cidade, cl.endereco_cliente, cl.renda_cliente, cl.sexo_cliente
FROM tb_cliente AS cl
JOIN tb_cidade AS ci ON cl.fk_id_cidade = ci.pk_id_cidade;


CREATE TABLE tb_conjuge(
    pk_id_conjuge INT AUTO_INCREMENT PRIMARY KEY,
    nome_conjuge VARCHAR(100),
    renda_conjuge DECIMAL(10,2),
    sexo_conjuge ENUM('F', 'M'),
    fk_id_cliente INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES tb_cliente(pk_id_cliente)
);

CREATE TABLE tb_funcionario(
    pk_id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    endereco_funcionario VARCHAR(200),
    renda_funcionario DECIMAL(10,2),
    sexo_funcionario ENUM('F', 'M')
);

CREATE TABLE tb_dependente(
    pk_id_dependente INT AUTO_INCREMENT PRIMARY KEY,
    nome_dependente VARCHAR(100),
    sexo_dependente ENUM('F', 'M'),
    fk_id_funcionario INT,
    FOREIGN KEY (fk_id_funcionario) REFERENCES tb_funcionario(pk_id_funcionario)
);

CREATE TABLE tb_titulo(
    pk_id_titulo INT AUTO_INCREMENT PRIMARY KEY,
    nome_cd VARCHAR(100),
    valor_cd DECIMAL(10,2),
    quantidade_estoque INT,
    fk_id_categoria INT,
    fk_id_gravadora INT,
    FOREIGN KEY (fk_id_categoria) REFERENCES tb_categoria(pk_id_categoria),
    FOREIGN KEY (fk_id_gravadora) REFERENCES tb_gravadora(pk_id_gravadora)
);

CREATE TABLE tb_pedido(
    pk_id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATETIME,
    valor_pedido DECIMAL(10,2),
    fk_id_cliente INT,
    fk_id_funcionario INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES tb_cliente(pk_id_cliente),
    FOREIGN KEY (fk_id_funcionario) REFERENCES tb_funcionario(pk_id_funcionario)
);

CREATE TABLE tb_titulo_pedido(
    pk_id_titulo_pedido INT AUTO_INCREMENT PRIMARY KEY,
    quantidade_cd INT,
    valor_cd DECIMAL(10,2),
    fk_id_pedido INT,
    fk_id_titulo INT,
    FOREIGN KEY (fk_id_pedido) REFERENCES tb_pedido(pk_id_pedido),
    FOREIGN KEY (fk_id_titulo) REFERENCES tb_titulo(pk_id_titulo)
);

CREATE TABLE tb_titulo_artista(
    pk_id_titulo_artista INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_artista INT,
    fk_id_titulo INT,
    FOREIGN KEY (fk_id_artista) REFERENCES tb_artista(pk_id_artista),
    FOREIGN KEY (fk_id_titulo) REFERENCES tb_titulo(pk_id_titulo)
);


SELECT * FROM tb_artista;


SELECT tp.pk_id_titulo_pedido, t.nome_cd, p.data_pedido, tp.quantidade_cd, tp.valor_cd
FROM tb_titulo_pedido AS tp
JOIN tb_titulo AS t ON tp.fk_id_titulo = t.pk_id_titulo
JOIN tb_pedido AS p ON tp.fk_id_pedido = p.pk_id_pedido;

SELECT ta.pk_id_titulo_artista, t.nome_cd, a.nome_artista
FROM tb_titulo_artista AS ta
JOIN tb_titulo AS t ON ta.fk_id_titulo = t.pk_id_titulo
JOIN tb_artista AS a ON ta.fk_id_artista = a.pk_id_artista;
