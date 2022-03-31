# JSON API Version 1  
Partial documentation of this API is available here: https://itch.io/docs/api/serverside.  
More endpoints are documented in [go-itchio before commit 6758acb](https://github.com/itchio/go-itchio/tree/8915978b837552ee6db5104982fe1853aa3ff26a) and [the itch app implementation before it used go-itchio](https://github.com/itchio/itch/blob/400e5929f56fd33db94f997d1197236d7e142ce6/src/api/index.ts)

This API has been superseded by the [V2 API](/API/V2/index.html), however some endpoints don't have an equivalent in the V2 API or behave differently.  

This API's base URL is https://itch.io/api/1/{key}/me, where {key} is the API key, see bellow.  

## Authentication
The V1 API lets you authenticate using an API key or a JWT token. JWT tokens are scoped, API Keys don't have any restrictions.  

If using API keys, replace the {key} in the base URL with the API key or `key` and set the `Authorization` request header to `Bearer {YOUR_API_KEY}`. You can get an API key from here: https://itch.io/user/settings/api-keys. Or by calling [/login](/API/V2/login.html).  

If using JWT Tokens, replace the {key} in the base URL with the API key or `jwt` and set the `Authorization` request header to `Bearer {YOUR_JWT_TOKEN}`. You can obtain a JWT token by calling `/credentials/subkey` or by using [OAuth](https://itch.io/docs/api/oauth).  
