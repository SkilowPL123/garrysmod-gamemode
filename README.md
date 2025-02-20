# HL2RP Gamemode

## Opis

HL2RP to gamemode stworzony dla gry Garry's Mod, inspirowany frameworkiem Helix, z nastawieniem na interakcje z graczami i rozbudowane systemy. Gamemode jest skierowany do trybu Half-Life 2 Roleplay.

## Struktura Projektu

```
my_hl2rp_gamemode/
├── gamemode/
│   ├── cl_init.lua
│   ├── init.lua
│   ├── shared.lua
│   ├── modules/
│   │   ├── character/
│   │   │   ├── client/
│   │   │   │   ├── cl_character.lua
│   │   │   ├── server/
│   │   │   │   ├── sv_character.lua
│   │   │   ├── entities/
│   │   │   ├── items/
│   │   │   ├── config/
│   │   │   │   ├── characters.lua
│   │   ├── combat/
│   │   │   ├── client/
│   │   │   │   ├── cl_combat.lua
│   │   │   ├── server/
│   │   │   │   ├── sv_combat.lua
│   │   │   ├── entities/
│   │   │   ├── items/
│   │   │   ├── config/
│   │   │   │   ├── combat.lua
│   │   ├── inventory/
│   │   │   ├── client/
│   │   │   │   ├── cl_inventory.lua
│   │   │   ├── server/
│   │   │   │   ├── sv_inventory.lua
│   │   │   ├── entities/
│   │   │   ├── items/
│   │   │   ├── config/
│   │   │   │   ├── items.lua
│   │   ├── interaction/
│   │   │   ├── client/
│   │   │   │   ├── cl_interaction.lua
│   │   │   ├── server/
│   │   │   │   ├── sv_interaction.lua
│   │   │   ├── entities/
│   │   │   ├── items/
│   │   │   ├── config/
│   │   ├── factions/
│   │   │   ├── client/
│   │   │   │   ├── cl_factions.lua
│   │   │   ├── server/
│   │   │   │   ├── sv_factions.lua
│   │   │   ├── config/
│   │   │   │   ├── factions.lua
│   ├── database/
│   │   ├── sv_database.lua
│   └── resources/
│       ├── materials/
│       └── models/
└── README.md
```

## Instalacja

1. Skopiuj folder `my_hl2rp_gamemode` do folderu `garrysmod/gamemodes/`.
2. Utwórz bazę danych `hl2rp` i skonfiguruj połączenie w pliku `sv_database.lua`.
3. Uruchom Garry's Mod i wybierz `HL2RP` z listy dostępnych gamemode'ów.

## Rozwój

Projekt jest w fazie wstępnej i jest aktywnie rozwijany. Zapraszamy do współpracy i zgłaszania błędów oraz propozycji usprawnień.

## Licencja

Projekt jest dostępny na licencji MIT. Szczegóły znajdują się w pliku `LICENSE`.