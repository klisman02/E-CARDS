-- Criar VIEW para exibir cards com nomes das chaves estrangeiras
CREATE OR REPLACE VIEW vw_cards_detailed AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.type_name,
    s.stage_name,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resistence,
    c.retreat,
    c.card_number_in_collection,
    col.collection_set_name,
    col.release_date
FROM tbl_cards c
INNER JOIN tbl_types t ON c.type_id = t.id
INNER JOIN tbl_stages s ON c.stage_id = s.id
INNER JOIN tbl_collections col ON c.collection_id = col.id;