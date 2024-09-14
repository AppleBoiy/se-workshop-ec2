FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache bash xdg-utils

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "preview"]

EXPOSE 4173