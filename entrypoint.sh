#!/usr/bin/bash

bash
yarn global add create-react-app
mkdir app
cd app
create-react-app client
chown client:client -R .
create-react-app server
chown server:server -R .