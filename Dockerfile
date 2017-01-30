FROM alpine:latest
MAINTAINER sbobylev <stas.bobylev@gmail.com>

RUN apk add --update upgrade && apk add --no-cache python py-flask && mkdir /app && rm -rf /var/cache/apk/*

COPY app.py /app

USER nobody

WORKDIR /app

EXPOSE 80

ENTRYPOINT ["python", "app.py"]
