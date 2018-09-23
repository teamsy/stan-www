FROM node:latest

RUN mkdir -p /server/app/admin-server
WORKDIR /server/app/admin-server

COPY server/*.* /server/app/admin-server

RUN npm install

CMD ["npm","run", "dev"]