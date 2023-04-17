FROM node:19-alpine
RUN mkdir/app
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
RUN npm install
COPY index.js /app
COPY index.html /app
CMD ( "npm", "start")
