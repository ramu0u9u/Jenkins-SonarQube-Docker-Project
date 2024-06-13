FROM nginx

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the files from your local directory into the container
COPY . /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 (container port)
EXPOSE 80

# Modify Nginx configuration to listen on port 80
RUN sed -i -e 's/80/80/g' /etc/nginx/conf.d/default.conf

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
