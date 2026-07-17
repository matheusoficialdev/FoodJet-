CREATE DATABASE foodjet;

\c foodjet;


-- USUÁRIOS
CREATE TABLE usuarios (

    id SERIAL PRIMARY KEY,

    nome VARCHAR(100) NOT NULL,

    email VARCHAR(120) UNIQUE NOT NULL,

    telefone VARCHAR(20),

    senha VARCHAR(255) NOT NULL,

    tipo VARCHAR(20) NOT NULL,
    -- cliente
    -- entregador
    -- restaurante
    -- admin

    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- RESTAURANTES

CREATE TABLE restaurantes (

    id SERIAL PRIMARY KEY,

    usuario_id INT REFERENCES usuarios(id),

    nome VARCHAR(120),

    endereco TEXT,

    latitude DECIMAL(10,8),

    longitude DECIMAL(11,8),

    aberto BOOLEAN DEFAULT true,

    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



-- PRODUTOS / CARDÁPIO

CREATE TABLE produtos (

    id SERIAL PRIMARY KEY,

    restaurante_id INT REFERENCES restaurantes(id),

    nome VARCHAR(100),

    descricao TEXT,

    preco DECIMAL(10,2),

    imagem TEXT

);



-- PEDIDOS

CREATE TABLE pedidos (

    id SERIAL PRIMARY KEY,

    cliente_id INT REFERENCES usuarios(id),

    restaurante_id INT REFERENCES restaurantes(id),

    entregador_id INT REFERENCES usuarios(id),

    status VARCHAR(30) DEFAULT 'aguardando',
    
    -- aguardando
    -- aceito
    -- preparando
    -- saiu_entrega
    -- entregue


    valor_total DECIMAL(10,2),

    endereco_entrega TEXT,

    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



-- ITENS DO PEDIDO

CREATE TABLE pedido_itens (

    id SERIAL PRIMARY KEY,

    pedido_id INT REFERENCES pedidos(id),

    produto_id INT REFERENCES produtos(id),

    quantidade INT,

    preco DECIMAL(10,2)

);



-- LOCALIZAÇÃO DO ENTREGADOR

CREATE TABLE localizacao_entregador (

    id SERIAL PRIMARY KEY,

    entregador_id INT REFERENCES usuarios(id),

    latitude DECIMAL(10,8),

    longitude DECIMAL(11,8),

    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



-- PAGAMENTOS

CREATE TABLE pagamentos (

    id SERIAL PRIMARY KEY,

    pedido_id INT REFERENCES pedidos(id),

    metodo VARCHAR(30),
    
    -- pix
    -- cartão
    -- dinheiro


    status VARCHAR(30),

    valor DECIMAL(10,2),

    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



-- CONFIGURAÇÃO DO DONO

CREATE TABLE admin_config (

    id SERIAL PRIMARY KEY,

    usuario_id INT REFERENCES usuarios(id),

    acesso_total BOOLEAN DEFAULT true

);CREATE TABLE pedidos (

    id SERIAL PRIMARY KEY,

    cliente_id INTEGER REFERENCES usuarios(id),

    restaurante_id INTEGER REFERENCES restaurantes(id),

    status VARCHAR(50) DEFAULT 'AGUARDANDO',

    valor_total DECIMAL(10,2),

    forma_pagamento VARCHAR(30),

    endereco_entrega TEXT,

    criado_em TIMESTAMP DEFAULT NOW()

);