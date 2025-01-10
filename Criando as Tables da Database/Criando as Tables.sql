USE alucar;
-- criando as tables da database

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT, -- a coluna será do tipo inteiro, não poderá ser nulo e auto incremento de 1 em 1
    nome_marca VARCHAR(255) NOT NULL, -- tipo string com o tamanho máximo de caracteres de 255 e não poderá ser nulo
    origem  VARCHAR(255) NOT NULL,
    PRIMARY KEY (id) -- será a primary key da table, no caso o id
);

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id) -- referenciamos o nome do modelo, com a marca do veículo que está na table "marcas"
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
	endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

