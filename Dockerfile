ARG NODE_VERSION=20

FROM node:${NODE_VERSION}-alpine as base

ENV LANG=C.UTF-8

ENV NODE_ENV=development
ENV HOST="0.0.0.0"
ENV PORT=3000

WORKDIR /app

RUN npm install -g npm@latest

COPY ./app/package.json .
RUN npm install
