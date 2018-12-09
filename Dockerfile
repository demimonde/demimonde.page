FROM node:10-alpine

COPY package*.json ./
COPY yarn.lock ./
RUN yarn

COPY build .

ENV NODE_ENV production

CMD [ "yarn", "start" ]

ENTRYPOINT ["node", "build/bin/app.js"]