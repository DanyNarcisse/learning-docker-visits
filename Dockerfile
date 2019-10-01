# Specify a base image

# Notice how we COPY package.json first to avoid having to install everything again
# if we simply modify some code in a directory file.
FROM node:alpine

WORKDIR /usr/app

 COPY ./package.json .
 RUN npm install
 COPY ./ ./

 CMD ["npm", "start"]