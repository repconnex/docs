# Feature Branches

Feature branches allow for the encapsulation of new or altered code, separate from the production codebase, but still easily accessible.

It is preferred that for each new feature or bug fix, a new feature branch is created from master.

To create a new feature branch, do the following:

```shell
git checkout master
git pull origin master
git checkout -b <feature_branch_name> master
```

This creates a new features branch called and checks out the new branch.

At this point, you would develop and test within this new feature branch. At regular intervals, it's advised to add and commit your changes:

```shell
git add -A
git commit -m <description of changes>
```

When you're ready to deploy your new feature, first merge any changes from master that may have occurred while you were developing into your feature branch:

```
git checkout master
git pull origin master
git checkout <feature_branch_name>
git merge --no-ff master
```

If any merge conflicts occur at this stage, fix the merge conflicts and re-commit.

When everything is merged into your feature branch successfully from master, merge your feature branch into master:

```shell
git checkout master
git merge --no-ff <feature_branch_name>
```

No merge conflicts should happen at this point because you merged master into your feature branch first.
