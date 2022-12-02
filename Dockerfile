FROM node:lts
SHELL ["/bin/sh", "-c"]
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g npm@9.1.3
RUN npm i
COPY . .
EXPOSE 8080
CMD PORT=8080 npm start
