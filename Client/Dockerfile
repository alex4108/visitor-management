FROM node:10
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm init -y && npm install && npm install -g @angular/cli
CMD ["ng", "serve", "--disableHostCheck=true", "--host", "0.0.0.0"]
