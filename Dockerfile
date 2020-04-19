FROM verdaccio/verdaccio:4.5.1

USER root

ENV NODE_ENV=production

RUN yarn && yarn add verdaccio-github-oauth-ui

COPY ./config.yaml /verdaccio/conf

USER verdaccio
