# JSON API Version 2
The only documentation for this API is in the code of [go-itchio](https://github.com/itchio/go-itchio).  

This is the current version of the API. The base URL is https://api.itch.io/. If V3 ever releases, it will probably use the same base URL, to make sure you are using V2 anyways, set the `Accept` request header to `application/vnd.itch.v2` ([go-itchio#4](https://github.com/itchio/go-itchio/issues/4)).  

## Authentication
The V2 API only supports authentication using the `itchio` Cookie.  
You can obtain one by logging in to itch using a web browser or by using the [/login endpoint](login.html)(Note: currently for some reason the returned cookies are not valid).  