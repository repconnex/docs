# Database

The system diverges from traditional database migrations in favor of always up-to-date Schema file. There is a schema model:

app/models/schema.rb

This model describes the structure of the database, relating model attributes to database tables and columns.

To update a database to match the current schema model, run the following rake task:

```shell
rake repconnex:create_schema
```

In a normal setup on your development machine, the `RAILS_ENV` variable is set to `development` so this will update your local database.

To update the staging server's database, run the following:

```shell
RAILS_ENV=staging rake repconnex:create_schema
```

And to update the production server's database, run the following:

```shell
RAILS_ENV=production rake repconnex:create_schema
```

In addition, there are a few scripts that will copy databases for you. To copy the production database down to your local database, run the following:

```shell
ruby copy_db.rb
```

To copy the production database to the staging database, run the following:

```shell
ruby copy_db_production_to_staging.rb
```

Regarding databases, there are two deployment scenarios that would affect the database.

1. The addition of tables and columns on which the current production codebase doesn't use or depend.

In this scenario, it's acceptable to update the production database schema before pushing the codebase.

2. Renaming tables or columns, or otherwise affecting the ability for the current production codebase to continue to run without errors.

In this scenario, which is rare, you must do one of two things:

a. modify the production codebase to be able to run without error while the database is in a pre or post-update state

or

b. Put the site in a temporary frozen state and run the database update script immediately before pushing updates to the codebase.
