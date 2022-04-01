# POST /login
Attempts to log in a user. No authentication required.  

## Parameters
### username
Username of user to log in.
### password
Password of user to log in.
### recaptcha_response
Recaptcha response from `recaptcha_url`
### force_recaptcha
Boolean, if true, forces the user to complete the recaptcha.
### source
The login source, one of `desktop`, `android`.

## Returns
| Field | Type | Description |
|---|---|---|
| recaptcha_needed | bool | If true, you need to complete recaptcha to log in. |
| recaptcha_url | string | URL to embed the captcha (https://itch.io/captcha). |
| totp_needed | bool | If true, you need to complete 2FA to log in. ([/totp/verify](/API/V2/totp.html)) |
| token | string | The token needed for 2FA |
| key | [APIKey](#apikey-type) | The key used for authentication |
| cookie | string[string] | List of cookies. Only contains the `itchio` cookie and doesn't seem to work for authenticating |

### APIKey type
| Field | Type | Description |
|---|---|---|
| id | long | API key id |
| user_id | long | The logged in user's ID |
| key | string | The API key, used for authentication |
| created_at | DateTime | When the API key was created |
| updated_at | DateTime | When the API key was last updated |
| source_version | string | The server version |