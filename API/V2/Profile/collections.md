# GET /profile/collections

Returns a list of your collections.

## Returns
| Field | Type | Description |
|---|---|---|
| collections | [Collection](#collection-type)[] | |

### Collection type
| Field | Type | Description |
|---|---|---|
| id | int64 | The ID of the collection |
| games_count | int64 | The amount of games in this collection |
| updated_at | DateTime | The time this collection was last updated at |
| created_at | DateTime | The time this collection was created at |