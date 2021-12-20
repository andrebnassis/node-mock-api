FROM node:14

WORKDIR /app

COPY package.json .

RUN yarn

COPY . ./

ENV SUBDOMAIN ""
ENV URL_PATH "/"

EXPOSE 3000

CMD ["yarn", "docker:start"]