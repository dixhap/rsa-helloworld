FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@latest
RUN npm install

COPY . .

RUN npm run start

EXPOSE 80

CMD ["node", "index.js"]
