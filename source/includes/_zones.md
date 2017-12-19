# Zones

## Get a Specific Zone

```shell
curl "https://repconnex.com/api/zones/15?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "facility_id": 10,
  "parent_id": 9,
  "name": "Zone 1",
  "description": "East entrance to the hospital",
  "status": "Active"
}
```

This endpoint retrieves a specific zone.

### HTTP Request

`GET https://repconnex.com/api/zones/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the zone to retrieve

## Check whether a vendor may enter a zone

```shell
curl "https://repconnex.com/api/zones/15/vendors/23?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "result": false,
  "reason": "The vendor is not credentialed at the facility",
}
```

> Or if there was an error:

```json
{
  "error": "Explanation of error"
}
```

This endpoint checks whether a vendor may enter a zone.

### HTTP Request

`GET https://repconnex.com/api/zones/<zone_id>/vendors/<vendor_id>`

### URL Parameters

Parameter | Description
--------- | -----------
zone_id | The id of the zone
vendor_id | The id of the vendor
