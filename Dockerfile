FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY public ./public
COPY . .

COPY server.js .

EXPOSE 8080
CMD ["npm", "start"]
