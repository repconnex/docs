# Watchlist Entries

## Get a list of watchlist entries

```shell
curl "https://repconnex.com/api/facilities/<facility_id>/watchlist-entries?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "pager": [Object],
  "items": [Array of watchlist entry objects]
}
```

This endpoint retrieves a list of watchlist entries.

### HTTP Request

`GET https://repconnex.com/api/facilities/<facility_id>/watchlist-entries`

### URL Parameters

Parameter | Description
--------- | -----------
watchlist_id    | The watchlist ID to search.	      
first_name_like | A substring search of the first name.
last_name_like  | A substring search of the last name.
address1_like   | A substring search of the address1.
address2_like   | A substring search of the address2.
dob_lte         | A maximum (inclusive) value of the DOB.
dob_gte         | A minimum (inclusive) value of the DOB.
gender          | An exact search of the gender. 
eye_color_like  | A substring search of the eye color.
notes_like      | A susbtring search of the notes.

## Get a Specific Watchlist Entry

```shell
curl "https://repconnex.com/api/facilities/<facility_id>/watchlist-entries/<watchlist_entry_id>?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "id": 23,
  "watchlist_id": 17,  
  "first_name": "John",
  "last_name": "Doe",
  "address1": "1515 Oak Lane",
  "address2": null,
  "dob": "1975-01-01",
  "gender": "Male",
  "eye_color": "Brown",
  "notes": null,
  "image": null
}
```

This endpoint retrieves a specific watchlist entry.

### HTTP Request

`GET https://repconnex.com/api/facilities/<facility_id>/watchlist-entries/<watchlist_entry_id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the watchlist entry to retrieve

## Get a list of vendor guest duplicates

```shell
curl "https://repconnex.com/api/facilities/<facility_id>/vendor-guest-duplicates?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "watchlist_entries": [Array of watchlist entry objects]
}
```

This endpoint retrieves a list of watchlist entries that act as flags for vendor guest duplicates.

### HTTP Request

`GET https://repconnex.com/api/facilties/<facility_id>/vendor-guest-duplicates`

### URL Parameters

Parameter | Description
--------- | -----------
first_name  | The first name of the vendor
last_name   | The last name of the vendor
dob         | The date of birth of the vendor (in iso8601 format: 1979-12-31)
facility_id | The facility ID

## Update a Specific Watchlist Entry

```shell
curl "https://repconnex.com/api/facilities/<facility_id>/watchlist-entries/<watchlist_entry_id>?token=mytoken"
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

This endpoint updates a specific watchlist entry.

### HTTP Request

`PUT https://repconnex.com/api/facilities/<facility_id>/watchlist-entries/<watchlist_entry_id>`

### URL Parameters

Parameter | Description
--------- | -----------
id           | The id of the credential to update
watchlist_id | Watchlist ID
first_name   | First name
last_name    | Last name
address1     | Address1
address2     | Address2
dob          | Date of Birth
gender       | Gender
eye_color    | Eye color
notes        | Notes
image_base64 | Base64-encoded image

## Add a Watchlist Entry

```shell
curl "https://repconnex.com/api/facilities/<facility_id>/watchlist-entries?token=mytoken"
  -X POST
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "watchlist_entry_id": 23
}
```

> Or if there was an error:

```json
{
  "error": "Explanation of error"
}
```

This endpoint adds a new watchlist entry.

### HTTP Request

`POST https://repconnex.com/api/facilities/<facility_id>/watchlist-entries`

### URL Parameters

Parameter | Description
--------- | -----------
watchlist_id | Watchlist ID  
first_name   | First name
last_name    | Last name
address1     | Address1
address2     | Address2
dob          | Date of birth
gender       | Gender
eye_color    | Eye color
notes        | Notes
image_base64 | Base64-encoded image
