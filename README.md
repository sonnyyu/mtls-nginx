# Build it:
```bash
git clone https://github.com/sonnyyu/mtls-nginx
cd mtls-nginx
```
# Copy all the certificate 
```bash
cd ~/easy-rsa/cert/
cp * ~/mtls-nginx/nginx/cert/
cd ~/mtls-nginx
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
curl --cert-type P12 --cert client1.p12:password --cacert ca.crt https://192.168.1.204
```
# Open web interface

