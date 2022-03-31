# Intro
There are multiple APIs for itch.io, depending on your use case, you might want to use one or multiple at the same time.  

All the APIs are listed in the sidebar, some have their own quirks, to read about them, click on the API name.  

All the JSON APIs have a quirk caused by the library that was used to serialize objects by the server. Where normally you'd find an empty array `[ ]`, the library will return an empty object `{ }`.
This quirk still exists for backwards compatibility reasons, it might not exist in newer versions of the API.  
See [itch.io#1301](https://github.com/itchio/itch.io/issues/1301) and [go-itchio@b3ae624](https://github.com/itchio/go-itchio/commit/b3ae62491ac725a8377b5a75ccb1d5005a1e7545)

## Glossary
### Endpoints
A base URL is the url that needs to be prepended to the method path, you can find it in the main page for the API you want to use, if not specified, use `https://itch.io`.  
Parts of the URL in `{name}` format are URL parameters, they are replced with the value of the parameter, including the `{}`, e.g. `/games/{gameId}/` => `/games/5318008/`.  
All other parameters are query parameters, following HTTP standards.  
The HTTP method for requests is defined in the endpoint page header.  

### Types
If a class extends another class, it has all the properties of the parent, plus ones defined bellow.  
Arrays types have `[]` appended to the base type, e.g. `string[]` is an array of `string`.  
Numeric types have their bitness appended to them, e.g. `int32` is a 32 bit integer.  
DateTime represents a struct containing a date and time.  

## Base response
Most APIs here will return the following JSON object on a non 2xx error code: 
| Field | Type | Description |
|---|---|---|
| errors | string[] | List of errors that have occured. If not set, no errors |
| details | string | A more detailed error. |