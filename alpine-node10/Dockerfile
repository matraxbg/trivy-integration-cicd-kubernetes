FROM alpine

RUN apk update && \
    apk add npm \
            bash

RUN npm install -g n
RUN n 10.16.0

ENTRYPOINT ["tail", "-f", "/dev/null"]