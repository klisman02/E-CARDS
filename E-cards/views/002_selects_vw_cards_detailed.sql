-- SELECTs para consultar cada campo da view vw_cards_detailed

-- Selecionar ID das cartas
SELECT id FROM vw_cards_detailed;

-- Selecionar HP das cartas
SELECT hp FROM vw_cards_detailed;

-- Selecionar nome das cartas
SELECT name FROM vw_cards_detailed;

-- Selecionar tipo das cartas
SELECT type_name FROM vw_cards_detailed;

-- Selecionar estágio das cartas
SELECT stage_name FROM vw_cards_detailed;

-- Selecionar informações das cartas
SELECT info FROM vw_cards_detailed;

-- Selecionar ataque das cartas
SELECT attack FROM vw_cards_detailed;

-- Selecionar dano das cartas
SELECT damage FROM vw_cards_detailed;

-- Selecionar fraqueza das cartas
SELECT weak FROM vw_cards_detailed;

-- Selecionar resistência das cartas
SELECT resistence FROM vw_cards_detailed;

-- Selecionar retração das cartas
SELECT retreat FROM vw_cards_detailed;

-- Selecionar número da carta na coleção
SELECT card_number_in_collection FROM vw_cards_detailed;

-- Selecionar nome da coleção
SELECT collection_set_name FROM vw_cards_detailed;

-- Selecionar data de lançamento da coleção
SELECT release_date FROM vw_cards_detailed;

-- Selecionar múltiplos campos (exemplo com campos relacionados)
SELECT id, name, type_name, stage_name FROM vw_cards_detailed;

-- Selecionar dados de ataque (nome, ataque, dano)
SELECT name, attack, damage FROM vw_cards_detailed;

-- Selecionar dados da coleção (nome, collection_set_name, release_date)
SELECT name, collection_set_name, release_date FROM vw_cards_detailed;

-- Selecionar com filtro - cartas de um tipo específico
SELECT id, name, type_name FROM vw_cards_detailed WHERE type_name = 'Water';

-- Selecionar com ordenação - cartas por nome
SELECT id, name, type_name, hp FROM vw_cards_detailed ORDER BY name;

-- Selecionar com limite - top 10 cartas
SELECT id, name, type_name, hp FROM vw_cards_detailed LIMIT 10;
