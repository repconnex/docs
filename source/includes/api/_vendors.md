# Vendors

## Get All Vendors

```shell
curl "https://repconnex.com/api/vendors?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 23,
    "user_id": 57,                        
    "company_id": 15,                    
    "vendor_type_id": 4,                 
    "vendor_category_id": 13,             
    "supervisor_name": "John Doe",
    "supervisor_email": "jdoe@gmail.com",
    "supervisor_phone": "555-555-5555",
    "vc_manager_email": "bobsmith@gmail.com",
    "primary_sales_state": "UT",    
    "title": "Directory of Sales",                          
    "territory": "UT",                    
    "authnet_profile_id": "abc123",             
    "authnet_payment_id": "xyz456",             
    "valid_authnet_payment_id": true,
    "card_type": null,
    "card_suffix": null,                    
    "authnet_subscription_id": "def789",                           
    "credentialing_subscription_id": 123,
    "scrubs_subscription_id": 342,
    "anniversary_date": "2016-01-30",                             
    "federal": false,              
    "notes": null,
    "scrub_top_size": "M",                 
    "scrub_bottom_size": "M",              
    "scrub_color": "blue"
  },
  {
    "id": 24,
    "user_id": 58,                        
    "company_id": 16,                    
    "vendor_type_id": 3,                 
    "vendor_category_id": 13,             
    "supervisor_name": "Jane Doe",
    "supervisor_email": "janedoe@gmail.com",
    "supervisor_phone": "333-333-3333",
    "vc_manager_email": "franksmith@gmail.com",
    "primary_sales_state": "NY",    
    "title": "Director of Marketing",                          
    "territory": "NY",                    
    "authnet_profile_id": "abc123",             
    "authnet_payment_id": "xyz456",             
    "valid_authnet_payment_id": true,
    "card_type": null,
    "card_suffix": null,                    
    "authnet_subscription_id": "def789",                           
    "credentialing_subscription_id": 123,
    "scrubs_subscription_id": 342,
    "anniversary_date": "2016-01-30",                             
    "federal": false,              
    "notes": null,
    "scrub_top_size": "M",                 
    "scrub_bottom_size": "M",              
    "scrub_color": "blue"
  }
]
```

This endpoint retrieves all vendors.

### HTTP Request

`GET https://repconnex.com/api/vendors`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
company_name_like | null | A partial string to match the vendor's company name.
first_name_like | null | A partial string to match the vendor's first name.
last_name_like | null | A partial string to match the vendor's last name.
email_like | null | A partial string to match the vendor's email.      
phone_like | null | A partial string to match the vendor's phone number.
address_like | null | A partial string to match the vendor's address.
address2_like | null | A partial string to match the vendor's address2.
city_like | null | A partial string to match the vendor's city.
state_like | null | A partial string to match the vendor's state.
zip_like | null | A partial string to match the vendor's zip code.
company_id | null | The vendor's company ID.
credentialing_subscription_id_null | null | Whether or not the vendor's credentialing subscription id should be null.
scrubs_subscription_id_null | null | Whether or not the vendor's scrubs subscription id should be null.      
credentialing_subscription_status | null | A string matching the vendor's credentialing subscription status.
scrubs_subscription_status | null | A string matching the vendor's scrubs subscription status.

## Get a Specific Vendor

```shell
curl "https://repconnex.com/api/vendors/23?token=mytoken"
```

> The above command returns JSON structured like this:

```json
{
  "id": 23,
  "user_id": 57,                        
  "company_id": 15,                    
  "vendor_type_id": 4,                 
  "vendor_category_id": 13,             
  "supervisor_name": "John Doe",
  "supervisor_email": "jdoe@gmail.com",
  "supervisor_phone": "555-555-5555",
  "vc_manager_email": "bobsmith@gmail.com",
  "primary_sales_state": "UT",    
  "title": "Directory of Sales",                          
  "territory": "UT",                    
  "authnet_profile_id": "abc123",             
  "authnet_payment_id": "xyz456",             
  "valid_authnet_payment_id": true,
  "card_type": null,
  "card_suffix": null,                    
  "authnet_subscription_id": "def789",                           
  "credentialing_subscription_id": 123,
  "scrubs_subscription_id": 342,
  "anniversary_date": "2016-01-30",                             
  "federal": false,              
  "notes": null,
  "scrub_top_size": "M",                 
  "scrub_bottom_size": "M",              
  "scrub_color": "blue"
}
```

This endpoint retrieves a specific vendor.

### HTTP Request

`GET https://repconnex.com/api/vendors/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the vendor to retrieve

## Update a Specific Vendor

```shell
curl "https://repconnex.com/api/vendors/23?token=mytoken"
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

`PUT https://repconnex.com/api/vendors/<vendor_id>`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the credential to update
