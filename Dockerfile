FROM nginx
RUN sed -i -e 's/#gzip/gzip/g' /etc/nginx/nginx.conf
COPY _site /usr/share/nginx/html
