FROM node:latest

# Create app directory
WORKDIR /app/server

COPY package*.json /app/server

RUN npm install

COPY . .

CMD [ "npm", "start" ]