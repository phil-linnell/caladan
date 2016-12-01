FROM node:6.9.1-slim

COPY . /app
WORKDIR /app
RUN mkdir /app/public
COPY src/index.html /app/public/index.html

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
