# Pull base image
FROM nginx:latest

# Dockerfile Maintainer
MAINTAINER Tchit10 "tchit10@outlook.com"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get upgrade -y \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]