# docker_sample_flask_app

**Description**

A very basic Flask app in a docker container. 

**Build**

```bash
git clone https://github.com/sbobylev/docker_sample_flask_app.git
cd docker_sample_flask_app
docker build -t sample-flask-app .
```

**Run**

```bash
docker run -p 80:80 -d sample-flask-app
40dd743afd0ca2a09549416ec8b5b9592754f25a93606fd2e1f2c2ed7b406561

docker ps
CONTAINER ID        IMAGE                     COMMAND             CREATED             STATUS              PORTS                NAMES
40dd743afd0c        sample-flask-app:latest   "python app.py"     4 seconds ago       Up 3 seconds        0.0.0.0:80->80/tcp   jolly_wilson
```

**Test**

```bash
curl http://localhost
Your current server is 40dd743afd0c
```
