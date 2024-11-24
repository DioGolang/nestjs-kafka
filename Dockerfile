FROM node:22.11-slim

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

RUN chown -R node:node /home/node/app

USER node

CMD ["tail", "-f", "/dev/null"]

