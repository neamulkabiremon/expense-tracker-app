# backend/Dockerfile

FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --no-cache

COPY . .

EXPOSE 8000

CMD ["npm", "start"]