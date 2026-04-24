-- Banco de dados: estoque.db
-- Gerado automaticamente

CREATE TABLE IF NOT EXISTS produtos (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  nome        TEXT    NOT NULL,
  categoria   TEXT,
  preco       REAL    NOT NULL DEFAULT 0,
  qtd_estoque INTEGER NOT NULL DEFAULT 0,
  qtd_minima  INTEGER NOT NULL DEFAULT 0,
  unidade     TEXT    DEFAULT 'un'
);

CREATE TABLE IF NOT EXISTS movimentacoes (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  produto_id INTEGER NOT NULL REFERENCES produtos(id),
  tipo       TEXT    NOT NULL CHECK(tipo IN ('entrada','saida')),
  quantidade INTEGER NOT NULL,
  data       DATE    NOT NULL DEFAULT (date('now'))
);

-- Dados atuais
INSERT INTO produtos (id, nome, categoria, preco, qtd_estoque, qtd_minima, unidade) VALUES (1, 'Camiseta P', 'Vestuário', 39.90, 12, 5, 'un');
INSERT INTO produtos (id, nome, categoria, preco, qtd_estoque, qtd_minima, unidade) VALUES (2, 'Calça Jeans 42', 'Vestuário', 89.90, 3, 5, 'un');
INSERT INTO produtos (id, nome, categoria, preco, qtd_estoque, qtd_minima, unidade) VALUES (3, 'Tênis Nike 40', 'Calçados', 299.90, 0, 2, 'par');
INSERT INTO produtos (id, nome, categoria, preco, qtd_estoque, qtd_minima, unidade) VALUES (4, 'Boné Preto', 'Acessórios', 49.90, 20, 4, 'un');
INSERT INTO produtos (id, nome, categoria, preco, qtd_estoque, qtd_minima, unidade) VALUES (5, 'Meia Esportiva', 'Acessórios', 14.90, 4, 10, 'par');
