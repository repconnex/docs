# Vendors

## Get a Specific Visitor Checkin

```shell
curl "https://repconnex.com/api/visitor-checkins/23?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "id": 23,
  "facility_user_id": 57,             
  "visit_purpose": "Here to bother people.",
  "checkin_time": "2018-01-01 15:32:64",
  "checkout_time": "2018-01-01 16:00:00",
  "actual_checkout_time": "2018-01-01 15:48:13",
  "status": "Checked In",
  "dl_barcode": null,
  "dl_qrcode": null,
  "dl_front": null,
  "dl_back": null,
  "dl_parsed_barcode": null,
  "face": null,
  "green_visit_id": null,
  "facility_id": 125,
  "checkin_zone_id": 15,
  "visiting_zone_id": 16,
  "first_name": "John",
  "last_name": "Doe",
  "address": "1515 Oak Lane",
  "dob": "1985-10-23",
  "sex": "Male",
  "eyes": "Blue",
  "height": "72in"
  "possible_hit": false,
  "watchdog_offender_id": null,
  "user_watchlist_hit_print": false,
  "user_watchlist_possible_hit": false,
  "watchdog_print": false  
}
```

This endpoint retrieves a specific visitor checkin.

### HTTP Request

`GET https://repconnex.com/api/visitor-checkins/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the visitor checkin to retrieve

## Update a Specific Visitor Checkin

```shell
curl "https://repconnex.com/api/visitor-checkins/23?token=mytoken"
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

This endpoint updates a specific vendor.

### HTTP Request

`PUT https://repconnex.com/api/visitor-checkins/<visitor_checkin_id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the credential to update
facility_user_id             | Self explanatory
visit_purpose                | Self explanatory
checkin_time                 | Self explanatory
checkout_time                | Self explanatory
actual_checkout_time         | Self explanatory
status                       | Self explanatory
dl_barcode                   | Self explanatory
dl_qrcode                    | Self explanatory
dl_front                     | Self explanatory
dl_back                      | Self explanatory
dl_parsed_barcode            | Self explanatory
face                         | Self explanatory
green_visit_id               | Self explanatory
facility_id                  | Self explanatory
checkin_zone_id              | Self explanatory
visiting_zone_id             | Self explanatory
first_name                   | Self explanatory
last_name                    | Self explanatory
address                      | Self explanatory
dob                          | Self explanatory
sex                          | Self explanatory
eyes                         | Self explanatory
height                       | Self explanatory
possible_hit                 | Self explanatory
watchdog_offender_id         | Self explanatory
user_watchlist_hit_print     | Self explanatory
user_watchlist_possible_hit  | Self explanatory
watchdog_print               | Self explanatory

## Add a Vendor

```shell
curl "https://repconnex.com/api/visitor-checkins?token=mytoken"
  -X POST
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "visitor_checkin_id": 23
}
```

> Or if there was an error:

```json
{
  "error": "Explanation of error"
}
```

This endpoint adds a new vendor.

### HTTP Request

`POST https://repconnex.com/api/visitor-checkins`

### URL Parameters

Parameter | Description
--------- | -----------
facility_user_id             | Self explanatory
visit_purpose                | Self explanatory
checkin_time                 | Self explanatory
checkout_time                | Self explanatory
actual_checkout_time         | Self explanatory
status                       | Self explanatory
dl_barcode                   | Self explanatory
dl_qrcode                    | Self explanatory
dl_front                     | Self explanatory
dl_back                      | Self explanatory
dl_parsed_barcode            | Self explanatory
face                         | Self explanatory
green_visit_id               | Self explanatory
facility_id                  | Self explanatory
checkin_zone_id              | Self explanatory
visiting_zone_id             | Self explanatory
first_name                   | Self explanatory
last_name                    | Self explanatory
address                      | Self explanatory
dob                          | Self explanatory
sex                          | Self explanatory
eyes                         | Self explanatory
height                       | Self explanatory
possible_hit                 | Self explanatory
watchdog_offender_id         | Self explanatory
user_watchlist_hit_print     | Self explanatory
user_watchlist_possible_hit  | Self explanatory
watchdog_print               | Self explanatory
