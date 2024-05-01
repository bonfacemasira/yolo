# Stage 1 - the build process
FROM node:13.12.0-alpine as build-deps

LABEL author="#Bonface"

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

RUN yarn build

# Stage 2 - the production environment
FROM nginx:1.12-alpine

WORKDIR /usr/share/nginx/html

COPY --from=build-deps /usr/src/app/build .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]