FROM node:18-alpine AS build

ENV HOST=0.0.0.0
WORKDIR /app

COPY ./package*.json ./
RUN npm install
COPY . .

RUN npm run build

FROM nginx:1.19-alpine
COPY --from=build /app/public /usr/share/nginx/html