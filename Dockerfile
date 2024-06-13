FROM nginx
COPY . /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
