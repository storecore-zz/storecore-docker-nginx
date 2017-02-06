FROM nginx:stable-alpine
MAINTAINER Tristan van Bokkem <tristan@storecore.org>

RUN mkdir -p /tmp/nginx/client-body

# Copy config files
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Copy self-signed certificates
COPY conf/ssl/localhost.key /etc/ssl/localhost.key
COPY conf/ssl/localhost.crt /etc/ssl/localhost.crt

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80 443

# Run NGINX
CMD ["nginx"]
