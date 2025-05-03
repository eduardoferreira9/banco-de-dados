-- Criando as duas tabelas
CREATE TABLE departamento(
	id_departamento SERIAL PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE funcionario(
	id_funcionario SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	id_departamento INT,
	FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento) ON DELETE RESTRICT
);

-- Inserts
INSERT INTO departamento(nome) VALUES
('Tecnologia da Informação');

INSERT INTO funcionario(nome, id_departamento) VALUES
('Eduardo', 1);

-- Tentativa de Delete
DELETE FROM departamento WHERE nome = 'Tecnologia da Informação';

-- Erro apresentado
ERROR:  atualização ou exclusão em tabela "departamento" viola restrição de chave estrangeira "funcionario_id_departamento_fkey" em "funcionario"
Chave (id_departamento)=(1) ainda é referenciada pela tabela "funcionario". 

-- Esse erro ocorre porque definimos o comando "Delete" como restrito, assim evitando a perda de informações
