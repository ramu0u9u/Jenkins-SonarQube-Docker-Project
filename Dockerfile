FROM nginx
Copy . /usr/share/nginx/html
COPY index.html .
COPY styles.css .
