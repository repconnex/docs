# Overview

- Create feature branch for new code.

- Develop and test within feature branch.

- While on feature branch, bring in changes from master

  git merge --no-ff master
  
- Fix any merge conflicts and re-commit.

- Check out master, merge feature branch into master

```
git merge --no-ff <feature_branch_name>
```
   
** At this point, we want to deploy the version of code in your development environment **
  
- PURL assets if any js or css was changed.

```
rake assets:purl
git add -A
git commit -m 'Added new assets manifest'
```

- Push up to github

```
git push origin master
```
  
- If necessary, update the database on production

```
RAILS_ENV=production rake repconnex:create_schema
```
  
- Port the production database to staging:

```
ruby copy_db_production_to_staging.rb
```
  
- Go to heroku, repconnex-staging and deploy.

- Verify staging server has no issues, fix if necessary.

- Go to heroku, repconnex and deploy.

- Verify production server has no issues, fix if necessary.
