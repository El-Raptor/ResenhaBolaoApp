FROM node:latest

WORKDIR /app

COPY . .

RUN rm -rf node_modules
RUN npm install

COPY . .

RUN npx react-native start &

EXPOSE 3000