FROM nginx:stable-alpine
MAINTAINER Tristan van Bokkem <tristan@storecore.org>

RUN mkdir -p /tmp/nginx/client-body

# Copy config files
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the world
EXPOSE 80

CMD ["nginx"]
