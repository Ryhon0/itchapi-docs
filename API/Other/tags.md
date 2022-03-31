# /tags.json

This API is called on the "Browse" section of itch when you click the "Select a tag..." combo box. It retuns the list of tags you can use when browsing games. This API does not require any authentication.  
![](/images/tags.png)

## Parameters
### classification  
**Required**  
Must be one of the following values: `all`, `game`, `assets`, `game_mod`, `physical_game`, `soundtrack`, `other`, `tool`, `comic`, `book`.  
This parameter does not seem to have any effect when `format` is set to `browse`, the request always returns the same list of tags, behaves properly when `format` is unset.  
### format  
Must be unset or set to the following value: `browse`.  
This API seems to return different values depending if `format` is set or unset, see bellow.  

## Returns
| Field | Type | Description |
|---|---|---|
| tags | [Tag](#tag-type)[] | An array of tags. Not present wthen `browse` is unset |
| slugs | string[] | List of tags without the `/tag-` or `/genre-` prefixes. Only present when `browse` is not specified. |

### Tag Type
| Field | Type | Description |
|---|---|---|
| url | string | Part of an url, which should be appended to the feed URL, may start with `/tag-` or `/genre-` |
| name | string | Human-readable name of the tag |
| facets | [Facet](#facet-type) |  |

### Facet Type
| Field | Type | Description |
|---|---|---|
| tag | string | Seems to be the `url` part of a [Tag](#tag-type), minus `/tag-` or `/genre-` |
