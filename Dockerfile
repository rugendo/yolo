FROM node:19-alpine
RUN mkdir/app
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
RUN npm install
COPY public /app
COPY src /app
CMD ( "npm", "start")
