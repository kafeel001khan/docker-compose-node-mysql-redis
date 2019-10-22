FROM node:10.16.3-alpine as node
ENV NODE_ENV=development
WORKDIR /opt/
COPY package.json .
RUN npm install
COPY . .
CMD [ "node", "app.js" ]

