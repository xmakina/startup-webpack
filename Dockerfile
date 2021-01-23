FROM alpine as development
ENV CI=true
ENV CHOKIDAR_USEPOLLING=true
RUN apk add --update npm inotify-tools

WORKDIR /app
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm ci

COPY ./webpack.config.js ./
COPY ./src ./src
CMD ["npm", "run", "start"]

FROM development AS publish
WORKDIR /app
RUN npm run build

FROM nginx:alpine AS release
EXPOSE 80
COPY --from=publish /app/dist /usr/share/nginx/html
