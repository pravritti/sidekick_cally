FROM node:14

ENV NODE_ENV=production
WORKDIR /app

COPY ["package.json", "./"]

RUN npm install --production
RUN npm install --save-dev typescript
COPY . .
