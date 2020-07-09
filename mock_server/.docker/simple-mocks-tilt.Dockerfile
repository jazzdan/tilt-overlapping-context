FROM node:14-alpine

ADD mock_server/src /home/node/app/mock_server/src
ADD mock_server/package.json /home/node/app/mock_server/package.json

WORKDIR /home/node/app/mock_server
RUN npm install
CMD ["node", "src/index.js"]