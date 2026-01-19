-- ===== 001_initial_seeds.sql =====
-- Popular dados bÃ¡sicos
-- INSERT INTO tbl_types (type_name) VALUES ('Fire'), ('Water'), ('Grass'), ('Electric'), ('Psychic'), ('Fighting'), ('Colorless');
-- INSERT INTO tbl_stages (stage_name) VALUES ('Basic'), ('Stage 1'), ('Stage 2'), ('VMAX'), ('VSTAR');

-- Inserir coleÃ§Ãµes de exemplo
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

-- Cartas de exemplo com tipos e estÃ¡gios variados
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
('Charizard', 120, 1, 3, 'PokÃ©mon Stage 2 Evolved from Charmeleon', 'Fire Spin', 100, 'Water', 'Fighting', 1, 4, 11),
('Blastoise', 100, 2, 3, 'PokÃ©mon Stage 2 Evolved from Wartortle', 'Hydro Pump', 60, 'Electric', 'Fighting', 1, 2, 11),
('Venusaur', 80, 3, 3, 'PokÃ©mon Stage 2 Evolved from Ivysaur', 'Solar Beam', 60, 'Fire', 'Fighting', 1, 15, 11),
('Pikachu', 40, 4, 1, 'PokÃ©mon Basic Electric Mouse', 'Thunder Shock', 10, 'Fighting', 'Metal', 1, 25, 11),
('Mewtwo', 60, 5, 1, 'PokÃ©mon Basic Psychic', 'Psychic', 20, 'Darkness', 'Fighting', 2, 10, 11),

('Venomoth', 70, 3, 2, 'PokÃ©mon Stage 1 Evolved from Venonat', 'Poison Powder', 20, 'Fire', 'Fighting', 1, 13, 12),
('Arcanine', 70, 1, 1, 'PokÃ©mon Stage 1 Evolved from Growlithe', 'Flame Tail', 30, 'Water', 'Grass', 1, 23, 12),
('Dragonite', 100, 6, 3, 'PokÃ©mon Stage 2 Evolved from Dragonair', 'Dragon Rage', 70, 'Ice', 'Fighting', 2, 5, 12),

('Lapras', 60, 2, 1, 'PokÃ©mon Stage 1 Evolved from Lapras', 'Hydro Pump', 40, 'Electric', 'Metal', 1, 16, 13),
('Raichu', 80, 4, 1, 'PokÃ©mon Stage 1 Evolved from Pikachu', 'Thunder Force', 50, 'Fighting', 'Metal', 1, 14, 13),
('Machamp', 70, 6, 3, 'PokÃ©mon Stage 2 Evolved from Machoke', 'Submission', 40, 'Psychic', 'Normal', 1, 7, 13),

('Alakazam', 60, 5, 2, 'PokÃ©mon Stage 2 Evolved from Kadabra', 'Confuse Ray', 30, 'Darkness', 'Fighting', 1, 1, 14),
('Clefable', 70, 7, 1, 'PokÃ©mon Stage 1 Evolved from Clefairy', 'Metronome', 20, 'Metal', 'Darkness', 1, 5, 14),

('Dark Charizard', 120, 1, 3, 'PokÃ©mon Dark Stage 2', 'Dark Fire Spin', 80, 'Water', 'Grass', 1, 4, 15),
('Dark Blastoise', 100, 2, 3, 'PokÃ©mon Dark Stage 2', 'Dark Hydro Pump', 60, 'Electric', 'Metal', 1, 3, 15),

('Lt. Surge Pikachu', 40, 4, 1, 'PokÃ©mon Gym Hero Basic', 'High Voltage', 20, 'Fighting', 'Metal', 1, 25, 16),
('Brock Onix', 70, 5, 1, 'PokÃ©mon Gym Hero Stage 1', 'Rock Throw', 30, 'Water', 'Normal', 1, 15, 16),

('Erika Vileplume', 80, 3, 2, 'PokÃ©mon Gym Challenger Stage 2', 'Flower Scent', 40, 'Fire', 'Water', 1, 8, 17),
('Sabrina Alakazam', 60, 5, 2, 'PokÃ©mon Gym Challenger Stage 2', 'Synchronize', 50, 'Darkness', 'Fighting', 1, 6, 17),

('Feraligatr', 80, 2, 3, 'PokÃ©mon Neo Stage 2', 'Waterfall', 50, 'Electric', 'Metal', 1, 12, 18),
('Typhlosion', 90, 1, 3, 'PokÃ©mon Neo Stage 2', 'Eruption', 60, 'Water', 'Grass', 1, 7, 18),

('Ampharos', 80, 4, 2, 'PokÃ©mon Neo Stage 2', 'Light Beam', 40, 'Fighting', 'Metal', 1, 3, 19),
('Houndoom', 80, 1, 2, 'PokÃ©mon Neo Stage 2', 'Dark Flame', 50, 'Water', 'Grass', 1, 11, 19),

('Entei', 70, 1, 1, 'PokÃ©mon Neo Legend Basic', 'Extreme Speed', 80, 'Water', 'Grass', 1, 34, 20),
('Raikou', 60, 4, 1, 'PokÃ©mon Neo Legend Basic', 'Lightning Strike', 70, 'Fighting', 'Metal', 1, 28, 20);

-- ===== END =====

-- ===== 002_bulk_cards_1.sql =====
-- InserÃ§Ã£o de mais cartas na tabela tbl_cards

-- ContinuaÃ§Ã£o: Mais 20 cartas de exemplo
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
-- ColeÃ§Ã£o 1: Base Set (continuaÃ§Ã£o)
('Dragonite', 100, 7, 3, 'PokÃ©mon Stage 2 Evolved from Dragonair', 'Dragon Rage', 70, 'Ice', 'Fighting', 2, 5, 11),
('Gyarados', 100, 2, 1, 'PokÃ©mon Stage 1 Evolved from Magikarp', 'Hydro Pump', 30, 'Electric', 'Metal', 1, 6, 11),
('Arcanine', 70, 1, 1, 'PokÃ©mon Stage 1 Evolved from Growlithe', 'Flame Tail', 30, 'Water', 'Grass', 1, 23, 11),

-- ColeÃ§Ã£o 2: Jungle (continuaÃ§Ã£o)
('Electrode', 80, 4, 1, 'PokÃ©mon Stage 1 Evolved from Voltorb', 'Thunder Bolt', 40, 'Fighting', 'Metal', 1, 20, 12),
('Flareon', 60, 1, 1, 'PokÃ©mon Stage 1 Evolved from Eevee', 'Flame Charge', 30, 'Water', 'Grass', 1, 12, 12),
('Vaporeon', 70, 2, 1, 'PokÃ©mon Stage 1 Evolved from Eevee', 'Hydro Jet', 40, 'Electric', 'Metal', 1, 18, 12),

-- ColeÃ§Ã£o 3: Fossil (continuaÃ§Ã£o)
('Aerodactyl', 60, 7, 1, 'PokÃ©mon Stage 1 Fossil', 'Prehistoric Roar', 30, 'Water', 'Fighting', 1, 1, 13),
('Articuno', 60, 2, 1, 'PokÃ©mon Basic Legendary', 'Ice Breath', 30, 'Electric', 'Fighting', 1, 3, 13),
('Zapdos', 70, 4, 1, 'PokÃ©mon Basic Legendary', 'Thunder Wing', 50, 'Fighting', 'Metal', 1, 30, 13),

-- ColeÃ§Ã£o 4: Base Set 2 (continuaÃ§Ã£o)
('Moltres', 70, 1, 1, 'PokÃ©mon Basic Legendary', 'Flame Jet', 50, 'Water', 'Grass', 1, 12, 14),
('Exeggutor', 60, 3, 1, 'PokÃ©mon Stage 1 Evolved from Exeggcute', 'Tropical Shake', 40, 'Fire', 'Water', 1, 9, 14),
('Golem', 80, 5, 2, 'PokÃ©mon Stage 2 Evolved from Graveler', 'Stone Edge', 50, 'Water', 'Normal', 2, 11, 14),

-- ColeÃ§Ã£o 5: Team Rocket (continuaÃ§Ã£o)
('Dark Vileplume', 70, 3, 2, 'PokÃ©mon Dark Stage 2', 'Dark Toxins', 40, 'Fire', 'Water', 1, 7, 15),
('Dark Arcanine', 70, 1, 1, 'PokÃ©mon Dark Stage 1', 'Dark Flame Tail', 40, 'Water', 'Grass', 1, 18, 15),
('Dark Machamp', 70, 6, 3, 'PokÃ©mon Dark Stage 2', 'Dark Submission', 50, 'Psychic', 'Normal', 1, 14, 15),

-- ColeÃ§Ã£o 6: Gym Heroes (continuaÃ§Ã£o)
('Misty Golduck', 60, 2, 1, 'PokÃ©mon Gym Hero Stage 1', 'Water Stream', 40, 'Electric', 'Metal', 1, 28, 16),
('Erika Dragonite', 100, 7, 3, 'PokÃ©mon Gym Hero Stage 2', 'Dragon Force', 80, 'Ice', 'Fighting', 2, 4, 16),

-- ColeÃ§Ã£o 7: Gym Challenge (continuaÃ§Ã£o)
('Blaine Arcanine', 80, 1, 1, 'PokÃ©mon Gym Challenger Stage 1', 'Inferno Charge', 60, 'Water', 'Grass', 1, 5, 17),
('Giovanni Machamp', 90, 6, 3, 'PokÃ©mon Gym Challenger Stage 2', 'Dark Power', 70, 'Psychic', 'Normal', 1, 9, 17),
('Koga Weezing', 80, 7, 2, 'PokÃ©mon Gym Challenger Stage 2', 'Poison Gas', 50, 'Psychic', 'Fighting', 1, 13, 17);

-- ===== END =====

-- ===== 003_bulk_cards_2.sql =====


-- Mais 30 cartas de exemplo
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
-- ColeÃ§Ã£o 8: Neo Genesis (continuaÃ§Ã£o)
('Crobat', 70, 7, 2, 'PokÃ©mon Stage 2 Evolved from Golbat', 'Night Wing', 40, 'Electric', 'Fighting', 1, 5, 18),
('Kingdra', 80, 2, 2, 'PokÃ©mon Stage 2 Evolved from Seadra', 'Dragon Dance', 50, 'Electric', 'Fire', 1, 18, 18),
('Politoed', 70, 2, 1, 'PokÃ©mon Stage 1 Evolved from Poliwag', 'Waterfall', 30, 'Electric', 'Metal', 1, 26, 18),
('Espeon', 60, 5, 1, 'PokÃ©mon Stage 1 Evolved from Eevee', 'Psychic', 40, 'Darkness', 'Fighting', 1, 31, 18),
('Umbreon', 60, 7, 1, 'PokÃ©mon Stage 1 Evolved from Eevee', 'Dark Pulse', 30, 'Fighting', 'Darkness', 1, 8, 18),

-- ColeÃ§Ã£o 9: Neo Discovery (continuaÃ§Ã£o)
('Typhlosion Prime', 100, 1, 3, 'PokÃ©mon Lv.X Stage 3', 'Eruption Burst', 80, 'Water', 'Grass', 1, 45, 19),
('Hitmontop', 70, 6, 1, 'PokÃ©mon Stage 1 Evolved from Hitmonlee', 'Rapid Spin', 50, 'Psychic', 'Normal', 1, 27, 19),
('Scizor', 80, 5, 1, 'PokÃ©mon Stage 1 Evolved from Scyther', 'Bullet Punch', 60, 'Fire', 'Psychic', 1, 15, 19),
('Porygon2', 60, 7, 1, 'PokÃ©mon Stage 1 Evolved from Porygon', 'Digital Attack', 40, 'None', 'None', 1, 32, 19),
('Octillery', 70, 2, 1, 'PokÃ©mon Stage 1 Evolved from Remoraid', 'Ink Cloud', 50, 'Electric', 'Metal', 1, 29, 19),

-- ColeÃ§Ã£o 10: Neo Revelation (continuaÃ§Ã£o)
('Suicune', 70, 2, 1, 'PokÃ©mon Neo Legend Basic', 'Aqua Cutter', 60, 'Electric', 'Metal', 1, 39, 20),
('Ho-Oh', 80, 1, 1, 'PokÃ©mon Neo Legend Basic', 'Rainbow Burn', 90, 'Water', 'Fighting', 2, 20, 20),
('Lugia', 90, 2, 1, 'PokÃ©mon Neo Legend Basic', 'Aeroblast', 100, 'Electric', 'Fighting', 2, 25, 20),
('Celebi', 60, 3, 1, 'PokÃ©mon Neo Legend Basic', 'Leaf Guard', 30, 'Fire', 'Water', 2, 10, 20),

-- ColeÃ§Ã£o 1: Base Set (mais registros)
('Nidoking', 80, 7, 2, 'PokÃ©mon Stage 2 Evolved from Nidorino', 'Thrash', 50, 'Water', 'Fighting', 2, 11, 11),
('Nidoqueen', 80, 7, 2, 'PokÃ©mon Stage 2 Evolved from Nidorina', 'Earthquake', 60, 'Water', 'Fighting', 2, 31, 11),
('Lapras', 60, 2, 1, 'PokÃ©mon Stage 1 Evolved from Lapras', 'Hydro Pump', 40, 'Electric', 'Metal', 1, 16, 11),
('Gengar', 80, 5, 2, 'PokÃ©mon Stage 2 Evolved from Haunter', 'Shadow Strike', 50, 'Darkness', 'Fighting', 1, 5, 11),

-- ColeÃ§Ã£o 2: Jungle (mais registros)
('Wigglytuff', 80, 7, 1, 'PokÃ©mon Stage 1 Evolved from Jigglypuff', 'Do the Wiggle', 30, 'Fighting', 'Darkness', 1, 32, 12),
('Vileplume', 80, 3, 2, 'PokÃ©mon Stage 2 Evolved from Gloom', 'Petal Whirlwind', 40, 'Fire', 'Water', 1, 14, 12),
('Victreebel', 80, 3, 2, 'PokÃ©mon Stage 2 Evolved from Weepinbell', 'Razor Leaf', 50, 'Fire', 'Water', 1, 22, 12),

-- ColeÃ§Ã£o 3: Fossil (mais registros)
('Kabutops', 60, 5, 2, 'PokÃ©mon Stage 2 Evolved from Kabuto', 'Slashing Claw', 40, 'Water', 'Fighting', 1, 10, 13),
('Omastar', 60, 2, 2, 'PokÃ©mon Stage 2 Evolved from Omanyte', 'Hydro Cannon', 50, 'Electric', 'Metal', 1, 33, 13),
('Muk', 80, 7, 1, 'PokÃ©mon Stage 1 Evolved from Grimer', 'Sludge Bomb', 40, 'Psychic', 'None', 2, 29, 13),

-- ColeÃ§Ã£o 4: Base Set 2 (mais registros)
('Arbok', 60, 7, 1, 'PokÃ©mon Stage 1 Evolved from Ekans', 'Poison Fang', 40, 'Psychic', 'Grass', 1, 13, 14),
('Rhydon', 100, 5, 2, 'PokÃ©mon Stage 2 Evolved from Rhyhorn', 'Horn Drill', 60, 'Water', 'Normal', 2, 111, 14),
('Jolteon', 60, 4, 1, 'PokÃ©mon Stage 1 Evolved from Eevee', 'Thunder Bolt', 50, 'Fighting', 'Metal', 1, 24, 14),
('Ninetales', 80, 1, 1, 'PokÃ©mon Stage 1 Evolved from Vulpix', 'Fire Tail', 50, 'Water', 'Grass', 1, 89, 14),
('Lapras', 60, 2, 1, 'PokÃ©mon Stage 1 Evolved from Lapras', 'Hydro Pump', 40, 'Electric', 'Metal', 1, 16, 14);

-- ===== END =====

-- ===== 004_bulk_cards_3.sql =====

-- Mais 30 cartas de exemplo
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
-- ColeÃ§Ã£o 5: Team Rocket (mais registros)
('Dark Dugtrio', 70, 5, 2, 'PokÃ©mon Dark Stage 2 Evolved from Diglett', 'Dark Earthquake', 60, 'Water', 'Electric', 1, 19, 15),
('Dark Golem', 80, 5, 2, 'PokÃ©mon Dark Stage 2 Evolved from Graveler', 'Dark Stone Edge', 50, 'Water', 'Normal', 2, 23, 15),
('Dark Hypno', 70, 5, 2, 'PokÃ©mon Dark Stage 2 Evolved from Drowzee', 'Dark Hypnosis', 40, 'Darkness', 'Fighting', 1, 6, 15),
('Dark Weezing', 80, 7, 2, 'PokÃ©mon Dark Stage 2 Evolved from Koffing', 'Dark Toxic Cloud', 50, 'Psychic', 'Grass', 1, 24, 15),

-- ColeÃ§Ã£o 6: Gym Heroes (mais registros)
('Brock Rhydon', 100, 5, 2, 'PokÃ©mon Gym Hero Stage 2', 'Horn Drill', 80, 'Water', 'Normal', 2, 12, 16),
('Misty Seaking', 70, 2, 1, 'PokÃ©mon Gym Hero Stage 1', 'Waterfall', 50, 'Electric', 'Metal', 1, 32, 16),
('Sabrina Alakazam', 80, 5, 2, 'PokÃ©mon Gym Hero Stage 2', 'Psychic Force', 70, 'Darkness', 'Fighting', 1, 17, 16),
('Koga Arbok', 70, 7, 1, 'PokÃ©mon Gym Hero Stage 1', 'Poison Strike', 50, 'Psychic', 'Grass', 1, 8, 16),

-- ColeÃ§Ã£o 7: Gym Challenge (mais registros)
('Whitney Miltank', 80, 7, 1, 'PokÃ©mon Gym Challenger Stage 1', 'Milk Drink', 40, 'Fighting', 'Darkness', 1, 37, 17),
('Morty Gengar', 80, 5, 2, 'PokÃ©mon Gym Challenger Stage 2', 'Shadow Punch', 60, 'Darkness', 'Fighting', 1, 31, 17),
('Chuck Poliwrath', 90, 2, 2, 'PokÃ©mon Gym Challenger Stage 2', 'Hydro Pump', 70, 'Electric', 'Metal', 1, 14, 17),
('Jasmine Steelix', 80, 5, 1, 'PokÃ©mon Gym Challenger Stage 1', 'Iron Defense', 50, 'Fire', 'Psychic', 1, 19, 17),

-- ColeÃ§Ã£o 8: Neo Genesis (mais registros)
('Feraligatr Prime', 120, 2, 3, 'PokÃ©mon Lv.X Stage 3', 'Hydro Cannon', 100, 'Electric', 'Metal', 1, 42, 18),
('Meganium', 90, 3, 3, 'PokÃ©mon Neo Stage 3', 'Solar Beam', 80, 'Fire', 'Water', 1, 12, 18),
('Donphan', 80, 5, 1, 'PokÃ©mon Neo Stage 1', 'Earthquake', 60, 'Water', 'Normal', 2, 21, 18),
('Tyrogue', 40, 6, 1, 'PokÃ©mon Neo Basic', 'Punch', 20, 'Psychic', 'Normal', 1, 67, 18),

-- ColeÃ§Ã£o 9: Neo Discovery (mais registros)
('Hoothoot', 40, 7, 1, 'PokÃ©mon Neo Basic', 'Peck', 20, 'Electric', 'Dark', 1, 16, 19),
('Noctowl', 70, 7, 1, 'PokÃ©mon Neo Stage 1', 'Wise Owl', 50, 'Electric', 'Dark', 1, 21, 19),
('Ledyba', 40, 1, 1, 'PokÃ©mon Neo Basic', 'Reflect', 10, 'Water', 'Grass', 1, 55, 19),
('Ledian', 60, 1, 1, 'PokÃ©mon Neo Stage 1', 'Reflect Mirror', 40, 'Water', 'Grass', 1, 28, 19),

-- ColeÃ§Ã£o 10: Neo Revelation (mais registros)
('Wooper', 50, 2, 1, 'PokÃ©mon Neo Basic', 'Water Gun', 20, 'Electric', 'Metal', 1, 86, 20),
('Quagsire', 80, 2, 1, 'PokÃ©mon Neo Stage 1', 'Hydro Pump', 50, 'Electric', 'Metal', 1, 26, 20),
('Chinchou', 40, 2, 1, 'PokÃ©mon Neo Basic', 'Spark', 20, 'Electric', 'Metal', 1, 32, 20),
('Lanturn', 70, 2, 1, 'PokÃ©mon Neo Stage 1', 'Charge Beam', 50, 'Electric', 'Metal', 1, 15, 20),

-- ColeÃ§Ã£o 1: Base Set (mais registros extras)
('Weezing', 80, 7, 1, 'PokÃ©mon Stage 1 Evolved from Koffing', 'Sludge Bomb', 40, 'Psychic', 'Grass', 1, 34, 11),
('Hypno', 70, 5, 1, 'PokÃ©mon Stage 1 Evolved from Drowzee', 'Hypnosis', 30, 'Darkness', 'Fighting', 1, 9, 11),
('Dugtrio', 70, 5, 2, 'PokÃ©mon Stage 2 Evolved from Diglett', 'Earthquake', 60, 'Water', 'Electric', 1, 51, 11),
('Tentacruel', 60, 2, 1, 'PokÃ©mon Stage 1 Evolved from Tentacool', 'Poison Tentacles', 40, 'Electric', 'Fighting', 1, 27, 11),
('Slowbro', 80, 2, 1, 'PokÃ©mon Stage 1 Evolved from Slowpoke', 'Withdraw', 30, 'Electric', 'Psychic', 1, 80, 11);

-- ===== END =====

