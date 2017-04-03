FROM alpine
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    bash gnutls gnutls-utils emacs-nox && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/* /var/log/* ~/.cache
WORKDIR /data
COPY dockmacs.el /data
EXPOSE 8080
CMD emacs -l dockmacs.el
