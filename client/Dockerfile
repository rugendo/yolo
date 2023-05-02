FROM node:13.12.0-alpine
RUN mkdir -p "/app"
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
RUN  npm install
COPY public /app
COPY src /app
CMD ( "npm", "start")
