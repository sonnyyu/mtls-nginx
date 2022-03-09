FROM nginx:alpine
MAINTAINER Sonny Yu <sonnyyuirm@gmail.com>
RUN  apk add --upgrade --no-cache tzdata \
     && rm -rf /var/cache/apk/* /tmp/* \
     && mkdir /etc/nginx/cert
#     && mkdir  -p /admin/admin
#COPY /html/admin/index.html /admin/admin/index.html 
ENV  TZ=America/Los_Angeles

