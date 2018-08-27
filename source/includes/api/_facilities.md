# Facilities

## Get All Facilities

```shell
curl "https://repconnex.com/api/facilities?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "system_id": 1,
    "facility_type_id": 1,
    "contact_id": 1,        
    "name": "Big Hospital",
    "address": "1515 Oak Lane",
    "city": "New York City",
    "state": "NY",
    "zip": "12345",
    "email": "jdoe@bighospital.com",
    "phone": "555-555-5555",
    "fax": "555-555-5555",
    "website": "bighospital.com",          
    "allow_food": false,  
    "status": "Active",
    "utc_offset": -5
    "timezone": "Central Time (US & Canada)",
    "standing_appt_period": 6,  
    "uses_credentialing": true,
    "uses_scrubs": true,
    "uses_value_analysis": false,
    "scrub_shirts_product_id": 23,
    "scrub_pants_product_id": 24,
    "scrub_packages_product_id": 25,
    "show_on_website": true          
  },
  {
    "id": 2,
    "system_id": 1,
    "facility_type_id": 1,
    "contact_id": 1,        
    "name": "Big Hospital 2",
    "address": "1515 Oak Lane",
    "city": "New York City",
    "state": "NY",
    "zip": "12345",
    "email": "jdoe@bighospital.com",
    "phone": "555-555-5555",
    "fax": "555-555-5555",
    "website": "bighospital.com",          
    "allow_food": false,  
    "status": "Active",
    "utc_offset": -5
    "timezone": "Central Time (US & Canada)",
    "standing_appt_period": 6,  
    "uses_credentialing": true,
    "uses_scrubs": true,
    "uses_value_analysis": false,
    "scrub_shirts_product_id": 23,
    "scrub_pants_product_id": 24,
    "scrub_packages_product_id": 25,
    "show_on_website": true          
  }
]
```

This endpoint retrieves all facilities.

### HTTP Request

`GET https://repconnex.com/api/facilities`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
system_id | null | The system id the facility belongs to.        
facility_type_id | null | The facility type ID of the facility.            
name_like | null | A search string to be used when matching the facility name.
address_like | null | A search string to be used when matching the facility address.
city_like | null | A search string to be used when matching the facility city.
state_like | null | A search string to be used when matching the facility state.
zip_like | null | A search string to be used when matching the facility zip code.
email_like | null | A search string to be used when matching the facility email.
phone_like | null | A search string to be used when matching the facility phone number.
fax_like | null | A search string to be used when matching the facility fax.
website_like | null | A search string to be used when matching the facility website.
status | null | The status of the facility.

## Get a Specific Facility

```shell
curl "https://repconnex.com/api/facilities/2?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "system_id": 1,
  "facility_type_id": 1,
  "contact_id": 1,        
  "name": "Big Hospital",
  "address": "1515 Oak Lane",
  "city": "New York City",
  "state": "NY",
  "zip": "12345",
  "email": "jdoe@bighospital.com",
  "phone": "555-555-5555",
  "fax": "555-555-5555",
  "website": "bighospital.com",          
  "allow_food": false,  
  "status": "Active",
  "utc_offset": -5
  "timezone": "Central Time (US & Canada)",
  "standing_appt_period": 6,  
  "uses_credentialing": true,
  "uses_scrubs": true,
  "uses_value_analysis": false,
  "scrub_shirts_product_id": 23,
  "scrub_pants_product_id": 24,
  "scrub_packages_product_id": 25,
  "show_on_website": true          
}
```

This endpoint retrieves a specific facility.

### HTTP Request

`GET https://repconnex.com/api/facilities/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the facility to retrieve

## Send text alerts to facility contacts

```shell
curl -X POST "https://repconnex.com/api/facilities/2/alert-contacts-via-text?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "error": "There was an error."
}

or

{
  "success": true
}
```

This endpoint sends a given text message body to contacts who would normally receive alerts of a given type.

### HTTP Request

`POST https://repconnex.com/api/facilities/<id>/alert-contacts-via-text`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the facility to retrieve
alert_type | The type of alert for which contacts would normally receive texts. Valid strings are 'vendor_scan', 'watchlist', 'sex_offender', and 'emergency'
message_body | The message body to send
