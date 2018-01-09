# Target Facilities

The target facility object ties a vendor and a facility together and store information related to the vendor's association at that facility.

When a vendor is retrieved, an array of target facility objects is returned in the result.

## The Target Facility Object

```shell
curl "https://repconnex.com/api/vendors/<vendor_id>?token=mytoken"  
```

> The above command returns JSON structured like this:

```json
{
  "id": 23,
  "vendor_id": 47,
  "facility_id": 1,
  "status": "Approved",
  "contracted": false,
  "scrub_credits": 145,
  "scrub_variant_id": 123,
  "auto_purchase_scrubs": false
}
```

### Statuses

The status field is an enumerated string with the following possiblue values:

Value | Meaning
----- | -------
Approved | The vendor is approved at the facility.
Pending | The vendor is not approved at the facility, pending either an upload of a credential or a review of an already uploaded credential.
