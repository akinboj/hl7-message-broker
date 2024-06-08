FROM rabbitmq:3.13.3-management-alpine

RUN apk update

# Install packages
RUN apk add --no-cache curl \
    ca-certificates \
    gnupg \
    perl \
    bash \
    tzdata \
    busybox-extras \ 
    && rm -rf /var/cache/apk/*

ENV TZ="Australia/Sydney"