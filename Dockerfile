FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN chmod +x bind_backend.sh
EXPOSE 4200
CMD ["npm","run","start", "./bind_backend.sh"]