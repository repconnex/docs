# Authentication

> To authorize, use this code:

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: mytoken"
```

> Make sure to replace `mytoken` with your API key.

Repconnex uses API keys to allow access to the API. API keys must be passed out from an admin.

Repconnex expects for the API key to be included in all API requests to the server in a querystring variable like the following:

`?token=mytoken`

<aside class="notice">
You must replace <code>mytoken</code> with your personal API key.
</aside>
