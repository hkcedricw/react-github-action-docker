FROM node:12.13.1-alpine3.10

WORKDIR /usr/src/app
COPY server/package*.json ./
RUN npm ci
COPY app/build ./build
COPY server/server.js ./
EXPOSE 3000
CMD [ "node", "server.js" ]

