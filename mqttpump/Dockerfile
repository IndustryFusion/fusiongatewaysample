FROM alpine:3.14.0

RUN apk add --no-cache mosquitto-clients bash

COPY ./pump.sh /scripts/
RUN chmod +x /scripts/*

CMD "/scripts/pump.sh"
