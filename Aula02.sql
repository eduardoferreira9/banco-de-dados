-- Criando a tabela produtos
CREATE TABLE produtos (
	id_produto SERIAL PRIMARY KEY,
	nome TEXT,
	preco DECIMAL(8,2) CHECK(preco > 0),
	quantidade INT CHECK(quantidade >= 0),
	categoria CHAR(1) CHECK(categoria IN ('A', 'B', 'C'))
);

-- Tentativa de Insert
INSERT INTO produtos(nome, preco, quantidade, categoria) VALUES
('Alface',-10.20,1,'A');

-- Mensagem de erro de retorno
ERROR:  a nova linha da relação "produtos" viola a restrição de verificação "produtos_preco_check"
Registro que falhou contém (1, Alface, -10.20, 1, A).


-- Tentativa de um novo Insert
INSERT INTO produtos(nome, preco, quantidade, categoria) VALUES
('Alface',10.20,1,'D');

-- Mensagem de retorno de erro
ERROR:  a nova linha da relação "produtos" viola a restrição de verificação "produtos_categoria_check"
Registro que falhou contém (2, Alface, 10.20, 1, D). 
