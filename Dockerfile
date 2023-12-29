FROM node:current-alpine

WORKDIR /app
RUN npm upgrade -g yarn

COPY package.json ./
RUN yarn install

COPY src src

CMD ["yarn", "parcel", "build", "/app/src/index.html", "/app/src/*.svg", "/app/src/*.png"]
