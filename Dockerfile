FROM node:6.9.1-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app/public
COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app
COPY src/index.html /usr/src/app/public/

EXPOSE 8080

CMD [ "npm", "start" ]
