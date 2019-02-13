# Assets

The system takes advantage of the Rails asset pipeline. Normally before deployment, a precompilation process occurs. This process does three things:

1. Minifies files.
2. Aggregates multiple files into single files using manifest files.
3. Compiles higher-level code such as coffeescript and SASS into javascript and css.

When you're at the point of being ready to deploy (everything merged into master), you need to precompile assets.

In addition to precompiling, we use Amazon S3 and Cloudfront as a CDN, so we need to move precompiled assets from your development server to S3, so we've created a process for this called `PURL`:

(P)recompile, (U)pload to S3, (R)emove (L)ocally precompiled assets

To run PURL, do the following:

```
rake assets:purl
git add -A
git commit -m 'Added new assets manifest'
```

If run successfully, this should upload all precompiled assets to S3 and leave a single new manifest file in your public folder. This file needs to be committed:

```
git add -A
git commit -m 'PURLed assets'
```

You're now ready to deploy to the staging server and then the production server.
