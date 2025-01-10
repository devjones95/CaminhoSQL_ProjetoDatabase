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

-- Inserindo dados nas tables

INSERT INTO clientes (nome, sobrenome, endereco)  
VALUES  
    ('João Pedro', 'Assis', 'Rua 1'),
    ('Ana Clara', 'Silva', 'Rua 2'),  
    ('Carlos Eduardo', 'Santos', 'Rua 3'),  
    ('Mariana', 'Almeida', 'Rua 4'),  
    ('Bruno', 'Oliveira', 'Rua 5'),  
    ('Fernanda', 'Costa', 'Rua 6'),  
    ('Lucas', 'Pereira', 'Rua 7'),  
    ('Gabriela', 'Rodrigues', 'Rua 8'),  
    ('Matheus', 'Martins', 'Rua 9'),  
    ('Sofia', 'Gomes', 'Rua 10'),  
    ('Felipe', 'Ferreira', 'Rua 11'),  
    ('Beatriz', 'Barbosa', 'Rua 12'),  
    ('Guilherme', 'Souza', 'Rua 13'),  
    ('Larissa', 'Ramos', 'Rua 14'),  
    ('Ricardo', 'Vieira', 'Rua 15');  
    
INSERT INTO marcas (nome_marca, origem)
VALUES  
    ('Toyota', 'Japão'),  
    ('Volkswagen', 'Alemanha'),  
    ('Ford', 'Estados Unidos'),  
    ('Chevrolet', 'Estados Unidos'),  
    ('Honda', 'Japão'),  
    ('Hyundai', 'Coreia do Sul'),  
    ('Nissan', 'Japão'),  
    ('BMW', 'Alemanha'),  
    ('Mercedes-Benz', 'Alemanha'),  
    ('Audi', 'Alemanha'),  
    ('Kia', 'Coreia do Sul'),  
    ('Peugeot', 'França'),  
    ('Renault', 'França'),  
    ('Fiat', 'Itália'),  
    ('Volvo', 'Suécia');
    
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)  
VALUES  
    ('Corolla', 'Automática', '2.0', 'Gasolina', 1),  
    ('Camry', 'Automática', '2.5', 'Híbrido', 1),  
    ('Golf', 'Manual', '1.4', 'Gasolina', 2),  
    ('Polo', 'Automática', '1.0', 'Flex', 2),  
    ('Mustang', 'Automática', '5.0', 'Gasolina', 3),  
    ('F-150', 'Automática', '3.5', 'Diesel', 3),  
    ('Onix', 'Automática', '1.0', 'Flex', 4),  
    ('Tracker', 'Automática', '1.2', 'Flex', 4),  
    ('Civic', 'Automática', '2.0', 'Gasolina', 5),  
    ('HR-V', 'Automática', '1.8', 'Flex', 5),  
    ('Creta', 'Automática', '2.0', 'Flex', 6),  
    ('Tucson', 'Automática', '1.6', 'Híbrido', 6),  
    ('Sentra', 'Automática', '2.0', 'Gasolina', 7),  
    ('Altima', 'Automática', '2.5', 'Híbrido', 7),  
    ('X5', 'Automática', '3.0', 'Diesel', 8);
