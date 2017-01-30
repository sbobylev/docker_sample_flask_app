FROM alpine:latest
MAINTAINER sbobylev <stas.bobylev@gmail.com>

RUN apk add --update --no-cache py-flask && mkdir /app rm -rf /var/cache/apk/*

COPY app.py /app

USER 1234

WORKDIR /app

EXPOSE 80

ENTRYPOINT ["python", "app.py"]
