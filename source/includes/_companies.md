# Companies

## Get All Companies

```shell
curl "https://repconnex.com/api/companies?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
[
  {
    "name": "ABZ Company",
    "address": "1515 Oak Lane",
    "phone": "555-555-5555",
    "website": "abzcompany.com",
    "status": "active"
  },
  {
    "name": "XYZ Company",
    "address": "100 Ruby Ridge Drive",
    "phone": "777-888-9999",
    "website": "xyz.com",
    "status": "active"
  }
]
```

This endpoint retrieves all companies.

### HTTP Request

`GET https://repconnex.com/api/companies`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name_like | null | A partial search string to be used when matching the company name.
address | null | A search string to be used when matching the company address.
phone | null | A search string to be used when matching the company phone.
website | null | A search string to be used when matching the company website.
status | null | A search string to be used when matching the company status.

## Get a Specific Company

```shell
curl "https://repconnex.com/api/companies/2?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "name": "ABZ Company",
  "address": "1515 Oak Lane",
  "phone": "555-555-5555",
  "website": "abzcompany.com",
  "status": "active"
}
```

This endpoint retrieves a specific company.

### HTTP Request

`GET https://repconnex.com/api/companies/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the company to retrieve
