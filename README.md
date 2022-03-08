# nginx/conf/ssl.conf
```
server {
  listen 443 ssl;
  ssl_certificate /etc/nginx/conf.d/192.168.1.204.crt;
  ssl_certificate_key /etc/nginx/conf.d/192.168.1.204.key;
  location / {
	#
     root   /usr/share/nginx/html;
     index  index.html index.htm;
 }
}
```
# Getting started nginx with certificate
```bash
docker-compose up -d --build
```
# Quit 
```bash
docker-compose down 
```
# Quit and remove Volume
```bash
docker-compose down -v
```

# Open web interface
https://[IP]
