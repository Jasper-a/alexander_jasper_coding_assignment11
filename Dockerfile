FROM node:13.12.0-alpine

ENV APP_HOME /alexander_jasper_site
WORKDIR $APP_HOME

COPY package.json ./
COPY package-lock.json ./

RUN npm install --silent

ENV PORT 7775

EXPOSE 7775

COPY . .
CMD ["npm", "start"]