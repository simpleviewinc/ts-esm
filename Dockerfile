FROM node:16.16.0
WORKDIR /app

RUN corepack enable && yarn set version 3.1.1

COPY .yarn .yarn
COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install

COPY lib lib
COPY tsconfig.json tsconfig.json