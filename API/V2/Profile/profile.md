# /profile
Returns your profile information.

## Returns
| Field | Type | Description |
|---|---|---|
| user | [User](#user-type) | Your profile |

### User type
| Field | Type | Description |
|---|---|---|
| id | int64 | User ID |
| username | string |  |
| display_name | string | Only present if display name is different from username |
| url | string | URL to the user's profile |
| cover_url | string | User avatar |
| still_cover_url | string | Only present if cover_url is animated. URL to the first frame of the cover. |
| press_user | bool | Whether the user is in the press system ([List of all press users](https://itch.io/partners/list)) |
| developer | bool | Wether the user has published a game(?) |
| gamer | bool | Always true |