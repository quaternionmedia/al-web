FROM node:current-alpine

WORKDIR /app
RUN npm upgrade -g yarn
CMD ["yarn", "parcel", "build", "/app/src/index.html", "/app/src/*.svg", "/app/src/*.png"]
