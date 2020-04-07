FROM alpine
ARG DIRECTORY="/ssl-certs/live/d"
RUN mkdir -p $DIRECTORY
RUN apk update && apk add --no-cache openssl && rm -rf /var/cache/apk/*
ENTRYPOINT ["openssl"]