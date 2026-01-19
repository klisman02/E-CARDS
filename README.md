# E-cards 🎴

Sistema de gerenciamento de cartas colecionáveis com banco de dados PostgreSQL. Armazena coleções, tipos, estágios e detalhes de cartas com relacionamentos otimizados.

## 📋 Descrição

E-cards é um projeto de banco de dados para gerenciar coleções de cartas colecionáveis (TCG - Trading Card Game). O sistema permite armazenar informações detalhadas sobre cartas, incluindo atributos, tipos, estágios de evolução e pertencimento a coleções específicas.

## 🗄️ Estrutura do Banco de Dados

### Tabelas Principais

- **tbl_collections**: Armazena as coleções/sets de cartas
- **tbl_types**: Tipos de cartas (Água, Fogo, Grama, etc.)
- **tbl_stages**: Estágios de evolução das cartas
- **tbl_cards**: Dados detalhados das cartas com relacionamentos

### Relacionamentos

```
tbl_cards (N) ---> (1) tbl_collections
tbl_cards (N) ---> (1) tbl_types
tbl_cards (N) ---> (1) tbl_stages
```

## 📁 Estrutura do Projeto

```
E-cards/
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
```

## 🔍 Views Disponíveis

### vw_cards_detailed
View que exibe todas as informações das cartas com os nomes das chaves estrangeiras substituindo os IDs:

```sql
SELECT 
    c.id, c.hp, c.name, t.type_name, s.stage_name, c.info,
    c.attack, c.damage, c.weak, c.resistence, c.retreat,
    c.card_number_in_collection, col.collection_set_name, col.release_date
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id
JOIN tbl_collections col ON c.collection_id = col.id;
```

## 🚀 Como Usar

### 1. Criar as Tabelas
```bash
psql -U seu_usuario -d seu_banco -f db_scripts/tables/001_create_card_table.sql
```

### 2. Popular o Banco com Seeds
```bash
psql -U seu_usuario -d seu_banco -f db_scripts/seeds/001_initial_seeds.sql
psql -U seu_usuario -d seu_banco -f db_scripts/seeds/002_bulk_cards_1.sql
psql -U seu_usuario -d seu_banco -f db_scripts/seeds/003_bulk_cards_2.sql
psql -U seu_usuario -d seu_banco -f db_scripts/seeds/004_bulk_cards_3.sql
```

### 3. Criar a View
```bash
psql -U seu_usuario -d seu_banco -f views/001_view_cards.sql
```

## 💾 Campos da Tabela tbl_cards

| Campo | Tipo | Descrição |
|-------|------|-----------|
| id | SERIAL | Identificador único |
| hp | INT | Pontos de vida |
| name | VARCHAR(255) | Nome da carta |
| type_id | INT | Referência ao tipo |
| stage_id | INT | Referência ao estágio |
| info | TEXT | Informações adicionais |
| attack | VARCHAR(255) | Nome do ataque |
| damage | INT | Dano causado |
| weak | VARCHAR(100) | Fraqueza |
| resistence | VARCHAR(100) | Resistência |
| retreat | INT | Custo de retração |
| card_number_in_collection | INT | Número da carta na coleção |
| collection_id | INT | Referência à coleção |

## 📊 Índices para Performance

O projeto inclui índices nas colunas mais consultadas:
- `idx_cards_collection_id`
- `idx_cards_type_id`
- `idx_cards_stage_id`
- `idx_cards_name`

## 🛠️ Requisitos

- PostgreSQL 12+
- Acesso a terminal/PowerShell para executar scripts

## 📝 Scripts de Migração

O projeto inclui scripts PowerShell para facilitar as migrações:
- `db_scripts/tables/to_migration.ps1`
- `db_scripts/seeds/to_migration.ps1`

## 📄 Licença

Projeto livre para uso pessoal e educacional.

---

**Desenvolvido em**: 18 de janeiro de 2026
