# gpg-encoder-docker

## Warnings :
- **This repository is for educational purposes only.**
- **The code comes with no warranty**
- **The idea is to emulate the exchange of encrypted messages between two fictional characters: Athos and Porthos**
    - **Using the public key of Athos, Porthos encrypts a message**
    - **Using its private key, Athos can decrypt the message**
    - **This repository only concerns encrypting the message**
    - **The decrypting part is at [This repository](https://github.com/juanluck/athos-decrypts-porthos)

## Create an image from the dockerfile

```
docker build -t encoder .
```

## Lauch the container

```
docker run -it -v $(pwd)/keys:/keys -v $(pwd)/message:/message encoder
```
