# GET /profile/games
Returns a list of games you've created or are an admin of.  

## Returns
| Field | Type | Description |
|---|---|---|
| games | [MyGame](#mygame-type) | |

### MyGame type
Extends [Game](/API/V2/Games/game.html#game-type)
| Field | Type | Description |
|---|---|---|
| published | bool | |
| earnings | [Earning](#earning-type)[] | List of purchases |
| purchases_count | int64 | The amount of times users have purchased this game |
| views_count | int64 | The amount of times users have viewed this game |
| downloads_count | int64 | The amount of times users have downloaded this game |

### Earning type
| Field | Type | Description |
|---|---|---|
| amount | int64 | The amount of money paid, in cents |
| currency | string | Curency code for the currency, e.g. `USD` |
| amount_formatted | string | The amount of money paid, formatted, e.g. `$1.00` |