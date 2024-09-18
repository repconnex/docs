# Searching

Most API calls that include fields that filter results use suffixes to change the search functionality. Below is a list of suffixes and their uses: 

Suffix | Description
------ | -----------
_like | Changes the field from an exact string search into a partial string search
_gt | Changes the field from an exact match to a greater than match.
_gte | Changes the field from an exact match to a greater than or equal match.
_lt | Changes the field from an exact match to a less than match.
_lte | Changes the field from an exact match to a less than or equal match.

<aside class="notice">
Please note that every suffix is not available for every API field. This is just the architecture guide for searchable fields.
</aside>
