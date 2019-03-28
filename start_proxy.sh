#!/bin/sh


# Certs

if [ ! -f key.pem ] || [ ! -f cert.pem ]
then
	openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 10000 -nodes
fi

##########################################
# Execute 

if [ -f xmrig-proxy.exe ]
then
	./xmrig-proxy.exe --tls-cert=cert.pem --tls-cert-key=key.pem --tls-bind 0.0.0.0:443 -o pool.supportxmr.com:443 --tls -u 42xEfQuFb8dVvo9P8nuTVg5YrcEXHp4i844q2FykBa6vYG2Qumnb6r5ZD71zfHZf3eY1wFqC8vnDc6DP3f3DQcmDRtnfCig
fi
