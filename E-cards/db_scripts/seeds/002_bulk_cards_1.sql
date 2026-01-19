-- Inserção de mais cartas na tabela tbl_cards

-- Continuação: Mais 20 cartas de exemplo
INSERT INTO tbl_cards (name, hp, type_id, stage_id, info, attack, damage, weak, resistence, retreat, card_number_in_collection, collection_id) VALUES
-- Coleção 1: Base Set (continuação)
('Dragonite', 100, 7, 3, 'Pokémon Stage 2 Evolved from Dragonair', 'Dragon Rage', 70, 'Ice', 'Fighting', 2, 5, 11),
('Gyarados', 100, 2, 1, 'Pokémon Stage 1 Evolved from Magikarp', 'Hydro Pump', 30, 'Electric', 'Metal', 1, 6, 11),
('Arcanine', 70, 1, 1, 'Pokémon Stage 1 Evolved from Growlithe', 'Flame Tail', 30, 'Water', 'Grass', 1, 23, 11),

-- Coleção 2: Jungle (continuação)
('Electrode', 80, 4, 1, 'Pokémon Stage 1 Evolved from Voltorb', 'Thunder Bolt', 40, 'Fighting', 'Metal', 1, 20, 12),
('Flareon', 60, 1, 1, 'Pokémon Stage 1 Evolved from Eevee', 'Flame Charge', 30, 'Water', 'Grass', 1, 12, 12),
('Vaporeon', 70, 2, 1, 'Pokémon Stage 1 Evolved from Eevee', 'Hydro Jet', 40, 'Electric', 'Metal', 1, 18, 12),

-- Coleção 3: Fossil (continuação)
('Aerodactyl', 60, 7, 1, 'Pokémon Stage 1 Fossil', 'Prehistoric Roar', 30, 'Water', 'Fighting', 1, 1, 13),
('Articuno', 60, 2, 1, 'Pokémon Basic Legendary', 'Ice Breath', 30, 'Electric', 'Fighting', 1, 3, 13),
('Zapdos', 70, 4, 1, 'Pokémon Basic Legendary', 'Thunder Wing', 50, 'Fighting', 'Metal', 1, 30, 13),

-- Coleção 4: Base Set 2 (continuação)
('Moltres', 70, 1, 1, 'Pokémon Basic Legendary', 'Flame Jet', 50, 'Water', 'Grass', 1, 12, 14),
('Exeggutor', 60, 3, 1, 'Pokémon Stage 1 Evolved from Exeggcute', 'Tropical Shake', 40, 'Fire', 'Water', 1, 9, 14),
('Golem', 80, 5, 2, 'Pokémon Stage 2 Evolved from Graveler', 'Stone Edge', 50, 'Water', 'Normal', 2, 11, 14),

-- Coleção 5: Team Rocket (continuação)
('Dark Vileplume', 70, 3, 2, 'Pokémon Dark Stage 2', 'Dark Toxins', 40, 'Fire', 'Water', 1, 7, 15),
('Dark Arcanine', 70, 1, 1, 'Pokémon Dark Stage 1', 'Dark Flame Tail', 40, 'Water', 'Grass', 1, 18, 15),
('Dark Machamp', 70, 6, 3, 'Pokémon Dark Stage 2', 'Dark Submission', 50, 'Psychic', 'Normal', 1, 14, 15),

-- Coleção 6: Gym Heroes (continuação)
('Misty Golduck', 60, 2, 1, 'Pokémon Gym Hero Stage 1', 'Water Stream', 40, 'Electric', 'Metal', 1, 28, 16),
('Erika Dragonite', 100, 7, 3, 'Pokémon Gym Hero Stage 2', 'Dragon Force', 80, 'Ice', 'Fighting', 2, 4, 16),

-- Coleção 7: Gym Challenge (continuação)
('Blaine Arcanine', 80, 1, 1, 'Pokémon Gym Challenger Stage 1', 'Inferno Charge', 60, 'Water', 'Grass', 1, 5, 17),
('Giovanni Machamp', 90, 6, 3, 'Pokémon Gym Challenger Stage 2', 'Dark Power', 70, 'Psychic', 'Normal', 1, 9, 17),
('Koga Weezing', 80, 7, 2, 'Pokémon Gym Challenger Stage 2', 'Poison Gas', 50, 'Psychic', 'Fighting', 1, 13, 17);