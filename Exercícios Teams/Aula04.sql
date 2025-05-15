CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    salario NUMERIC(8,2),
    data_admissao DATE,
    ativo BOOLEAN,
    id_departamento INT,
    CONSTRAINT fk_departamento FOREIGN KEY (id_departamento)
        REFERENCES departamento(id_departamento)
        ON DELETE CASCADE
);

-- Adicionando registros
INSERT INTO departamento (nome) VALUES ('TI');

INSERT INTO funcionario (nome, salario, data_admissao, ativo, id_departamento)
VALUES 
('João', 3000.00, '2022-01-10', true, 1),
('Maria', 3500.00, '2022-05-15', true, 1);

-- Excluindo o departamento de TI
DELETE FROM departamento WHERE id_departamento = 1;

SELECT * FROM funcionario; -- Retornando 0 registros
