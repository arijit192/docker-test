FROM node:8.11-alpine
LABEL org.opencontainers.image.source https://github.com/arijit192/docker-test

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

ENV PORT 5000
EXPOSE $PORT
CMD [ "npm", "start" ]
