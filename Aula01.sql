-- Criando a tabela funcionários
CREATE TABLE funcionario(
	id_funcionario SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	salario NUMERIC(8,2),
	data_admissao DATE,
	ativo BOOLEAN
);

-- Adicionando registros
INSERT INTO funcionario(nome, salario, data_admissao, ativo) VALUES
('Fernada',4120.20,'2017-01-07',TRUE),
('Bruno',9820.41,'2010-08-27', TRUE),
('Mateus',10914.90,'2020-05-01', TRUE),
('Camila',8631.18,'2017-10-02', TRUE),
('Paulo',7549.54,'2021-06-28', FALSE),
('Larissa',4561.74,'2021-09-25', TRUE),
('Ricardo',20841.46,'2015-05-04', FALSE),
('João',16875.96,'2016-03-25', TRUE),
('Mariana',8989.21,'2014-07-27', FALSE),
('Eduardo', 4919.93,'2015-02-02', TRUE);

-- Query View
SELECT
	nome,
	salario,
	data_admissao,
	ativo
FROM
	funcionario
	WHERE
	data_admissao > '2021-01-01';
