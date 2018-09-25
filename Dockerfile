# Setup client and build
FROM node:9.4.0-alpine as client

WORKDIR /app/client/
COPY client/package*.json ./
RUN npm install
COPY client/ ./
RUN npn run build

# Setup server

FROM node:9.4.0-alpine

COPY --from=client /app/client/build/ ./client/build/

WORKDIR /app/server/
COPY client/package*.json ./
RUN npm install
COPY server/ ./

ENV PORT 8000

EXPOSE 8000

CMD ["npm","start"]