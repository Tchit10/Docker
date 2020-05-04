# Pull base image
FROM nginx:latest

# Dockerfile Maintainer
MAINTAINER Tchit10 "tchit10@outlook.com"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Copy of personnal HTML index
COPY Images /usr/share/nginx/html/Images
COPY CSS /usr/share/nginx/html/CSS
COPY index.html /usr/share/nginx/html

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
