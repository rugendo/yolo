FROM node:19-alpine
RUN mkdir -p "/app"
WORKDIR /app
COPY client/package.json /app
COPY client/package-lock.json /app
RUN npm install
COPY client/public /app
COPY client/src /app
CMD ( "npm", "start")
