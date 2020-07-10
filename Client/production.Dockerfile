FROM nginx
RUN cd /usr/share/nginx/html && wget https://github.com/alex4108/visitor-management/releases/latest/visitor-app-html.tar.gz && tar xvf visitor-app-html.tar.gz && mv visitor-app/* ./* 
CMD start nginx
