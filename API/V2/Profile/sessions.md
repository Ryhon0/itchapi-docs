This endpoints has both GET and POST methods, each behaves differently.  

# GET /profile/game-sessions
Returns a list of last 50 game sessions for the current user.  

## Returns 
| Field | Type | Description |
|---|---|---|
| user_game_sessions | [GameSession](#gamesession-type)[] | |


### GameSession type
extends [SessionSummary](/API/V2/Profile/session-summary.html#sessionsummary-type)
| Field | Type | Description |
|---|---|---|
| id | int64 | The session ID |
| platform | string | |
| updated_at | DateTime | |
| created_at | DateTime | |
| architecture | string | |
| game_id | int64 | |
| build_id | int64 | |
| crashed | bool | |

# POST /profile/game-sessions
Creates a new game session.  

## Parameters

Authentication parameters:
### download_key_id
Download key for this game
### password
Password for a restricted page
### secret
Secret key for private page

### game_id
The game ID to create a session for
### seconds_run
Time the game has run for
### upload_id
The upload ID being played
### build_id
The build ID of the game, optional
### platform
The platform the games is running on, one of `linux`, `macos`, `windows`.
### architecture
The architecture the game is running on, one of `386`, `amd64`.

### Returns
| Field | Type | Description |
|---|---|---|
| summary | SessionSummary | |
| user_game_session | [GameSession](#gamesession-type)[] | |