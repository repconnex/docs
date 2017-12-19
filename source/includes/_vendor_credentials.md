# Vendor Credentials

A vendor credential is the fulfillment of a single credential for a single vendor.

## Get All Vendor Credentials for a Vendor

```shell
curl "https://repconnex.com/api/vendors/23/credentials?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
[
  {
    "credential_id": 15,
    "vendor_id": 23,
    "status": "Approved",
    "date_due": "2018-01-01",
    "date_valid": "2018-01-01",        
    "date_expires": "2019-01-01",
    "date_reviewed": "2018-01-01",
    "declined_by_vendor": false,
    "notes": null,
    "json_data": null
  },
  {
    "credential_id": 19,
    "vendor_id": 23,
    "status": "Approved",
    "date_due": "2018-01-01",
    "date_valid": "2018-01-01",        
    "date_expires": "2019-01-01",
    "date_reviewed": "2018-01-01",
    "declined_by_vendor": false,
    "notes": null,
    "json_data": null
  }
]
```

This endpoint retrieves all vendor credentials for a specific vendor.

### HTTP Request

`GET https://repconnex.com/api/vendors/<vendor_id>/credentials`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
vendor_id | null | The id for a vendor for whom to retrieve vendor credentials.

## Get a Specific Vendor Credential

```shell
curl "https://repconnex.com/api/vendors/23/credentials/2?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "credential_id": 15,
  "vendor_id": 23,
  "status": "Approved",
  "date_due": "2018-01-01",
  "date_valid": "2018-01-01",        
  "date_expires": "2019-01-01",
  "date_reviewed": "2018-01-01",
  "declined_by_vendor": false,
  "notes": null,
  "json_data": null
}
```

This endpoint retrieves a specific credential.

### HTTP Request

`GET https://repconnex.com/api/vendors/<vendor_id>/credentials/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
vendor_id | The id of the vendor who owns the vendor credential
id | The id of the credential to retrieve

## Update a Specific Vendor Credential

```shell
curl "https://repconnex.com/api/vendors/23/credentials/2?token=mytoken"
  -X PUT
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
}
```

> Or if there was an error:

```json
{
  "error": "Explanation of error"
}
```

This endpoint updates a specific vendor credential.

### HTTP Request

`PUT https://repconnex.com/api/vendors/<vendor_id>/credentials/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
vendor_id | The id of the vendor who owns the vendor credential
id | The id of the credential to retrieve
