FROM node:10
COPY ./ /vue-docker
WORKDIR /vue-docker
RUN npm install && npm run build:prod

FROM nginx
RUN mkdir /vue-docker
COPY --from=0 /vue-docker/dist /vue-docker
COPY nginx.conf /etc/nginx/nginx.conf