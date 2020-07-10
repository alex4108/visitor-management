FROM nginx
RUN apt-get update
RUN apt-get install -y wget curl jq
RUN cd /usr/share/nginx/html && rm -rf ./* && echo $( curl -s https://api.github.com/repos/alex4108/visitor-management/releases/latest) | jq -r ".assets[] | select(.name | contains(\"visitor-app-html.tar.gz\")) | .browser_download_url" | wget -O visitor-app-html.tar.gz -i - && tar xvf visitor-app-html.tar.gz --strip-components 2 && mv visitor-app/* ./ 
