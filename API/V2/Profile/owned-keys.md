# GET /profile/owned-keys

## Parameters
### page
The page number to return.  

## Returns
| Field | Type | Description |
|---|---|---|
| page | int64 | The requested page number |
| per_page | int64 | The number of keys per page (50 for V2, 500 for V1) |
| owned_keys | [OwnedKey](#ownedkey-type) | List of  |

### OwnedKey type
| Field | Type | Description |
|---|---|---|
| id | int64 | The download key |
| game_id | int64 | The game ID |
| downloads | int64 | The amount of times you have downloaded this game |
| game | [Game](/API/V2/Games/game.html#game-type) | The game the key is for |
| updated_at | DateTime | The time you've purchased this game or upgraded to higher tier |
| created_at | DateTime | The time you've purchased this game |