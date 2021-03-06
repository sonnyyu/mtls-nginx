# Use mtls-cert-manage generate server/client/ca certificate 

[https://github.com/sonnyyu/mtls-cert-manage](https://github.com/sonnyyu/mtls-cert-manage)

# Copy Certificate from mtls-cert-manage
```bash
cd ~/mtls-cert-manage/pki
./server.sh
./client.sh
```
# Copy Certificate from mtls-cert-manage
```bash
cd ~/mtls-cert-manage/pki/servercerts 
cp * ~/mtls-nginx/certs
cd ~/mtls-cert-manage/pki/clientcerts
cp * ~/mtls-nginx/certs
cd ~/mtls-nginx/certs
cp 192.168.1.204.crt 192.168.1.204.key ca.crt ~/mtls-nginx/nginx/certs
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
cd ~/mtls-nginx/certs
curl --cert client1.crt --key client1.key --cacert ca.crt https://192.168.1.204
curl --cert-type P12 --cert client1.p12:p12pass --cacert ca.crt https://192.168.1.204
```
# Install certificate at PC
[Install certificate](https://github.com/sonnyyu/mtls-cert-manage#install-certificate-at-windows)

# Open Browser
```bash
https://192.168.1.204
```
