FROM node:18-alpine as node
WORKDIR /app

COPY package*.json . 
RUN npm install

COPY . .
RUN npm run build

CMD ["npm", "start"]
