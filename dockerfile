FROM node:14

WORKDIR /app

COPY package*.json ./

RUN rm -rf node_modules
RUN npm install -g npm@latest
RUN npm install --legacy-peer-deps

COPY . .

RUN chown -R node:node /app
RUN npm run start

EXPOSE 80

CMD ["node", "index.js"]
