FROM node:alpine
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN sed -i 's/localhost/'"$DatabaseIP"'/' /app/proxy.config.json
CMD ["npm","run","start"]