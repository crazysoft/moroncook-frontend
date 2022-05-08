# test3
FROM node:10
COPY ./ /app
WORKDIR /app
RUN npm install && npm run build:prod

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf