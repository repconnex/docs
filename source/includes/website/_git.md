# Git

## Clone the github repo

```shell
git clone git@github.com:repconnex/repconnex.git  
```

Clone the github repo

### Command

`GET https://repconnex.com/api/companies`

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

