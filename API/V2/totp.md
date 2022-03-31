# POST /totp/verify
Completes 2FA login.

## Parameters
### token
The token from the login request.  
### code
The code from the 2FA app.  

## Returns
| Field | Type | Description |
|---|---|---|
| key | [APIKey](/API/V2/login.html#apikey-type) | The key used for authentication |
| cookie | string[string] | List of cookies. Only contains the `itchio` cookie and doesn't seem to work for authenticating |