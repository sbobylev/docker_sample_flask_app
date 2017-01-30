FROM alpine:latest
MAINTAINER sbobylev <stas.bobylev@gmail.com>

RUN apk add --update --no-cache py-flask && rm -rf /var/cache/apk/*

COPY app.py /app

WORKDIR /app

EXPOSE 80

ENTRYPOINT ["python", "app.py"]
