FROM node:12
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm init -y
RUN npm install -y
CMD ["node", "/usr/src/app/index.js"]
