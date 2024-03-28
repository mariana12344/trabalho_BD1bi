create database trabalho_22b;
use trabalho_22b;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    celular VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    descricao TEXT,
    quantidade_estoque INT
);

CREATE TABLE pedidos (
    numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_compra DATE,
    valor_total DECIMAL(10, 2),
    data_entrega_estimada DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_pedido INT,
    id_produto INT,
    quantidade INT,
    valor_unitario DECIMAL(10, 2),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (numero_pedido) REFERENCES pedidos(numero_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
