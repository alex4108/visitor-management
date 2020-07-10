FROM node:11
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm init -y
RUN npm install --save nodemon cors express dotenv jsonwebtoken mongoose bcrypt@3.0.1 body-parser
CMD ["node", "/usr/src/app/index.js"]
