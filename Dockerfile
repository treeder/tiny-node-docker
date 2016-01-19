# Official Node image for fat version
# FROM node:argon
# Awesome tiny node image
FROM iron/node

WORKDIR /app
ADD . /app

ENTRYPOINT [ "node", "server.js" ]
