FROM node:16.14.2

WORKDIR /react-snapshot

COPY package*.json /

RUN npm install

COPY . .

RUN npm run build

CMD [ "npm" , "start" ]