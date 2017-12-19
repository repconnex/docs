# Credentials

## Get a Specific Credential

```shell
curl "https://repconnex.com/api/credentials/2?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "name": "Flu Shot Policy",
  "form_name": null,
  "description": "A policy outlining this facilitie's procedures for checking flu shots.",
  "category_id": 23,
  "facility_id": 15,
  "credential_type": '1',
  "valid_for": 'Ongoing'
}
```

This endpoint retrieves a specific credential.

### HTTP Request

`GET https://repconnex.com/api/credentials/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the credential to retrieve
