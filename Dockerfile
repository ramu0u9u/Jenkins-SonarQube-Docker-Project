FROM nginx
COPY . /usr/share/nginx/html/
Copy . index.html
COPY . style.css
