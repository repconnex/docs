# Paging

All API calls that return a list use paging. Each API request may take the following fields:

Field | Type | Default | Description
----- | ---- | ------- | -----------
page | integer | 1 | The page of results to return.
items_per_page | integer | 100 | The number of items to be returned per page.
sort | string | null | The field upon which to sort the items.
desc | boolean | false | Whether or not to sort the items in reverse order.

Each paged response will include the following fields:

Field | Type | Description
----- | ---- | -----------
pager | Pager Object | The pager object including all the paging fields.
items | Array | The resulting page of items.
