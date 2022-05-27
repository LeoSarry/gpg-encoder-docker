#!/bin/bash

# We play the role of Porthos here

read -p "@Porthos: What is your message for Athos? " msg
echo $msg > /message/messagePorthos.txt

gpg --yes --encrypt --recipient Athos --trust-model always /message/messagePorthos.txt

echo "You can find your encoded message in message/messagePorthos.txt.gpg"

gpg --export -a Athos > /keys/publicAthos.key

gpg --export-secret-keys -a Athos > /keys/secretAthos.key

echo "Exporting keys to the folder keys/"
