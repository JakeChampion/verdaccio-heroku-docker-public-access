# verdaccio-heroku-docker

A containerized verdaccio public access npm registry configured with github oauth.

This is a fork of [autotelic/verdaccio-heroku-docker](https://github.com/autotelic/verdaccio-heroku-docker) that
sets the default access level to `$all` instead of `$authenticated`.

This will show all packages to anybody.

## Deployment

You can deploy to heroku with one click

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Once the app has been deployed, you will need to setup a github oauth app and add the necessary
oauth credentials as heroku config vars.

[Follow these instructions](https://github.com/n4bb12/verdaccio-github-oauth-ui#github-config) when
creating the oauth app.

- Add the following config vars to the heroku app. Either do this from the [heroku dashboard](https://devcenter.heroku.com/articles/config-vars#using-the-heroku-dashboard)
or with the [cli](https://devcenter.heroku.com/articles/config-vars#using-the-heroku-cli).

```
GITHUB_OAUTH_ORG
GITHUB_OAUTH_CLIENT_ID
GITHUB_OAUTH_CLIENT_SECRET
AWS_S3_BUCKET_NAME
AWS_REGION
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

You should now be able to visit the heroku app and login with your github account by clicking the
login button and going through the oauth flow.
