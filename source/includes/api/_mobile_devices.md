# Mobile Devices

## Get a Specific Mobile Device

```shell
curl "https://repconnex.com/api/mobile-devices/123
```

> The above command returns JSON structured like this:

```json
{
  "token": "abc123xyz456",
  "apns_token": "abc123xyz456",
  "gcm_token": "def789sdf12",
  "user_id": 57
}
```

This endpoint retrieves a specific mobile device.

### HTTP Request

`GET https://repconnex.com/api/mobile-devices/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the mobile device to retrieve

## Update a Specific Mobile Device

```shell
curl "https://repconnex.com/api/mobile-devices/23?token=mytoken"
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

This endpoint updates a specific mobile device.

### HTTP Request

`PUT https://repconnex.com/api/mobile-devices/<mobile_device_id>`

### URL Parameters

Parameter | Description
--------- | -----------
id         | The id of the mobile device to update
apns_token | The Apple Notification Service token received by the device
gcm_token  | The Google Cloud Messaging token received by the device
user_id    | The ID of the user attached to the mobile device

## Add a Mobile Device

```shell
curl "https://repconnex.com/api/mobile-devices?token=mytoken"
  -X POST
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "mobile_device": {
    "token": "abc123xyz456"
    "apns_token": null,
    "gcm_token": null,
    "user_id": null
  }  
}
```

> Or if there was an error:

```json
{
  "error": "Explanation of error"
}
```

This endpoint adds a new mobile device.

### HTTP Request

`POST https://repconnex.com/api/mobile-devices`

### URL Parameters

Parameter | Description
--------- | -----------
apns_token | The APNS token already received by the device. (optional)
