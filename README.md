# Build it:
```bash
git clone https://github.com/sonnyyu/mutual-TLS-authentication-nginx
cd mutual-TLS-authentication-nginx
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
# Test mTlS
```bash
curl   https://192.168.1.204
curl   --insecure https://192.168.1.204
cd nginx/cert
curl  --cacert ca.crt https://192.168.1.204
curl  --cacert ca.crt https://192.168.1.204/admin/
curl --cert client1.crt --key client1.key --cacert ca.crt https://192.168.1.204/admin/
curl --cert client1.crt:password --key client1.key --cacert ca.crt https://192.168.1.204/admin/
```
# Open web interface

