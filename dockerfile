# test4
FROM node:10
COPY ./ /app
WORKDIR /app
RUN npm install