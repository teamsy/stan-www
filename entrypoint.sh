#!/usr/bin/bash

bash
yarn global add create-react-app
mkdir app
cd app
create-react-app src
cd src
chown node:node -R .
yarn install
yarn start