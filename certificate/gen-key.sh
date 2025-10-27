#!/usr/bin/env bash
key_size=4096

openssl genrsa -out rootCA.key "$key_size"
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=US/ST=California/L=San Francisco/O=My Company/OU=Org/CN=My Root CA"

