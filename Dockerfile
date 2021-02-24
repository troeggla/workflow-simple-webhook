FROM alpine:3.13

RUN apk add --no-cache curl
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
