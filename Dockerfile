ARG NODE_VERSION=20

FROM node:${NODE_VERSION}-alpine as base

ENV NODE_ENV=development
ENV HOST="0.0.0.0"
ENV PORT=3000

ENV LANG=C.UTF-8

WORKDIR /app

RUN npm install -g npm@latest

COPY ./src/package.json .
RUN npm install
