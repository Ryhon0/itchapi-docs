# RSS API
Official documentation: https://itch.io/updates/rss-feeds-for-browsing-games  

This API has an ugly brother, a Web API equivalent, please use this API instead  

This API lets you retrieve lists of popular and new games from itch.  
The URL for this feed can be retrieved by going to https://itch.io/games, selecting your desired filters and appending `.xml` to the URL, e.g. https://itch.io/games/top-sellers/free/platform-linux.xml. This method however is not recommended, because the website will not allow you to select some filters at the same time.  

You can paginate these feeds by using the `page` query parameter, e.g. https://itch.io/games/top-sellers/free/platform-linux.xml?page=2 will return the second page of results. The feed will always return 30 games per page, if it returns less or none, this means you've reached the end of this feed.  

If you wish to generate the URL programatically, you should order the filters in a specific order, as URLS with incorrectly ordered filters will redirect you to a URL with correct filters (), but any or all query parameters will be lost ([itch.io#1299](https://github.com/itchio/itch.io/issues/1299))  

## Returns  
Note: This is a XML document, the following is the contents of the `<channel>` element.  
| Field | Type | Description |
|---|---|---|
| title | string | The title of the feed |
| link | string | The URL of the feed |
| item | [Item](#item) | A game, multiple entries. |

### Item 
| Field | Type | Description |
|---|---|---|
| title | string | Title with additional information (sale, price, platforms) |
| plainTitle | string | Title of the game with no additional information |
| imageurl | string | URL to the game's cover |
| price | string | Price of the game, in "$0.00" format, regardless of currency |
| currency | string | Code for a currency, e.g. USD |
| discountpercent | int | Discount percentage, e.g. 50 for 50%. If 0, the game is in a bundle |
| fullPrice | string | Original of the game, in "$0.00" format, regardless of currency, only present if discounted  |
| saleends | DateTime | The time at which the sale ends |
| link | string | URL to the game's page |
| description | string | (CDATA) Short description of the game and <img> HTML tag with the game cover in 2nd line |
| pubDate | DateTime | The time at which the game was published |
| createDate | DateTime | Same as pubDate |
| updateDate | DateTime | Time the game was last updated |
| platforms | ... | List of elements with the platform ID as the element name, the inner text is always "yes". The element name must be one of `windows`, `osx`, `linux`, `html`, `android`. There is no id for iOS. |

TODO: correct order of filters  
Type | Value | Description
---|---|---
Price (only one of) | free | 
 - | store | Paid games
 - | on-sale | 
 - | 5-dollars-or-less | 
 - | 15-dollars-or-less | 
Tags | tag-\*/genre-\* | Any order, see [/tags.json](/API/Other/tags.html)