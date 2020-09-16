#VERSION 0.0.1
#FROM microsoft.jdk:1.8.0-u212
FROM suporteokto/alpine_jre8u212:1.2

MAINTAINER zhydxyx2014@163.com

USER root
#部署应用
RUN apk update && apk add tzdata && apk add ttf-dejavu && \
    apk add chromium && apk add chromium-chromedriver && \
    apk add wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted && \
    cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime
