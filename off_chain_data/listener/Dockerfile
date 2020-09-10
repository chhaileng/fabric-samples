FROM node:8.17.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
    && npm install \
    && apk del .gyp

#RUN npm install

COPY . .

RUN echo 2 > nextblock.txt

CMD ["node", "blockEventListener.js"]
