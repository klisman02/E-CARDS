-- Popular dados básicos
-- INSERT INTO tbl_types (type_name) VALUES ('Fire'), ('Water'), ('Grass'), ('Electric'), ('Psychic'), ('Fighting'), ('Colorless');
-- INSERT INTO tbl_stages (stage_name) VALUES ('Basic'), ('Stage 1'), ('Stage 2'), ('VMAX'), ('VSTAR');

-- Inserir coleções de exemplo
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Base Set 2', '2000-02-24', 130),
('Team Rocket', '2000-04-24', 82),
('Gym Heroes', '2000-08-18', 132),
('Gym Challenge', '2000-10-16', 132),
('Neo Genesis', '2000-12-16', 111),
('Neo Discovery', '2001-06-20', 113),
('Neo Revelation', '2001-10-08', 113);

-- Cartas de exemplo com tipos e estágios variados
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
('Charizard', 120, 1, 3, 'Pokémon Stage 2 Evolved from Charmeleon', 'Fire Spin', 100, 'Water', 'Fighting', 1, 4, 11),
('Blastoise', 100, 2, 3, 'Pokémon Stage 2 Evolved from Wartortle', 'Hydro Pump', 60, 'Electric', 'Fighting', 1, 2, 11),
('Venusaur', 80, 3, 3, 'Pokémon Stage 2 Evolved from Ivysaur', 'Solar Beam', 60, 'Fire', 'Fighting', 1, 15, 11),
('Pikachu', 40, 4, 1, 'Pokémon Basic Electric Mouse', 'Thunder Shock', 10, 'Fighting', 'Metal', 1, 25, 11),
('Mewtwo', 60, 5, 1, 'Pokémon Basic Psychic', 'Psychic', 20, 'Darkness', 'Fighting', 2, 10, 11),

('Venomoth', 70, 3, 2, 'Pokémon Stage 1 Evolved from Venonat', 'Poison Powder', 20, 'Fire', 'Fighting', 1, 13, 12),
('Arcanine', 70, 1, 1, 'Pokémon Stage 1 Evolved from Growlithe', 'Flame Tail', 30, 'Water', 'Grass', 1, 23, 12),
('Dragonite', 100, 6, 3, 'Pokémon Stage 2 Evolved from Dragonair', 'Dragon Rage', 70, 'Ice', 'Fighting', 2, 5, 12),

('Lapras', 60, 2, 1, 'Pokémon Stage 1 Evolved from Lapras', 'Hydro Pump', 40, 'Electric', 'Metal', 1, 16, 13),
('Raichu', 80, 4, 1, 'Pokémon Stage 1 Evolved from Pikachu', 'Thunder Force', 50, 'Fighting', 'Metal', 1, 14, 13),
('Machamp', 70, 6, 3, 'Pokémon Stage 2 Evolved from Machoke', 'Submission', 40, 'Psychic', 'Normal', 1, 7, 13),

('Alakazam', 60, 5, 2, 'Pokémon Stage 2 Evolved from Kadabra', 'Confuse Ray', 30, 'Darkness', 'Fighting', 1, 1, 14),
('Clefable', 70, 7, 1, 'Pokémon Stage 1 Evolved from Clefairy', 'Metronome', 20, 'Metal', 'Darkness', 1, 5, 14),

('Dark Charizard', 120, 1, 3, 'Pokémon Dark Stage 2', 'Dark Fire Spin', 80, 'Water', 'Grass', 1, 4, 15),
('Dark Blastoise', 100, 2, 3, 'Pokémon Dark Stage 2', 'Dark Hydro Pump', 60, 'Electric', 'Metal', 1, 3, 15),

('Lt. Surge Pikachu', 40, 4, 1, 'Pokémon Gym Hero Basic', 'High Voltage', 20, 'Fighting', 'Metal', 1, 25, 16),
('Brock Onix', 70, 5, 1, 'Pokémon Gym Hero Stage 1', 'Rock Throw', 30, 'Water', 'Normal', 1, 15, 16),

('Erika Vileplume', 80, 3, 2, 'Pokémon Gym Challenger Stage 2', 'Flower Scent', 40, 'Fire', 'Water', 1, 8, 17),
('Sabrina Alakazam', 60, 5, 2, 'Pokémon Gym Challenger Stage 2', 'Synchronize', 50, 'Darkness', 'Fighting', 1, 6, 17),

('Feraligatr', 80, 2, 3, 'Pokémon Neo Stage 2', 'Waterfall', 50, 'Electric', 'Metal', 1, 12, 18),
('Typhlosion', 90, 1, 3, 'Pokémon Neo Stage 2', 'Eruption', 60, 'Water', 'Grass', 1, 7, 18),

('Ampharos', 80, 4, 2, 'Pokémon Neo Stage 2', 'Light Beam', 40, 'Fighting', 'Metal', 1, 3, 19),
('Houndoom', 80, 1, 2, 'Pokémon Neo Stage 2', 'Dark Flame', 50, 'Water', 'Grass', 1, 11, 19),

('Entei', 70, 1, 1, 'Pokémon Neo Legend Basic', 'Extreme Speed', 80, 'Water', 'Grass', 1, 34, 20),
('Raikou', 60, 4, 1, 'Pokémon Neo Legend Basic', 'Lightning Strike', 70, 'Fighting', 'Metal', 1, 28, 20);
