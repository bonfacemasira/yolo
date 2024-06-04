# Stage 1 - the build process
FROM node:13.12.0-alpine as build-deps

LABEL author="Bonface Masira"

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

RUN yarn build

# Stage 2 - the production environment
FROM node:16.0.0-alpine

WORKDIR /usr/src/app


ENV NODE_ENV production

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

COPY --from=build-deps /usr/src/app/. .

RUN chown -R nextjs:nodejs /usr/src/app

USER nextjs

EXPOSE 3000

CMD ["yarn", "start"]