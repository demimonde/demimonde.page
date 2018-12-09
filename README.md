# @demimonde/demimonde.page

[![npm version](https://badge.fury.io/js/@demimonde/demimonde.page.svg)](https://npmjs.org/package/@demimonde/demimonde.page)

`@demimonde/demimonde.page`: The page where businesses can buy people's Instagram's photographs.

## Web Server

The webserver can be started in development mode using the

```sh
node src/bin
```

command. The production version will be run using `build/bin/app.js`. The server is based off `@idio/core` and can be configured to serve static files and routes easily.

## Dockefile

The webserver is meant to be deployed on a docker conatiner (e.g., on a Dokku host is optimal). The following `Dockerfile` based off `node:alpine` is used.

```
FROM node:10-alpine

COPY package*.json .
COPY yarn.lock .
RUN yarn

COPY build .

ENV NODE_ENV production

ENTRYPOINT ["node", "build/bin/app.js"]
```

## Copyright

(c) [Demimonde][1] 2018

[1]: https://demimonde.cc
