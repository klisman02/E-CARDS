-- Criar tabela de coleções
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(255) NOT NULL,
    release_date DATE,
    total_cards_in_collection INT
);

-- Criar tabela de tipos
CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE
);

-- Criar tabela de estágios
CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL UNIQUE
);

-- Criar tabela de cartas
CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(255) NOT NULL,
    type_id INT NOT NULL,
    stage_id INT NOT NULL,
    info TEXT,
    attack VARCHAR(255),
    damage INT,
    weak VARCHAR(100),
    resistence VARCHAR(100),
    retreat INT,
    card_number_in_collection INT,
    collection_id INT NOT NULL,
    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id) ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES tbl_types(id) ON DELETE RESTRICT,
    FOREIGN KEY (stage_id) REFERENCES tbl_stages(id) ON DELETE RESTRICT
);

-- Criar índices para melhorar performance
CREATE INDEX idx_cards_collection_id ON tbl_cards(collection_id);
CREATE INDEX idx_cards_type_id ON tbl_cards(type_id);
CREATE INDEX idx_cards_stage_id ON tbl_cards(stage_id);
CREATE INDEX idx_cards_name ON tbl_cards(name);

