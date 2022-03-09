# Build it:
```bash
git clone https://github.com/sonnyyu/mtls-nginx
cd mtls-nginx
```
# Copy all the certificate 
```bash
cd ~/mtls-cert-manage/cert
cp *   ~/mtls-nginx/cert
cp ca.crt localhost.crt localhost.key   ~/mtls-nginx/nginx/cert/
```
# Getting started nginx with certificate
```bash
cd ~/mtls-nginx
docker-compose up -d --build
```
# Quit 
```bash
~/mtls-nginx
docker-compose down 
```
# Quit and remove Volume
```bash
~/mtls-nginx
docker-compose down -v
```
# Test mTlS
```bash
cd mtls-nginx/cert
curl --cert client1.crt --key client1.key --cacert ca.crt https://192.168.1.204
curl --cert client1.crt:password1 --key client1.key --cacert ca.crt https://192.168.1.204
curl --cert-type P12 --cert client1.p12:password1 --cacert ca.crt https://192.168.1.204
```
# Open web interface

