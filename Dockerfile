FROM debian:jessie
MAINTAINER sbobylev <stas.bobylev@gmail.com>
RUN apt-get update
RUN apt-get install -y python-pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["app.py"]
