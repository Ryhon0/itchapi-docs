# GET /games/{id}

## Parameters
### {id}
The ID of the game.

## Returns
| Field | Type | Description |
|---|---|---|
| game | [Game](#game-type) | The game |

### Game type
| Field | Type | Description |
|---|---|---|
| id | int64 | The game ID |
| title | string | The game title |
| url | string | URL for the game page |
| short_text | string | The short description of the game |
| created_at | DateTime | The time the game page was created |
| published_at | DateTime | The time the game page has been made public |
| user | [User](/API/V2/Profile/profile.html) | The creator's profile |
| min_price | int64 | The minimum price of the game, in cents. ( There is no way to tell what curreny ) |
| sale | [Sale](#sale-type) | |
| classification | string | The classification of this item, one of game, assets, game_mod, physical_game, soundtrack, other, tool, comic, book |
| type | string | The game type, one of default, unity, flash |
| traits | string[] | V2 only. V1 uses fields with bools instead. One of the following: can_be_bought, has_demo, in_press_system, p_android, p_linux, p_windows, p_osx |

### Sale type
| Field | Type | Description |
|---|---|---|
| id | int64 | The ID of the sale |
| rate | float64 | The sale rate, in percent (10 for 10%, 100 for 100%). If equal to 0, the game is in a bundle |
| end_date | DateTime | The time the sale ends at |
| start_date | DateTime | The time the sale started at |