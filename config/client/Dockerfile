FROM node:latest

RUN mkdir -p /client/app/admin-client
WORKDIR /client/app/admin-client

COPY client/*.* /client/app/

RUN npm install

CMD ["npm","start"]