# Users

## Get All Users

```shell
curl "https://repconnex.com/api/users?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 23,
    "site_id": 2,
    "first_name": "John",
    "last_name": "Doe",
    "username": "jdoe",
    "email": "jdoe@gmail.com",
    "email_confirmed": true,
    "address": "1515 Oak Lane",
    "address2": null,
    "city": "Salt Lake City",
    "state": "UT",
    "zip": "84444",
    "country": "United States of America",
    "phone": "555-555-5555",
    "phone_confirmed": false,
    "fax": null,        
    "timezone": "Central Time (US & Canada)",        
    "password": "jldfjlkjlke8blsdnaaksjdfkjlkjlk",
    "password_reset_id": null,
    "password_reset_sent": null,
    "token": null,
    "date_created": "2018-01-01T12:34:23",            
    "locked": false
  },
  {
    "id": 24,
    "site_id": 2,
    "first_name": "Jane",
    "last_name": "Doe",
    "username": "jdoe2",
    "email": "jdoe2@gmail.com",
    "email_confirmed": true,
    "address": "1616 Oak Lane",
    "address2": null,
    "city": "Salt Lake City",
    "state": "UT",
    "zip": "84444",
    "country": "United States of America",
    "phone": "555-555-5555",
    "phone_confirmed": false,
    "fax": null,        
    "timezone": "Central Time (US & Canada)",        
    "password": "jldfjlkjlke8blsdnaaksjdfkjlkjlk",
    "password_reset_id": null,
    "password_reset_sent": null,
    "token": null,
    "date_created": "2018-01-01T12:34:23",            
    "locked": false
  }
]
```

This endpoint retrieves all users.

### HTTP Request

`GET https://repconnex.com/api/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
first_name_like | null | A partial string to match the user's first name.
last_name_like | null | A partial string to match the user's last name.
email_like | null | A partial string to match the user's email.      
phone_like | null | A partial string to match the user's phone number.
address_like | null | A partial string to match the user's address.
address2_like | null | A partial string to match the user's address2.
city_like | null | A partial string to match the user's city.
state_like | null | A partial string to match the user's state.
zip_like | null | A partial string to match the user's zip code.

## Get a Specific Users

```shell
curl "https://repconnex.com/api/users/23?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "id": 23,
  "site_id": 2,
  "first_name": "John",
  "last_name": "Doe",
  "username": "jdoe",
  "email": "jdoe@gmail.com",
  "email_confirmed": true,
  "address": "1515 Oak Lane",
  "address2": null,
  "city": "Salt Lake City",
  "state": "UT",
  "zip": "84444",
  "country": "United States of America",
  "phone": "555-555-5555",
  "phone_confirmed": false,
  "fax": null,        
  "timezone": "Central Time (US & Canada)",        
  "password": "jldfjlkjlke8blsdnaaksjdfkjlkjlk",
  "password_reset_id": null,
  "password_reset_sent": null,
  "token": null,
  "date_created": "2018-01-01T12:34:23",            
  "locked": false
}
```

This endpoint retrieves a specific user.

### HTTP Request

`GET https://repconnex.com/api/users/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the user to retrieve

## Authenticate a User

```shell
curl "https://repconnex.com/api/users/authenticate?token=mytoken"
  -X POST
  -d "username=jdoe&password=12345678"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "id": 23,
    "site_id": 2,
    "first_name": "John",
    "last_name": "Doe",
    "username": "jdoe",
    "email": "jdoe@gmail.com",
    "email_confirmed": true,
    "address": "1515 Oak Lane",
    "address2": null,
    "city": "Salt Lake City",
    "state": "UT",
    "zip": "84444",
    "country": "United States of America",
    "phone": "555-555-5555",
    "phone_confirmed": false,
    "fax": null,        
    "timezone": "Central Time (US & Canada)",        
    "password": "jldfjlkjlke8blsdnaaksjdfkjlkjlk",
    "password_reset_id": null,
    "password_reset_sent": null,
    "token": null,
    "date_created": "2018-01-01T12:34:23",            
    "locked": false
  }
}
```

> Or if the user didn't authenticate:

```json
{
  "error": "Invalid credentials"
}
```

This endpoint authenticates a user.

### HTTP Request

`POST https://repconnex.com/api/users/authenticate`

### URL Parameters

Parameter | Description
--------- | -----------
username | The username or email of the user
password | The user's password
