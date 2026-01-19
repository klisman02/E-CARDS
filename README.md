Here is the translation of your project documentation into English:E-cards 🎴A trading card management system powered by a PostgreSQL database. It stores collections, types, stages, and card details using optimized relationships.📋 DescriptionE-cards is a database project designed to manage Trading Card Game (TCG) collections. The system allows for storing detailed information about cards, including attributes, types, evolution stages, and their respective collections.🗄️ Database StructureMain Tablestbl_collections: Stores card sets/collections.tbl_types: Card types (Water, Fire, Grass, etc.).tbl_stages: Evolution stages of the cards.tbl_cards: Detailed card data with relational mapping.Relationshipstbl_cards (N) ---> (1) tbl_collections
tbl_cards (N) ---> (1) tbl_types
tbl_cards (N) ---> (1) tbl_stages
📁 Project StructureE-cards/
├── db_scripts/
│   ├── tables/
│   │   ├── 001_create_card_table.sql
│   │   └── migration.sql
│   ├── seeds/
│   │   ├── 001_initial_seeds.sql
│   │   ├── 002_bulk_cards_1.sql
│   │   ├── 003_bulk_cards_2.sql
│   │   ├── 004_bulk_cards_3.sql
│   │   └── migration.sql
│   └── to_migration.ps1
├── views/
│   ├── 001_view_cards.sql
│   └── 002_selects_vw_cards_detailed.sql
├── prompts/
│   └── tcg-cards.txt
└── readme.md
🔍 Available Viewsvw_cards_detailedA view that displays all card information, replacing foreign key IDs with their corresponding names:SQLSELECT 
    c.id, c.hp, c.name, t.type_name, s.stage_name, c.info,
    c.attack, c.damage, c.weak, c.resistence, c.retreat,
    c.card_number_in_collection, col.collection_set_name, col.release_date
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id
JOIN tbl_collections col ON c.collection_id = col.id;
🚀 How to Use1. Create TablesBashpsql -U your_user -d your_database -f db_scripts/tables/001_create_card_table.sql
2. Populate the Database (Seeds)Bashpsql -U your_user -d your_database -f db_scripts/seeds/001_initial_seeds.sql
psql -U your_user -d your_database -f db_scripts/seeds/002_bulk_cards_1.sql
psql -U your_user -d your_database -f db_scripts/seeds/003_bulk_cards_2.sql
psql -U your_user -d your_database -f db_scripts/seeds/004_bulk_cards_3.sql
3. Create the ViewBashpsql -U your_user -d your_database -f views/001_view_cards.sql
💾 tbl_cards Field DefinitionsFieldTypeDescriptionidSERIALUnique identifierhpINTHit PointsnameVARCHAR(255)Card nametype_idINTReference to typestage_idINTReference to stageinfoTEXTAdditional information/flavor textattackVARCHAR(255)Attack namedamageINTDamage dealtweakVARCHAR(100)WeaknessresistenceVARCHAR(100)ResistanceretreatINTRetreat costcard_number_in_collectionINTCard number within the setcollection_idINTReference to collection📊 Performance IndicesThe project includes indices on the most frequently queried columns:idx_cards_collection_ididx_cards_type_ididx_cards_stage_ididx_cards_name🛠️ RequirementsPostgreSQL 12+Terminal/PowerShell access to execute scripts📝 Migration ScriptsThe project includes PowerShell scripts to streamline migrations:db_scripts/tables/to_migration.ps1db_scripts/seeds/to_migration.ps1📄 LicenseFree for personal and educational use.Developed on: January 18, 2026
