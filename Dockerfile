FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install -y gpg 
    
RUN mkdir /keys && \
	mkdir /message
	
COPY ./ ./

RUN gpg --batch --gen-key /createKey.var

RUN chmod +x start.sh
CMD ./start.sh

